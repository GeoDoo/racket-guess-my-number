#lang racket

(define (guess-my-number number)
  (display "Insert a number: ")
  (define guess (string->number (read-line)))
  (cond [(> number guess) (displayln "Too low") (guess-my-number number)]
        [(< number guess) (displayln "Too high") (guess-my-number number)]
        [else (displayln "Congrats! You guessed right")]))

(displayln "Guess a number between 1 and 100")
(guess-my-number (random 1 101))