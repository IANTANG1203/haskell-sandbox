import Ring7

main = do print $ Z 3 == Z 10
          print $ [Z 0..Z 6]
          print $ map abs [Z 0..Z 6]
          print $ map signum [Z 0..Z 6]