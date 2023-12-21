rm(list = ls())

# setup
set.seed(1)
S <- 1000
x <- rep(1:5, 2000)
table(x)

# population
mean(x == 1)

check <- rep(NA, S)
prb <- rep(NA, S)

for (i in 1:S) {
  who <- sample(1:length(x), 1)
  check[i] <- (x[who] == 1)
  prb[i] <- mean(check, na.rm = TRUE)
}

head(check, 100)
head(prb, 100)
prb[S]

# expected value
mean(x)

check <- rep(NA, S)
avg <- rep(NA, S)

for (i in 1:S) {
  who <- sample(1:length(x), 1)
  check[i] <- x[who]
  avg[i] <- mean(check, na.rm = TRUE)
}

head(avg, 100)
avg[S]

# distribution of sample mean
sm <- rep(NA, S)
N <- 3000
for (i in 1:S) {
  who <- sample(1:length(x), N)
  sm[i] <- mean(x[who])
}

hist(sm, freq = FALSE)
