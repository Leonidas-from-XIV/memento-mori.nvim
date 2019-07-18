Memento Mori for Neovim
=======================

Displays your age in your editor. Inspired by [emacs-memento-mori][].

Installation
------------

Installation works as usual with installing all kinds of vim plugins, for
example with `Plug`:

```vim
Plug 'Leonidas-from-XIV/memento-mori.nvim'
```

Configuration
-------------

Configure the day you were born in your `init.vim`, in YYYY-MM-DD format like
this:

```vim
let g:memento_mori_birthdate = '1988-08-07'
```

Then the function `MementoMori()` will display your age as a float. You can use
that in all kinds of places, for example in [airline][]:

```vim
let g:airline_section_y = '%-0.5{MementoMori()}'
```

[emacs-memento-mori]: https://github.com/lassik/emacs-memento-mori
[airline]: https://github.com/vim-airline/vim-airline
