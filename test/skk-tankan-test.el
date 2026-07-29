;;; skk-tankan-test.el --- skk-tankanのテスト -*- lexical-binding:t -*-

(require 'ert)
(require 'skk)
(require 'skk-auto)
(require 'skk-cdb)
(require 'skk-comp)
(require 'skk-cus)
(require 'skk-tankan)
(require 'skk-version)
(require 'skk-gadget)
(require 'test-utils)

(skk-define-e2e-test skk-tankan/test1
  "見出しの最後に@を付けると1文字の漢字のみを候補とする。"
  (okuri-nasi-entries "かい /下位/解/")
  (actions #'skk-mode
           "K a i @ SPC C-j")
  (expected-buffer-string "解"))

(provide 'skk-tankan-test)

;;; skk-tankan-test.el ends here
