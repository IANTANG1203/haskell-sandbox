--題目：https://zerojudge.tw/ShowProblem?problemid=a005
{-
輸入說明
第一行是數列的數目t（0 <= t <= 20）。 以下每行均包含四個整數，表示數列的前四項。
約定數列的前五項均為不大於105的自然數，等比數列的比值也是自然數。

輸出說明
對輸入的每個數列，輸出它的前五項。

範例輸入
2
1 2 3 4
1 2 4 8

範例輸出
1 2 3 4 5
1 2 4 8 16
-}



add5 (a:b:c:xs)  | c - b == b - a = a:b:c:xs ++ [(last xs) + (c - b)]
                 | c `div` b == b `div` a = a:b:c:xs ++ [(last xs) * (c `div` b)]
                 | otherwise = error "不是等差或等比數列"


main :: IO()
main = do
		 putstrln "請輸入4個數的等差或等比數列"