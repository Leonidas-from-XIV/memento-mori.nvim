Memento Mori for Neovim
=======================

Displays your age in your editor. Inspired by [emacs-memento-mori][].

![Screenshot](/screenshot.png?raw=true "Screenshot")

An example of its usage can be seen in this screenshot, the statusbar reveals
that I am not as close to 30 as would've liked to be at that point in time.

Installation & Configuration
----------------------------

Installation works as usual with installing all kinds of vim plugins, for
example with `Plug`:

```vim
Plug 'Leonidas-from-XIV/memento-mori.nvim'
```

Configure the day you were born in your `init.vim`, in YYYY-MM-DD format like
this:

```vim
let g:memento_mori_birthdate = '1988-08-07'
```

Alternately, you could use `Packer` in which case you can use the configuration
function directly to set the variable:

```lua
use {
  'Leonidas-from-XIV/memento-mori.nvim',
  config = function ()
      vim.g.memento_mori_birthdate = '1988-08-07'
    end
}
```

Set up
------

The function `MementoMori()` will display your age as a float. You can use
that in all kinds of places, for example in [airline][]:

```vim
let g:airline_section_y = '%-0.5{MementoMori()}'
```

In case you happen to be using [lualine][] you can also call the `memento_mori`
Lua function directly:

```lua
require('lualine').setup({
  sections = {
    lualine_y = {require('memento-mori').memento_mori}
  }
})
```

Documentation
-------------

You can read the documentation of the plugin using

```vim
:help memento-mori
```

[emacs-memento-mori]: https://github.com/lassik/emacs-memento-mori
[airline]: https://github.com/vim-airline/vim-airline
[lualine]: https://github.com/hoob3rt/lualine.nvim
