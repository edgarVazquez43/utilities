;;######## LINES FROM EMACS ########
;;# M-x package-list-packages and select auto-complete
;;# M-x package-refresh-contents and M-x package-install auto-complete
;;   find . -name '*.elc' | xargs rm

(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages (quote (cmake-mode auto-complete))))
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
                                                                                
                                                                                                    
;;### For python tabs ####                                                                             
(require 'package)
;;If you want to use lastest version
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;;If you want to use last tagged version
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))


(package-initialize)
(add-hook 'python-mode-hook 'guess-style-guess-tabs-mode) 
(add-hook 'python-mode-hook (lambda ()
                              (guess-style-guess-tab-width)))


;;#### For auto-complete ####  
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/package/") t)
(package-initialize)  ; load and active package, incluiding auto-complete 
(ac-config-default) 
(global-auto-complete-mode t)

; roslaunch highlighting
(add-to-list 'auto-mode-alist '("\\.launch$" . xml-mode))

; CMAKE highlighting
(add-to-list 'auto-mode-alist '("\\CMakeLists\\.txt\\'" . cmake-mode))

;;Is for ingnore autosave files
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq auto-save-default nil)

