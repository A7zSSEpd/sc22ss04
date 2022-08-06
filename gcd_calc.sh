#!/bin/bash
#プロンプトをechoを使って表示
#echo -n "Input to Value X: "	# 入力受付
#read X 							# 入力値を変数Xへ代入
#echo -n "Input to Value Y: "	# 入力受付
#read Y 							# 入力値を変数Yへ代入

X=$1
Y=$2

echo Value X= $X
echo Value Y= $Y
gcd=0                           # 公約数初期値


if [[ $X -gt 0 ]]; then
    if [[ $Y -gt 0 ]]; then
        for ((i=1; i<=X; i++))
        do
            divisor_X=$[$X / $i]                    # Xの商 この時のカウンタiがそのまま約数に
            remainder_X=$[$X % $i]                  # X余り

            if [[ $divisor_X -ge 0 ]] && [[ $remainder_X = 0 ]]; then # Xの商が1以上の自然数&その余りが0の時
                for ((j=1; j<=Y; j++))
                do
                    divisor_Y=$[$Y / $i]            # Yの商 この時のカウンタiがそのまま公約数に
                    remainder_Y=$[$Y % $i]          # Y余り

                    if [[ $divisor_Y -ge 0 ]] && [[ $remainder_Y = 0 ]]; then # Yの商が1以上の自然数&その余りが0の時
                        if [[ $gcd -le $i ]]; then    # 計算前後の約数比較
                            gcd=$i                  # 計算後の約数が大きかったら最大公約数gcdへ代入
                        fi
                    fi
                done
            fi
        done
    else
        echo Y is not natural number.
    fi
else
    echo X is not natural number.
fi

if [ $gcd -ge 1 ]; then     # gcdが1以上なら最大公約数として表示
    echo Greatest Common Divisor = $gcd
else
    echo gcd is not natural number !!
fi
