# README

## アプリケーション名
ミニチャットアプリ

## アプリケーション概要
非同期通信でチャットをするミニアプリ

## URL
https://chat-portfolio-tsukada.herokuapp.com/

## テスト用アカウント
- ID: test1@test, Password: testuser1
- ID: Email: test2@test, Password: testuser2

## 利用方法
ユーザーでログインしテキストボックスからチャットを行う

## 目指した課題解決
ブラウザ・サーバー双方向通信によるWebSocketを利用した非同期通信チャットの実現

## 実装した機能
- メッセージのみ非同期で通信処理を行う機能
- メッセージを送信したユーザーを表示する機能

## 実装予定の機能
- 好きなテーマでチャットルームを作成し好みに合わせたカスタマイズが行える機能
- ユーザーを限定せずにどこのルームでも発言ができる機能

# データベース設計

## users テーブル

| Column    | Type    | Options     |
| --------  | ------  | ----------- |
| name      | string  | null: false |
| email     | string  | null: false |
| password  | string  | null: false |

### Association

- has_many :messages

## messages テーブル

| Column    | Type       | Options           |
| --------  | ---------- | ----------------- |
| text      | text       |                   |
| user      | references | foreign_key: true |

### Association

- belongs_to :user
