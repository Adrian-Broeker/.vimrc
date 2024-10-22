set nocompatible

" 1. Habilitar números de línea
set number

" 2. Resaltar la línea actual
set cursorline

" 3. Activar la sintaxis
syntax on

" 4. Colorear las coincidencias al buscar
set hlsearch

" 5. Ignorar mayúsculas/minúsculas al buscar
set ignorecase
set smartcase

" 6. Activar sangría automática (indentación)
set autoindent
set smartindent

" 7. Establecer el tamaño del tabulador
set tabstop=2       " Cantidad de espacios que representa un tab
set shiftwidth=2    " Cantidad de espacios al usar sangría automática
set expandtab       " Usar espacios en lugar de tabs

" 8. Mostrar coincidencias mientras se escribe una búsqueda
set incsearch

" 9. Mostrar emparejamientos de paréntesis y llaves
set showmatch

" 11. Mostrar el número de columna en la parte inferior
set ruler

" 12. Mostrar espacios, tabs y saltos de línea
set list
set listchars=tab:»·,trail:·

" 13. Autocompletar de manera inteligente
set completeopt=menuone

" 14. Activar la ventana de pestañas (tabs de Vim)
set showtabline=2

" 15. Habilitar el plegado de código basado en la sintaxis
set foldmethod=syntax
set foldlevel=99  " Abrir todos los pliegues por defecto

" 16. Resaltar espacios al final de línea
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" 17. Establecer el tamaño del archivo de intercambio (swap)
set swapfile
set dir=~/.vim/swap// " Directorio para archivos de intercambio

" 18. Habilitar las operaciones deshacer persistentes (undo)
set undofile
set undodir=~/.vim/undo// " Directorio para el historial de deshacer

" 19. Habilitar el mouse
set mouse=a

" 20. Mejorar el tiempo de espera de mapeos (usado para atajos)
set timeoutlen=500

" 22. Cambiar sonido de 'error' por aviso visual
set visualbell

" 23. Resaltar coincidencias de búsqueda
set hlsearch

" 24. Configuración de color y tema
colorscheme xcode
set background=dark

" 25. Carácteres máximos de una line
set textwidth=79

" 26. Volver a la última posición al abrir un fichero
" https://stackoverflow.com/questions/7894330/preserve-last-editing-position-in-vim
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
