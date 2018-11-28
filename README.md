This are just some basic tweaky functions which I find useful. Please don't just use this package. Read through it's functions. They are pretty simple, straightforward and useful. Maybe helpful if you are just beginning to use emacs. Also use `C-h v` describe variable and `C-h f` describe function to get the gist of certain functions.

# Table of Contents

1.  [Basic Usage](#org9a88246)


<a id="org9a88246"></a>

# Basic Usage

Just put this directly into you emacs config file.

    (load "path to essential.el")
    (require 'essential)

replace **path to essential.el** as the actual path.


## Dynamic Font Size Manipulation

    (global-set-key (kbd "C-+") 'increase-font-size)
    (global-set-key (kbd "C--") 'decrease-font-size)


## Toggle Hidden Characters

    (global-set-key (kbd "C-|") 'toggle-hidden-chars)


## Tab Width

Try messing with number here.

    (setq tab-width 100)


## Dictionary Implementation

Although this is not a real dictionary. But elisp lists are very powerful.
Use this code for instance:

    (find-from-dict '(("Something" "Cool") ("Nothing" "Okay")) "Something")

The output would be "Cool". What this function is doing is finding "Something" in the list, and then displaying the second member of the list where "Something" is found.
Go through the source of this function.

    (defun find-from-dict(list option)
      "Allows to use list of list as a dictionary."
      (nth 1 (nth (position option list :test (lambda (a b) (member a b))) list))
      )

