prob <- c (
    0.01, 0.05, 0.1,  0.15, 0.2,  0.25, 0.3,
    0.35, 0.4,  0.45, 0.5,  0.55, 0.6,  0.65,
    0.7,  0.75, 0.8,  0.85, 0.9,  0.95, 1
)

N <- 5

for (size in 1:N) {
    label <- matrix (nrow = (size+1), ncol = 1)

    for (i in 0:size)
        label[i+1] <- i
    
    result <- matrix (nrow = (size+1), ncol = length (prob), dimnames = list (label, prob))
    
    for (x in 0:size)
        for (p in 1:length (prob))
            result[x+1,p] <- pnbinom (x, size, prob[p])
    
    print (paste (c ("N =", size), collapse = " "))
    print (format (round (result, digits = 4), nsmall = 4))
    cat ("\n\n")
}