; electron-builder NSIS customization.
;
; The default assisted installer opens straight on the directory page, which
; means installerSidebar.bmp only ever appears on the finish page. Adding the
; welcome page puts it at the front too, so the wizard reads as one piece.
;
; MUI_PAGE_WELCOME is inserted without overriding its title or body text on
; purpose: those defaults come from the NSIS language files, so the page stays
; translated for every language electron-builder bundles. Hardcoding Chinese
; here would show Chinese to English users.
;
; The uninstaller already gets MUI_UNPAGE_WELCOME by default, so
; uninstallerSidebar.bmp needs no hook of its own.

!macro customWelcomePage
  !insertmacro MUI_PAGE_WELCOME
!macroend
