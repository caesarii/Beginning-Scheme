(define readFile
    (lambda (path)
        (let ([input (open-input-file path)])
            (display (read input))
        )
    )
)

(readFile "test.txt")