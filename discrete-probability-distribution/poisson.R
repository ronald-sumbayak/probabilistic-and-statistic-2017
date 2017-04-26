lambda <- c (
    0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1,   1.5,
    2,   2.5, 3,   3.5, 4,   4.5, 5,   5.5, 6,   6.5, 7,
    7.5, 8,   8.5, 9,   9.5, 10,  11,  12,  13,  14,  15
)

X <- 32

label <- matrix (nrow = (X+1), ncol = 1)

for (i in 0:X)
    label[i+1] <- i

result <- matrix (nrow = (X+1), ncol = length (lambda), dimnames = list (label, lambda))

for (x in 0:X)
    for (p in 1:length (lambda))
        result[x+1,p] <- ppois (x, lambda[p])

print (format (round (result, digits = 4), nsmall = 4))
