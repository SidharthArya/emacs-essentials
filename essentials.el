;; essentials.el - Nothing Much
;; Line Manipulations
(defun insert-line-below()
  "Inserts a line below current line"
  (interactive)
  (save-excursion
    (end-of-line)
    (newline)
    )
  )
(defun insert-line-above()
  "Inserts a line above current line"
  (interactive)
  (save-excursion
    (beginning-of-line)
    (newline)
    )
  )
(defvar font-size 150)
  (set-face-attribute 'default nil :height  font-size)
(defun increase-font-size()
  "Increase the font Size"
  (interactive)
  (set-face-attribute 'default nil :height  (setq font-size (+ font-size 10)))
  )
(defun decrease-font-size()
  "Increase the font Size"
  (interactive)
  (set-face-attribute 'default nil :height  (setq font-size (- font-size 10)))
  )
(defun toggle-hidden-chars()
  "Toggle show hidden characters"
  (interactive)
  (if global-whitespace-mode
      (global-whitespace-mode 0)
    (global-whitespace-mode 1))
  )
  
    
    
    
;; Kill Ring

(provide 'essentials)
