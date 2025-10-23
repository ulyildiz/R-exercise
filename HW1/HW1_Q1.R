defProduct <- c(
  4,5,7,4,5,6,2,8,4,3,7,8,5,5,6,6,9,5,4,7,4,7,7,8,10,
  10,7,3,5,9,6,9,6,5,7,5,6,4,3,4,8,1,5,4,5,2,6,6,8,1,
  6,8,4,4,10,5,3,8,6,4,6,10,3,4,2,6,5,3,8,7,8,5,5,3,7,
  10,6,4,7,7,4,6,3,6,3,5,9,9,5,6,3,6,9,6,5,6,7,6,2,7
) ## numbers of defective products, each one is diff batch which is size 50

productMean <- mean(defProduct)
productVariance <- var(defProduct)
productStandartDebiation <- sd(defProduct)
productMedian <- median(defProduct)
productMin <- min(defProduct)
productMax <- max(defProduct)
productQuartiles <- quantile(defProduct, prob = c(0.25, 0.5, 0.75))
summary(defProduct) ## test to be sure

br <- seq(min(defProduct) - 0.5,
          max(defProduct) + 0.5, by = 1)

hist(defProduct, breaks = br)
axis(1, at = floor(min(defProduct)):ceiling(max(defProduct)))

boxplot(defProduct) ## there is no out liner data
## % ratio
overFiveDef <- length(defProduct[defProduct > 5]) / length(defProduct) * 100

