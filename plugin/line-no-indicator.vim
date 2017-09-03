" vim-line-no-indicator
" Author: Sheldon Johnson
" Version: 0.2

if exists("g:loaded_line_no_indicator") || &cp
  finish
endif

let g:loaded_line_no_indicator = 1

if !exists("g:line_no_indicator_chars")
  let g:line_no_indicator_chars = ['~', '⎺', '⎻', '–', '⎼', '⎽', '~']
  let g:page_fraction_size_per_indicator = 1.0/(len(g:line_no_indicator_chars)-1)
end

function! LineNoIndicator()
  let l:current_line = line(".")
  let l:total_lines = line("$") + 0.0 " Coerce float

  let l:page_fraction_for_current_line= l:current_line/l:total_lines
  let l:line_indicator_index = float2nr(l:page_fraction_for_current_line/(g:page_fraction_size_per_indicator))

  return g:line_no_indicator_chars[l:line_indicator_index]
endfunction
