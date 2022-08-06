#!/bin/bash

# 正常動作の確認
# テスト1 引数2つが同じ数字の場合: 最大公約数 = 引数
X=1111
Y=$X
echo Value X= $X > /tmp/$$-ans
echo Value Y= $Y >> /tmp/$$-ans
echo Greatest Common Divisor = $X >> /tmp/$$-ans
./gcd_calc.sh $X $Y > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

# テスト2 引数2つ数値の場合: X=12,Y=15,gcd=3
X=12
Y=15
gcd=3
echo Value X= $X > /tmp/$$-ans
echo Value Y= $Y >> /tmp/$$-ans
echo Greatest Common Divisor = $gcd >> /tmp/$$-ans
./gcd_calc.sh $X $Y > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

# 異常動作の確認

# 後始末
rm /tmp/$$-*