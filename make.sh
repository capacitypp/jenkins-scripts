compiler=$1
cc=$2
bash -x ~/jenkins-scripts/commit-status.sh $compiler pending pending
make clean
make CC=$2 $3
if [ $? -ne 0 ]; then
	bash -x ~/jenkins-scripts/commit-status.sh $compiler error error
	exit 1
fi
bash -x ~/jenkins-scripts/commit-status.sh $compiler success success

