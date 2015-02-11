problem4 =
    let ns = [x * y | x <- [100..999], y <- [100..999]]
        p n = show n == reverse (show n)
    in maximum (filter p ns)
