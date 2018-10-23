
# Table of Contents

1.  [Basic Usage](#orgc6d7d94)
    1.  [Dynamic Font Size Manipulation](#org905c0c5)
    2.  [Toggle Hidden Characters](#org81f42ba)
    3.  [Tab Width](#org48deca5)

This are just some basic tweaky functions which I find useful. Please don't just use this package. Read through it's functions. They are pretty simple, straightforward and useful. Maybe helpful if you are just beginning to use emacs. Also use `C-h v` describe variable and `C-h f` describe function to get the gist of certain functions.
Think about this package as a basic tutorial of elisp.


<a id="orgc6d7d94"></a>

# Basic Usage

Just put this directly into you emacs config file

    (load "path to essential.el")
    (require 'essential)


<a id="org905c0c5"></a>

## Dynamic Font Size Manipulation

    (global-set-key (kbd "C-+") 'increase-font-size)
    (global-set-key (kbd "C--") 'decrease-font-size)


<a id="org81f42ba"></a>

## Toggle Hidden Characters

    (global-set-key (kbd "C-|") 'toggle-hidden-chars)


<a id="org48deca5"></a>

## Tab Width

Try messing with numbers here.

    (setq tab-width 100)

