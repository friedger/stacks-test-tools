;; @name test block height at launch
(define-public (test-block-height-at-launch)
  (begin
    ;; @caller wallet_1
    (try! (assert-block-height-3))
    ;; @mine-blocks-before 10
    ;; @caller wallet_1
    (try! (assert-block-height-13))
    (ok true)
  )
)

(define-public (assert-block-height-3)
  (begin
    (asserts! (is-eq u3 stacks-block-height)
      (err (concat "expected block height 3, found "
        (int-to-ascii stacks-block-height)
      ))
    )
    (ok true)
  )
)

(define-public (assert-block-height-13)
  (begin
    (asserts! (is-eq u13 stacks-block-height)
      (err (concat "expected block height 13, found "
        (int-to-ascii stacks-block-height)
      ))
    )
    (ok true)
  )
)
