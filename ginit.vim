"local os = require("os")

"background transparency
let g:neovide_transparency = 0.0
let g:transparency = 0.8
let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))

"font
set guifont=JetBrainsMono\ Nerd\ Font:h14

"underline
let g:neovide_underline_automatic_scaling = v:true

"cursor
let g:neovide_cursor_vfx_mode = 'wireframe'

