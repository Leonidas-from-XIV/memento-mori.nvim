if exists('g:memento_mori_loaded')
  finish
endif
let g:memento_mori_loaded = 1

if !exists('g:memento_mori_birthdate')
 let g:memento_mori_birthdate = '1970-01-01'
endif

function MementoMori()
  return luaeval('require("memento-mori").reflect(_A)', g:memento_mori_birthdate)
endfunction
