Para configurar NeoVim de manera rápida y 
efectiva para trabajar con Angular y TypeScript, puedes seguir estos 
pasos. Esta configuración se centrará en la funcionalidad y la 
velocidad, priorizando las herramientas necesarias para tu flujo de 
trabajo.

### 1. Instalación de NeoVim

Asegúrate de tener NeoVim instalado. Puedes 
instalarlo en sistemas basados en Unix usando el gestor de paquetes de 
tu elección. En Windows, puedes descargarlo desde la página oficial de NeoVim.

### 2. Instalación de un gestor de plugins

Para gestionar plugins en NeoVim, puedes usar un gestor de plugins como `vim-plug`. Para instalarlo, ejecuta el siguiente comando en tu terminal:

```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

### 3. Crear el archivo de configuración

Crea un archivo de configuración para NeoVim. En sistemas Unix, este archivo se encuentra en `~/.config/nvim/init.vim`. En Windows, puedes crear el archivo en `C:\Users\<tu_usuario>\AppData\Local\nvim\init.vim`.

```bash
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
```

### 4. Configuración básica en `init.vim`

Abre el archivo `init.vim` y añade la siguiente configuración:

```lua
" Usar vim-plug para gestionar plugins
call plug#begin('~/.local/share/nvim/plugged')

" Plugins esenciales
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocompletado y LSP
Plug 'tpope/vim-fugitive' " Integración de Git
Plug 'sheerun/vim-polyglot' " Soporte para múltiples lenguajes
Plug 'prettier/vim-prettier', { 'do': 'yarn install' } " Formateo de código

call plug#end()

" Configuración de COC (Conquer of Completion)
" Asegúrate de tener Node.js instalado para usar COC
let g:coc_global_extensions = ['coc-tsserver', 'coc-prettier']

" Mapeos de teclas para navegación y Git
nnoremap <leader>ff :Files<CR> " Buscar archivos
nnoremap <leader>gs :Gstatus<CR> " Estado de Git
nnoremap <leader>gc :Gcommit<CR> " Hacer commit
nnoremap <leader>gp :Gpush<CR> " Hacer push

" Configuración de Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Habilitar el resaltado de sintaxis
syntax on
filetype plugin indent on

" Configuración de la línea de estado
set laststatus=2
```

### 5. Instalación de plugins

Después de guardar el archivo `init.vim`, abre NeoVim y ejecuta el siguiente comando para instalar los plugins:

```
:PlugInstall
```

### 6. Configuración de TypeScript y Angular

Asegúrate de tener Node.js y Angular CLI instalados en tu sistema. Puedes instalar Angular CLI globalmente con:

```bash
npm install -g @angular/cli
```

### 7. Uso de COC para autocompletado y LSP

Con la configuración anterior, COC se 
encargará de proporcionar autocompletado y soporte para TypeScript. 
Puedes abrir un proyecto Angular y empezar a trabajar. COC también te 
permitirá renombrar variables y navegar entre archivos fácilmente.

### 8. Navegación entre archivos

- Usa `:Files` para buscar archivos en tu proyecto.
- Usa `:Gstatus` para ver el estado de Git y realizar operaciones de control de versiones.

### 9. Formateo de código

Con el plugin `vim-prettier`, tu código se formateará automáticamente al guardar. Puedes desactivar esta opción si lo prefieres.

### 10. Atajos de teclado

- `<leader>ff`: Buscar archivos.
- `<leader>gs`: Ver el estado de Git.
- `<leader>gc`: Hacer un commit.
- `<leader>gp`: Hacer un push.

### Conclusión

Con esta configuración básica, deberías estar 
listo para trabajar con Angular y TypeScript en NeoVim de manera rápida y
 eficiente. Puedes personalizar aún más tu configuración a medida que te
 familiarices con el editor y tus necesidades específicas.
