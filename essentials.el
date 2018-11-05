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
(defvar font-size 100)
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

(defun find-from-dict(list option &optional elem)
  "Allows to use list of list as a dictionary."
  (if (equal elem nil)
      (nth 1 (nth (cl-position option list :test (lambda (a b) (member a b))) list))
    (nth elem (nth (cl-position option list :test (lambda (a b) (member a b))) list))
    )
  )

(defun insert-into-string(string identifier repl)
  "replace an identifier in a string"
  (string-join(split-string string identifier) repl)
  )
(defun set-fringemark-at-point(&optional Point)
  "Set Mark on Fringe"
  (interactive)
  (let ((marker (make-marker)))
    (save-excursion
      (if (not (equal Point nil))
	  (goto-line Point))
     (forward-line 0)
   (set-marker marker (point))
  (setq overlay-arrow-cl-position marker)
    )))
(defun smartpairs-enable()
  "Enable smart matching parenthesis"
  (define-key global-map (kbd "{") 'skeleton-pair-insert-maybe)
  (define-key global-map (kbd "[") 'skeleton-pair-insert-maybe)
  (define-key global-map (kbd "(") 'skeleton-pair-insert-maybe)
  (define-key global-map (kbd "\"") 'skeleton-pair-insert-maybe)
  )
    
;; Kill Ring

(provide 'essentials)
