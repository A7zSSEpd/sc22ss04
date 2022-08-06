#!/usr/bin/bash

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
# テスト3 引数Xに文字列が入った場合: X=abc,Y=15
X=abc
Y=15
echo Value X= $X > /tmp/$$-ans
echo Value Y= $Y >> /tmp/$$-ans
echo X is not natural number. >> /tmp/$$-ans
echo gcd is not natural number !! >> /tmp/$$-ans
./gcd_calc.sh $X $Y > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

# テスト4 引数Yに文字列が入った場合: X=12,Y=qwe
X=12
Y=qwe
echo Value X= $X > /tmp/$$-ans
echo Value Y= $Y >> /tmp/$$-ans
echo Y is not natural number. >> /tmp/$$-ans
echo gcd is not natural number !! >> /tmp/$$-ans
./gcd_calc.sh $X $Y > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

# テスト5 引数Xに負数が入った場合: X=-12,Y=15
X=-12
Y=15
echo Value X= $X > /tmp/$$-ans
echo Value Y= $Y >> /tmp/$$-ans
echo X is not natural number. >> /tmp/$$-ans
echo gcd is not natural number !! >> /tmp/$$-ans
./gcd_calc.sh $X $Y > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

# テスト6 引数Yに負数が入った場合: X=-12,Y=15
X=12
Y=-15
echo Value X= $X > /tmp/$$-ans
echo Value Y= $Y >> /tmp/$$-ans
echo Y is not natural number. >> /tmp/$$-ans
echo gcd is not natural number !! >> /tmp/$$-ans
./gcd_calc.sh $X $Y > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

# テスト7 引数Xに少数が入った場合: X=1.2,Y=15
X=1.2
Y=15
echo Value X= $X > /tmp/$$-ans
echo Value Y= $Y >> /tmp/$$-ans
echo X is not natural number. >> /tmp/$$-ans
echo gcd is not natural number !! >> /tmp/$$-ans
./gcd_calc.sh $X $Y > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

# テスト8 引数Yに少数が入った場合: X=12,Y=1.5
X=12
Y=1.5
echo Value X= $X > /tmp/$$-ans
echo Value Y= $Y >> /tmp/$$-ans
echo Y is not natural number. >> /tmp/$$-ans
echo gcd is not natural number !! >> /tmp/$$-ans
./gcd_calc.sh $X $Y > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1

# 後始末
rm /tmp/$$-*