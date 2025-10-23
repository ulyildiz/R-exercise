defProduct <- c(
  4,5,7,4,5,6,2,8,4,3,7,8,5,5,6,6,9,5,4,7,4,7,7,8,10,
  10,7,3,5,9,6,9,6,5,7,5,6,4,3,4,8,1,5,4,5,2,6,6,8,1,
  6,8,4,4,10,5,3,8,6,4,6,10,3,4,2,6,5,3,8,7,8,5,5,3,7,
  10,6,4,7,7,4,6,3,6,3,5,9,9,5,6,3,6,9,6,5,6,7,6,2,7
)
# 6 is constant(c)
defProductMinusConst <- defProduct - 6
defProductDivConst <- defProduct / 6

defaultS2 <- var(defProduct)
defProductMinusConstS2 <- var(defProductMinusConst)
defProductDivConstS2 <- var(defProductDivConst)

checkMinusConst <- defaultS2 == defProductMinusConstS2
checkDivConstS2 <- (defaultS2 / 36) == defProductDivConstS2

