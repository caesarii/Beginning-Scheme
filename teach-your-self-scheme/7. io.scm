
(define writeFile 
    (lambda (path content)
        (let ([output (open-output-file path)])
            (write content output))
))

; (writeFile "test.txt" "hello world")

(define readFile
    (lambda (path)
        (let ([input (open-input-file path)])
            (display (read input))
        )
    )
)

(readFile "test.txt")