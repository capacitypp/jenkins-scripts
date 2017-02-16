compiler=$1
bash -x ~/jenkins-scripts/commit-status.sh $compiler pending pending
make clean
make CXX=$2 $3
if [ $? -ne 0 ]; then
	bash -x ~/jenkins-scripts/commit-status.sh $compiler error error
	exit 1
fi
bash -x ~/jenkins-scripts/commit-status.sh $compiler success success

