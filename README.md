# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリケーション名
LinguaShare

# アプリケーション概要
外国語を学習している人が、疑問を解決したり、他の学習者とコミュニケーションを取ったり、学習の記録ができるWebアプリケーション。

# URL
https://linguashare.onrender.com

# Basic認証
* Basic認証ID：admin
* Basic認証パスワード：123abc

# 利用方法
## 質問投稿
* 質問投稿画面に遷移する
* 学習中の質問について、「タイトル」「言語」「質問内容」の3つを記載する。
* 投稿ボタンを押下する

## 質問回答
* 質問の詳細ページに遷移する
* ページ内一番下にある投稿フォームに、質問に対しての回答を記載する。
* 投稿ボタンを押下する


# アプリケーションを作成した背景
独学で韓国語を勉強していた時に、ひとりで疑問を解決できない場面や、実際に話したり書いたりしてみたい思いがあった。同じような人たちでコミュニケーションできる場があることで、学習のモチベーションや効率が上がりそうだと考えた。

# 洗い出した要件
[要件定義シート]（https://docs.google.com/spreadsheets/d/1vWqz2EYgh7744CdmRI4lIj7LDl2kQe2TgsaZSzbM1qs/edit#gid=1073626441）

# 実装した機能についての画像やGIF
* 質問投稿
[![Image from Gyazo](https://i.gyazo.com/265e70cbfe18a6dfd33f434b2c4bcb53.gif)](https://gyazo.com/265e70cbfe18a6dfd33f434b2c4bcb53)


* 質問回答
[![Image from Gyazo](https://i.gyazo.com/337fc01c2f489d38d99efc3d079d5d71.gif)](https://gyazo.com/337fc01c2f489d38d99efc3d079d5d71)

# 実装予定の機能
主に以下の機能を実装予定。
* チャット機能
* 記事投稿機能

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/a17c2bce5c6feaa9ea10dbec4a063d52.png)](https://gyazo.com/a17c2bce5c6feaa9ea10dbec4a063d52)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/10fc2b84673cedda07ae564227e82ffb.png)](https://gyazo.com/10fc2b84673cedda07ae564227e82ffb)

# 開発環境
* フロントエンド
  * HTML
  * CSS

* バックエンド
  * Ruby
  * Ruby on Rails

# ローカルでの動作確認
% git clone https://github.com/ringuashare
% cd
% bundle install
% yarn install



