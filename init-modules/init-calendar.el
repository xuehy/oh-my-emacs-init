(setq calendar-latitude 30.26)
(setq calendar-longitude 120.19)
(setq diary-file "~/diary")

(use-package cal-china-x
  :ensure t
  :config
  (setq mark-holidays-in-calendar t)
  (setq cal-china-x-important-holidays cal-china-x-chinese-holidays)
  (setq calendar-holidays
	(append cal-china-x-important-holidays
		cal-china-x-general-holidays
		holiday-other-holidays)))

(provide 'init-calendar)
