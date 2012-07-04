(global-set-key "C-w" 'backward-kill-word) 
(global-set-key "C-xC-k" 'kill-region) 
(global-set-key "C-cC-k" 'kill-region) 

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1)) 
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1)) 
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1)) 