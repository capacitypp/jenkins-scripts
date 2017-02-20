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

### commit-status.sh
- GitHub pull request builder pluginを導入したジョブから呼び出す
- 引数としてプルリクエストのステータスにおけるcontext,state,descriptionを受取り，プルリクエストのステータスを作成/更新する．

#### 実行方法
bash commit-status.sh $1 $2 $3
- $1 : context
- $2 : state
- $3 : description

### make.sh
- GitHub pull request builder pluginを導入したジョブから呼び出す
- 与えられた引数に基いてmakeを実行する
- makeの状況をGitHubのコミットステータスとして通知する

#### 実行方法
bash make.sh $1 $2
- $1 : コミットステータスにおけるcontext
- $2 : makeに渡す引数
