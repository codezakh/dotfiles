(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line



;;OCAML STUFF ----------------------
;; Use the opam installed utop
(setq utop-command "opam config exec -- utop -emacs")
;;for tuareg mode
(load "/Users/zaidkhan/.opam/system/share/emacs/site-lisp/tuareg-site-file")
;;utop integration with the buffer
(autoload 'utop-minor-mode "utop" "Minor mode for utop" t)
(add-hook 'tuareg-mode-hook 'utop-minor-mode)
;;merlin setup
(setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))
(require 'merlin)
(add-hook 'tuareg-mode-hook 'merlin-mode)
;;(setq merlin-ac-setup 'easy)
; Make company aware of merlin
(with-eval-after-load 'company
 (add-to-list 'company-backends 'merlin-company-backend))
; Enable company on merlin managed buffers
(add-hook 'merlin-mode-hook 'company-mode)


;;----Gruvbox theme-------
(load-theme 'gruvbox t)


;;---turn tabs to spaces----
(setq-default indent-tabs-mode nil)
(setq tab-width 4)


;;-----highlight indentation------
(require 'highlight-indentation)
(set-face-background 'highlight-indentation-face "#427b58")
(set-face-background 'highlight-indentation-current-column-face "#689d6a")
(add-hook 'prog-mode-hook 'highlight-indentation-mode) 
