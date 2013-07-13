require File.expand_path('../../lib/r_type', __FILE__)

R.run do
  a = matrix [3, 0, 0, 0, 4, 0, 0, 0, 1], ncol: 3
  print eigen(a)
  print svd(a)

  b = matrix [0, 1, 2, 3, 4, 5, 6, 7, 9], ncol: 3
  print eigen(b)
  print qr(b)
end
# >> $values
# >> [1] 4 3 1
# >>
# >> $vectors
# >>      [,1] [,2] [,3]
# >> [1,]    0    1    0
# >> [2,]    1    0    0
# >> [3,]    0    0    1
# >>
# >> $d
# >> [1] 4 3 1
# >>
# >> $u
# >>      [,1] [,2] [,3]
# >> [1,]    0    1    0
# >> [2,]    1    0    0
# >> [3,]    0    0    1
# >>
# >> $v
# >>      [,1] [,2] [,3]
# >> [1,]    0    1    0
# >> [2,]    1    0    0
# >> [3,]    0    0    1
# >>
# >> $values
# >> [1] 13.985686 -1.169156  0.183470
# >>
# >> $vectors
# >>            [,1]       [,2]       [,3]
# >> [1,] -0.4263524 -0.9366202  0.2264150
# >> [2,] -0.5474684 -0.2042614 -0.8684128
# >> [3,] -0.7200708  0.2846399  0.4411298
# >>
# >> $qr
# >>            [,1]       [,2]        [,3]
# >> [1,] -2.2360680 -6.2609903 -11.1803399
# >> [2,]  0.4472136  3.2863353   6.3900965
# >> [3,]  0.8944272  0.9990708   0.4082483
# >>
# >> $rank
# >> [1] 3
# >>
# >> $qraux
# >> [1] 1.0000000 1.0430999 0.4082483
# >>
# >> $pivot
# >> [1] 1 2 3
# >>
# >> attr(,"class")
# >> [1] "qr"
