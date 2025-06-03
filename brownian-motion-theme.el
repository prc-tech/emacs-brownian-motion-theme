;;; emacs-brownian-motion-theme.el --- Taupe & Brown Emacs Theme -*- lexical-binding: t; -*-
;;
;; Author: You, under the influence of caffeine and cosmic indifference
;; Version: 1.0
;; URL: https://nowhere.local/brownian
;; License: MIT
;;
;;; Commentary:
;;
;; A light taupe and rich brown theme for thoughtful drift and deliberate disarray.
;; Inspired by Leuven, entropy, and the futility of resisting thermodynamic laws.
;;
;;; Code:

(deftheme brownian-motion
  "Brownian Motion: A theme for those who think entropy is just a suggestion.")

(let ((class '((class color) (min-colors 89)))
      (fg "#2E2B29")
      (bg "#FDF8F3")
      (cursor "#5C4033")
      (comment "#A89F91")
      (keyword "#804000")
      (builtin "#5A3A22")
      (constant "#7D5A4F")
      (string "#7B5734")
      (type "#6E432F")
      (function "#5C4033")
      (variable "#4A3823")
      (region "#EDE0D4")
      (highlight "#F0E6DD")
      (mode-line-bg "#D8CAB4")
      (mode-line-fg "#3A3228")
      (org-level-colors '("#5C4033" "#7B5734" "#9C6B30" "#B88E5C")))

  (custom-theme-set-faces
   'brownian-motion

   ;; Base
   `(default ((,class (:foreground ,fg :background ,bg))))
   `(cursor ((,class (:background ,cursor))))
   `(fringe ((,class (:background ,bg))))
   `(region ((,class (:background ,region))))
   `(highlight ((,class (:background ,highlight))))
   `(minibuffer-prompt ((,class (:foreground ,keyword :weight bold))))
   `(vertical-border ((,class (:foreground ,comment))))

   ;; Font lock
   `(font-lock-builtin-face ((,class (:foreground ,builtin))))
   `(font-lock-comment-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,constant))))
   `(font-lock-function-name-face ((,class (:foreground ,function :weight bold))))
   `(font-lock-keyword-face ((,class (:foreground ,keyword :weight semi-bold))))
   `(font-lock-string-face ((,class (:foreground ,string))))
   `(font-lock-type-face ((,class (:foreground ,type :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,variable))))
   `(font-lock-warning-face ((,class (:foreground "red" :weight bold))))

   ;; Mode line
   `(mode-line ((,class (:foreground ,mode-line-fg :background ,mode-line-bg :box nil))))
   `(mode-line-inactive ((,class (:foreground ,comment :background "#EFE8D5" :box nil))))

   ;; Org mode
   `(org-level-1 ((,class (:foreground ,(nth 0 org-level-colors) :weight bold :height 1.2))))
   `(org-level-2 ((,class (:foreground ,(nth 1 org-level-colors) :weight bold :height 1.1))))
   `(org-level-3 ((,class (:foreground ,(nth 2 org-level-colors) :weight bold))))
   `(org-level-4 ((,class (:foreground ,(nth 3 org-level-colors)))))
   `(org-block ((,class (:background "#F5F0E6" :extend t))))
   `(org-code ((,class (:background "#EFE9DE" :foreground ,type))))
   `(org-verbatim ((,class (:foreground ,constant))))
   `(org-table ((,class (:foreground "#4A3823" :background "#F7F2EB"))))
   `(org-document-title ((,class (:foreground ,keyword :weight bold :height 1.3))))
   `(org-done ((,class (:foreground "#4F7733" :weight bold))))
   `(org-todo ((,class (:foreground "#A0332C" :weight bold))))

   ;; Links
   `(link ((,class (:foreground "#6E3B2B" :underline t))))
   `(link-visited ((,class (:foreground "#885944" :underline t))))

   ;; Show-paren
   `(show-paren-match ((,class (:background "#D6C5B2"))))
   `(show-paren-mismatch ((,class (:background "red" :foreground "white"))))

   ;; Line numbers
   `(line-number ((,class (:foreground "#B9AFA0" :background ,bg))))
   `(line-number-current-line ((,class (:foreground ,fg :background "#ECE5DC" :weight bold))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,keyword :weight bold))))
   `(dired-flagged ((,class (:foreground "red"))))
   `(dired-header ((,class (:foreground ,function :weight bold))))
   `(dired-ignored ((,class (:foreground ,comment))))
   `(dired-mark ((,class (:foreground ,string :weight bold))))
   `(dired-symlink ((,class (:foreground "#5B4B8A" :weight bold))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'brownian-motion)

;;; emacs-brownian-motion-theme.el ends here
