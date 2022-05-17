"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=<home_dir>/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('<home_dir>/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('<home_dir>/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
call dein#add('cohama/lexima.vim')
call dein#add('junegunn/fzf.vim')

" colorscheme
call dein#add('jacoborus/tender.vim')
call dein#add('tomasiser/vim-code-dark')

" preview replacement
call dein#add('markonm/traces.vim')

" status line
call dein#add('itchyny/lightline.vim')

" terraform
call dein#add('hashivim/vim-terraform')

" autocomplete
let g:denops#disabled = 1
let g:denops_disable_version_check=1
"call dein#add('Shougo/ddc.vim')
"call dein#add('vim-denops/denops.vim')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"" Customize global settings
"" Use around source.
"" https://github.com/Shougo/ddc-around
"call ddc#custom#patch_global('sources', ['around'])
"
"" Use matcher_head and sorter_rank.
"" https://github.com/Shougo/ddc-matcher_head
"" https://github.com/Shougo/ddc-sorter_rank
"call ddc#custom#patch_global('sourceOptions', {
"      \ '_': {
"      \   'matchers': ['matcher_head'],
"      \   'sorters': ['sorter_rank']},
"      \ })
"
"" Change source options
"call ddc#custom#patch_global('sourceOptions', {
"      \ 'around': {'mark': 'A'},
"      \ })
"call ddc#custom#patch_global('sourceParams', {
"      \ 'around': {'maxSize': 500},
"      \ })
"
"" Customize settings on a filetype
"call ddc#custom#patch_filetype(['c', 'cpp'], 'sources', ['around', 'clangd'])
"call ddc#custom#patch_filetype(['c', 'cpp'], 'sourceOptions', {
"      \ 'clangd': {'mark': 'C'},
"      \ })
"call ddc#custom#patch_filetype('markdown', 'sourceParams', {
"      \ 'around': {'maxSize': 100},
"      \ })
"
"" Mappings
"
"" <TAB>: completion.
"inoremap <silent><expr> <TAB>
"\ ddc#map#pum_visible() ? '<C-n>' :
"\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
"\ '<TAB>' : ddc#map#manual_complete()
"
"" <S-TAB>: completion back.
"inoremap <expr><S-TAB>  ddc#map#pum_visible() ? '<C-p>' : '<C-h>'
"
"" Use ddc.
"call ddc#enable()

" クリップボードを使用
set clipboard+=unnamed

" ステータスライン
set laststatus=2

" コマンドライン補完一覧
set wildmenu

" carsol
if has('vim_starting')
    let &t_SI .= "\e[6 q"
    let &t_EI .= "\e[2 q"
    let &t_SR .= "\e[4 q"
endif

" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系
colorscheme codedark
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
"set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=2

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch

" key map
" Visual Block
nnoremap <Space>v <C-v> 

" alias
:command Vsp vsplit
:command Sp split
