function MementoMoriBirthDate(db)
endfunction

function MementoMori()
  return luaeval('require("memento-mori").reflect()')
endfunction

" command! -nargs=0 MementoMori luaeval 'require(\'memento-mori\').reflect()'
"
call MementoMoriBirthDate('2010-01-01')

let g:airline_section_y = '%-0.5{MementoMori()}'
