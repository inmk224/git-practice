@echo off
REM サンプルバッチファイル
REM CSV出力処理の実行スクリプト

setlocal enabledelayedexpansion

REM 変数定義
set OUTPUT_DIR=C:\exports
set LOG_FILE=!OUTPUT_DIR!\export.log
set DB_PATH=C:\Databases\0059_CSVOUT.accdb

REM 出力ディレクトリ作成
if not exist !OUTPUT_DIR! mkdir !OUTPUT_DIR!

REM ログ記録開始
echo [%date% %time%] CSV出力処理を開始します >> !LOG_FILE!

REM Access DBのエクスポート処理（例）
echo [%date% %time%] DB: !DB_PATH! からのデータ抽出中... >> !LOG_FILE!

REM 完了
echo [%date% %time%] 処理完了 >> !LOG_FILE!
echo 処理完了。詳細は %LOG_FILE% を確認してください。

pause
