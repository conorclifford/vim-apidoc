# vim-apidoc
Rudimentary syntax highlighting for apidoc.me API files

```
cd ~/.vim/bundle
git clone https://github.com/conorclifford/vim-apidoc

```

To associate with target files, add something like the following example to `~/.vimrc`

```
" associate all 'api.json' files with apidoc syntax...
au BufRead,BufNewFile *api.json set filetype=apidoc
```
