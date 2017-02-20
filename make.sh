compiler=$1
bash -x ~/jenkins-scripts/commit-status.sh $compiler pending pending
make clean
echo "#### $compiler" > ~/output.txt
make $2 >> ~/output.txt 2>&1
if [ $? -ne 0 ]; then
	bash -x ~/jenkins-scripts/commit-status.sh $compiler error error
	bash -x ~/jenkins-scripts/commit-comment.sh ~/output.txt
	exit 1
fi
bash -x ~/jenkins-scripts/commit-status.sh $compiler success success

