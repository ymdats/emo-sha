# エモ写（懐かしくてエモい写真館）
ブログではもっと詳細を記載しておりますので良かったら見てください。<br>
→[ Ruby on Railsで作る初めてのオリジナルアプリ](https://ymdats.com/emo-sha-overview)

## 概要説明
懐かしい写真をみんなで共有・共感して、エモさを感じるアプリです。

## 基本機能
- 懐かしいと思う写真をみんなで投稿
- 色んな年齢の人が３段階評価＋コメント
- 年齢別にエモ度%でランキング

## 制作背景
まずはスクールで習った技術で、みんなが気兼ねなく使えるアプリを作りたかった。

## 本番環境
[https://emo-sha.herokuapp.com](https://emo-sha.herokuapp.com)


## デモ画像
<img src="https://ymdats.com/wp-content/uploads/2020/11/edcd1a050cbabc214724e0882a30e671-1024x606.jpg" width="65%">
<img src="https://user-images.githubusercontent.com/61939802/101241252-bbe4e000-3737-11eb-97c4-9ac75ac85733.gif">

## 工夫ポイント
### ユーザーに手間をかけさせない。
- 新規登録やメールアドレス/パスワードによるログインは不要で、年齢でログイン。
- 年齢をタイピングするのも手間なので、プルダウンで年齢を選択。
- ログインページに行くのも手間なので、ヘッダーメニューにログイン画面を表示。
### ユーザーに多くを考えさせないようにした。
- いちいち詳細ページに行かなくても、ポチポチ押すだけで次々と写真をランダム表示。
- 間違った写真を投稿が出来ないように、必須項目を入力したらボタンが有効化。

## 開発環境
- フロントエンド : HTML / CSS / jQuery
- サーバーサイド : Ruby 2.6.5 / Rails 6.0.3.4
- データベース : MySQL / Heroku / AWS S3

## DB設計
<img src="https://ymdats.com/wp-content/uploads/2020/11/e885f54df07827aba9d8b9a2be10c95e-1024x407.png" width="70%">

## 今後の課題
### 他のサーバーを使ってみる
今回デプロイしたHeroku(無料プラン)だと、サーバーにアクセスした時に読み込み時間が遅いことがあるため。
### Webデザインを勉強する
今回アプリを作ってみて、現状の知識ではかっこいいWebデザインを作ることが出来ないことが分かったため。
### 自分の困りごとを解決してみる
継続的に使われるためには、個人的なアプリでもいいので何かの役に立つアプリを作った方が良いと思ったため。
