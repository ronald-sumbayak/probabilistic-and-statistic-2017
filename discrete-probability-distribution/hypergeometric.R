N <- 100

for (k in 1:N) {
    labelx <- matrix (nrow = k, ncol = 1)
    for (i in 1:k)
        labelx[i] <- i

    labelm <- matrix (nrow = 1, ncol = N)
    for (i in 1:N)
        labelm[i] <- i
    
    result <- matrix (nrow = k, ncol = N, dimnames = list (labelx, labelm))

    for (x in 1:k)
        for (m in 1:N)
            result[x,m] <- phyper (x, m, N-m, k)

    print (paste (c ("k =", k), collapse = " "))
    print (format (round (result, digits = 4), nsmall = 4))
    cat ("\n\n")
}