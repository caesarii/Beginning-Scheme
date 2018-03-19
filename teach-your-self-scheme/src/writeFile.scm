(define writeFile 
    (lambda (path content)
        (let ([output (open-output-file path)])
            (write content output))
))

; (writeFile "test.txt" "hello world")