# jenkins-scripts
JenkinsとGitHubなどを連携させるためのスクリプト

## GitHub用スクリプト

### commit-comment.sh
- GitHub pull request builder pluginを導入したジョブから呼び出す
- 引数としてファイルパスを受取り，ファイル内容をプルリクエスト(の末尾コミット)にコメントする
- ファイル内容はGitHubのMarkdown形式

#### 実行方法
bash commit-comment.sh $1
- $1 : コメント内容が格納されたファイルへのパス．
