#!/bin/bash 

# テスト1正常動作の確認
# 同じ場合
# 2-1:文字
echo "same" > /tmp/$$-ans # 出⼒して欲しい内容（⼿⼊⼒）
./same.sh a a > /tmp/$$-result # 実際の出⼒
diff /tmp/$$-ans /tmp/$$-result || exit 1 # 出⼒を⽐較し、失敗したらエラー終了

# 2-2:数値
./same.sh 1000 1000 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1


# 違う場合
echo "not same" > /tmp/$$-ans # 出⼒して欲しい内容（⼿⼊⼒）
./same.sh a b > /tmp/$$-result # 実際の出⼒
diff /tmp/$$-ans /tmp/$$-result || exit 1 # 出⼒を⽐較し、失敗したらエラー終了


# テスト2異常動作の確認
# 変数が⼀つ
echo "ERROR: PLZ INPUT 2 ARGMENTS" > /tmp/$$-ans # 出⼒して欲しい内容（⼿⼊⼒）
./same.sh a 2> /tmp/$$-result && exit 1 # 実際のエラー出⼒（成功したら失敗）
diff /tmp/$$-ans /tmp/$$-result || exit 1 # メッセージが違っても失敗





#テスト3:事故処理のチェック

#事後処理
rm /tmp/$$-*  
echo "NO ERROR"
