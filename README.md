 # Oatmeal.sweets
  
  オートミールで作るスイーツのレシピサイトです。<br >
  非会員者はレシピの閲覧ができ、登録及びログイン後はレシピの投稿と投稿者のページを閲覧することもできます。<br >
  
  
  <img width="1723" alt="スクリーンショット 2022-12-05 16 46 42" src="https://user-images.githubusercontent.com/104556347/205592969-aa7cc696-463a-4c51-84d4-6f97a8782fb7.png">
  
  
 # URL
  https://young-hamlet-44103.herokuapp.com/<br >
  画面右上からログインと会員登録ができます。<br ><br >
  
  またゲストログインから入るとデフォルトでログインができます。
  
 # ダウンロードとインストールの手順
 1.このリポジトリをクローン
 ```
 $ git clone https://github.com/rimi-chan/oatmeal-recipes.git
 ```
 2.リポジトリに入る
 ```
 $ cd oatmeal-recipe
 ```
 4.bundlerのインストール
 ```
 $ gem install bundler -v 2.3.5
 ```
 3.yarnをインストールする
 ```
 $ npm install -g yarn@1.22.17
 ```
 4.bootstrap5のインストール
 ```
 $ yarn add bootstrap
 ```
 5.アニメーション周りで必要なライブラリのpopperjsをインストール
 ```
 $ yarn add @popperjs/core
 ```
  
 # 使用技術
  - ruby 2.7.5
   Ruby on Rails 6.1.4
  - MySQL 15.1 Distrib 10.2.38-MariaDB
  - Heroku
  - phpMyAdmin
  - git(gitHub) 
  
 # 機能一覧
- ユーザー登録、ログイン機能(devise)
  - エラー表示の日本語化(devise-i18n)
- 投稿機能
  - 画像投稿(refile)
  - 画像アップロード機能(CarrierWave)
- ページネーション機能(kaminari)
- 検索機能(html内)
- 自動スクロール　（html内)
