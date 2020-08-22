# 環境構築手順

## 用語定義
* ローカルVSCode：ローカルPCで普通に開いたVSCode
* リモートVSCode：ローカルPC内で構築したコンテナに接続したVSCode

docker hubから本イメージをpullしてリモートVSCodeで開発できなかったため、
githubから本イメージをダウンロードして使用する方法を記載。


## 準備
### 1.PCへ必要なソフトを導入
* VSCode
* Docker Desktop for ***(私はWindowsを使用)

　※Windowsのバージョンが2004の場合、Windows 10 HomeでもDocker Desktop for Windowsが使用可能

 
### 2.ローカルVSCodeを開き、拡張機能を導入
* Python
* Docker
* Remote Development

 
## 開発環境構築

### 3.開発フォルダを作成する
* 空のプロジェクトファイルをPC内のドキュメント直下（好きな場所でOK）に作成する

### 4.GitHubからDocker Image一式を開発フォルダに置く
* 本ページ（https://github.com/shiimono/DockerImage_ubuntu1804_python）からコード一式をダウンロードし、開発フォルダに置く

### 5.VSCodeで開発フォルダを開く

### 6.リモートコンテナに接続する
* VSCode左下の緑のボタンを押し、「Remote-Containers: Open Folder in Container」を押し、現在開いている開発フォルダを開く

## 開発環境完成

## 開発メモ
* リモートコンテナ内でインストールしたライブラリや作成したファイルはコンテナを閉じても残っている

 （ローカルとリモートのファイルは共有されている）
* デバッグもpythonコマンドでの実行も行える
