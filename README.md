# 環境構築手順

## 用語定義
* ローカルVSCode：ローカルPCで普通に開いたVSCode
* リモートVSCode：ローカルPC内で構築したコンテナに接続したVSCode

## 準備
### 1.PCへ必要なソフトを導入
* VSCode
* Docker Desktop for ***(私はWindowsを使用)

　※Windowsのバージョンが2004の場合、Windows 10 HomeでもDocker Desktop for Windowsが使用可能

 
### 2.ローカルVSCodeを開き、拡張機能を導入
* Python
* Docker
* Remote Development

 
## 開発環境構築方法1(初めてDockerを扱う方向け)

※dockerfile、devcontainer.json、動作確認用ファイルも含むので学習用へどうぞ

### 3.開発フォルダを作成する
* 空のプロジェクトファイルをPC内のドキュメント直下（好きな場所でOK）に作成する

### 4.GitHubからDocker Image一式を開発フォルダに置く
* 本ページ（ https://github.com/shiimono/DockerImage_ubuntu1804_python ）からコード一式をダウンロードし、中身を開発フォルダに置く

### 5.VSCodeで開発フォルダを開く

### 6.リモートコンテナに接続する
* VSCode左下の緑のボタンを押し、「Remote-Containers: Open Folder in Container」を押し、現在開いている開発フォルダを開く

### →開発環境完成


## 開発環境構築方法2（Dockerの扱いに慣れている方向け）

### 3.開発フォルダを作成する
* 空のプロジェクトファイルをPC内のドキュメント直下（好きな場所でOK）に作成する

### 4.VSCodeで開発フォルダを開く

### 5.開発フォルダにDockerfileを作成する
* 「FROM shiimono/vsc-ubuntu1804_python-6ba16d549affab1a7e291bb6e2517ede:latest」を記載する

### 6.リモートコンテナに接続する
* VSCode左下の緑のボタンを押し、「Remote-Containers: Open Folder in Container」を押し、現在開いている開発フォルダを開く

### →開発環境完成
* 開発環境構築方法2とは異なり、devcontainer.jsonは新しく作成されるため、devcontainer.jsonの設定は各自必要に応じて修正が必要

　（本コードではVSCodeの拡張機能の導入くらいしか設定を加えてないので問題はありません）



## メモ
* リモートコンテナ内でインストールしたライブラリや作成したファイルはコンテナを閉じても残る

 （ローカルとリモートのファイルは共有されている）
* デバッグもpythonコマンドでの実行もVSCodeで行える
