require '../lib/r_type'

R.run do
  a = matrix [0, 1, 2, 3, 4, 5, 6, 7, 9], ncol: 3
  b = matrix [1, 0, -2]

  print a
  print b
  print solve(a, b)
  #          x    y    z
  #  -----------------------
  #  [1,] |  0    3    6 = 1
  #  [2,] |  1    4    7 = 0
  #  [3,] |  2    5    9 = -2
  #
  # x = -2.333333
  # y =  2.333333
  # z = -1.000000

  library("MASS")
  c = matrix [1, 2, 3, 4, 5, 6, 7, 8, 9], ncol: 3
  print ginv(c)
end
# >>      [,1] [,2] [,3]
# >> [1,]    0    3    6
# >> [2,]    1    4    7
# >> [3,]    2    5    9
# >>      [,1]
# >> [1,]    1
# >> [2,]    0
# >> [3,]   -2
# >>           [,1]
# >> [1,] -2.333333
# >> [2,]  2.333333
# >> [3,] -1.000000
# >>            [,1] [,2] [,3]
# >> [1,] -0.3333333   -1    1
# >> [2,] -1.6666667    4   -2
# >> [3,]  1.0000000   -2    1
# >>            [,1]          [,2]       [,3]
# >> [1,] -0.6388889 -5.555556e-02  0.5277778
# >> [2,] -0.1666667 -2.428613e-17  0.1666667
# >> [3,]  0.3055556  5.555556e-02 -0.1944444
