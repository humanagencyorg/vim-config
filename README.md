# Vim Config

This is a basic Vim setup that can be used to get you started using the tool.

## Instructions

1. Download your color scheme.  [tomorrow-theme](https://github.com/chriskempson/tomorrow-theme) (moved [here](git@github.com:chriskempson/base16.git)) is a great collection of color schemes.  The [Tomorrow Night Eighties](https://github.com/chriskempson/tomorrow-theme/blob/master/OS%20X%20Terminal/Tomorrow%20Night%20Eighties.terminal) is my personal favorite.

2. Setup your `.vimrc`.  Here is an example [`.vimrc`]() that sets up basic ruby plugins, line indents, etc.

3. Restart any open Vim instances for the changes to take affect.

## Reference

### Plugins

Plugins allow you to add extra functionality to Vim.  You typically will use a plugin manager to add these add / remove these plugins. Most of these allow you to clone the plugin into your `.vim` directory.  Here are a few popular plugin managers and plugins: 

* [Pathogen](https://github.com/tpope/vim-pathogen) - very popular plugin manager
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter) - plugin for commenting out code.  I love this plugin... so smooth. `<leader> cc` `<leader> cu` 
* [nerdtree](https://github.com/scrooloose/nerdtree) - visual file tree for your project `<ctrl> n`
* [supertab](https://github.com/ervandew/supertab) - tab autocompletion while in insert mode
* [vim-endwise](https://github.com/tpope/vim-endwise) - automatically adds end in Ruby
* [vim-rails](https://github.com/tpope/vim-rails) - shortcuts for rails projects `:Emodel user`
* [vim-sensible](https://github.com/tpope/vim-sensible) - the perfect default config for vim
* [vim-test](https://github.com/janko-m/vim-test) - keyboard shortcuts for running tests
* [vim-textobj-rubyblock](https://github.com/nelstrom/vim-textobj-rubyblock) - ability to select an entire ruby block
* [fzf.vim](https://github.com/junegunn/fzf.vim) - fulltext search 
*

### TMUX Integration
If you like, you can run your tests in a separate TMUX pane.  When you initially run your tests, you will be prompted to choose what pane you would like to see the test results in.

By pressing `prefix q` (with `prefix` being your TMUX leader key), you can see the numbers on each pane.

### Keyboard Shortcuts

FYI `<leader>` typically refers to the `\` character in VIM 

#### Navigation
`<ctrl> o` - previous location

`<ctrl> i` - previous location

`:e app/models/user.rb` - navigate to user.rb


`<ctrl> f` - page down

`<ctrl> b` - page up

`<shift> g` - bottom of page

`:1`        - line 1

`e`         - navigate past word

`b`         - navigate back word

`<shift> $` - navigate end of line

`<shift> ^` - navigate beginning of line

`h`         - left

`j`         - up

`k`         - down

`l`         - right

`:Ag search_pattern` - fulltext search


#### Editing

`i`         - enter insert mode

`<esc>`     - leave insert mode

`o`         - enter insert mode on next line

`<shift> o` - enter insert mode on previous line

`dd`        - cut line

`5dd`       - cut 5 lines

`v`         - enter visual mode

`<esc>`     - leave visual mode

`x`         - cut character or highlighted

`daw`       - delete word

`p`         - paste


#### Tests

`nmap <silent> <leader>t :TestNearest<CR>`

`nmap <silent> <leader>T :TestFile<CR>`

`nmap <silent> <leader>a :TestSuite<CR>`

`nmap <silent> <leader>l :TestLast<CR>`

`nmap <silent> <leader>g :TestVisit<CR>`

`nmap <C-n> :NERDTreeToggle<CR>`

#### NerdTree

`nnoremap <silent> <Leader>v :NERDTreeFind<CR>` - open NerdTree on the file you’re editing

#### Folding Spec and Defs

Use default shortcuts:

`zi` - for folding and unfolding all specs and defs in opened file

`za` - for folding and unfolding test or method on which cursor located
