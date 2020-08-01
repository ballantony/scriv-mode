(defun my-sidebar-occur()
;;(interactive)
  (setq fit-window-to-buffer-horizontally t)
  (setq window-resize-pixelwise t)

  (setq display-buffer-alist
	`(("\\*Occur\\*" display-buffer-in-side-window
	   (side . left) (slot . 0)
	   (window-width . fit-window-to-buffer)
	   (preserve-size . (t . nil)) 
	   (window-parameters . ((no-delete-other-windows . t))))
	  (".*\\.org-HD." display-buffer-in-side-window
           (side . top) (slot . 0) 
           (preserve-size . (t . nil)) 
	   (window-parameters . ((no-delete-other-windows . t))))
	  (".*\\.org-TR." display-buffer-in-side-window
           (side . right) (slot . -1) 
           (preserve-size . (t . nil)) 
	   (window-parameters . ((no-delete-other-windows . t))))
	  (".*\\.org-BR." display-buffer-in-side-window
           (side . right) (slot . 1) 
           (preserve-size . (t . nil)) 
	   (window-parameters . ((no-delete-other-windows . t)))))))

(defun my-indirect-buffer ()
  (interactive)
  (let ((current-prefix-arg 4))			      ;; emulate C-u
    (call-interactively 'org-tree-to-indirect-buffer)))

(defun scriv()
  (interactive)
  (when (require 'wc-mode nil t)
    (wc-mode))
  (toggle-frame-maximized)
  (my-sidebar-occur)
  (global-set-key (kbd "M-s i") 'my-indirect-buffer))







 
