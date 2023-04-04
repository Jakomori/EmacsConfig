(defun remove-scratch-buffer ()
  "Disable the scratch buffer when opening a file."
  (if (get-buffer "*straight-process*")
      (kill-buffer "*straight-process*")
  )
)
