# vim-line-no-indicator

Show a one-char wide, simple and expressive line number indicator.

## Why?

I have line numbers displayed when editing code, so I already know what line number I'm on. I just need something to show me roughly how far through the document I am, without taking up 4+ characters in my statusline.

## Installation

Install with a plugin manager.

## Usage

Add `%{LineNoIndicator()%` to your statusline.  See :help 'statusline' for more information about doing this.

I use [vim-airline](https://github.com/vim-airline/vim-airline/), so my configuration looks like this:

```vim
let g:airline_section_z = '%{LineNoIndicator()} :%2c'
```

## Configuration

```vim
" Default indicator, can be any number of elements
let g:line_no_indicator_chars = ['⎺', '⎻', '⎼', '⎽', '⎯']
```