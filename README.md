# 概要

SQLite3からMySQLに一括で移行するスクリプト 対ISUCON用

# 事前準備

[sqlite3-to-mysql](https://github.com/techouse/sqlite3-to-mysql) ありきのスクリプトなので、こいつを先にインストールしておく

Debian系の場合

```shell
sudo apt-get install pip
sudo pip install sqlite3-to-mysql
```

`packaging`モジュールがないと言われたら追加する

```shell
sudo pip install packaging
```

# 使い方

スクリプトの中身を環境にあわせて設定する

- `SQLITE_DIR_PATH` -> SQLiteファイル群へのディレクトリパス
- `MYSQL_DB_NAME` -> MySQLのdatabase name
- `MYSQL_DB_USER` -> MySQLのuser
- `MYSQL_DB_PASSWORD` -> MySQLのpassword

あとはやるだけ

```shell
./sqlitetomysql.sh
```
