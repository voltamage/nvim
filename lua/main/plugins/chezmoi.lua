return {
  'alker0/chezmoi.vim',
  -- You must load this plugin before the following timings:
  -- Calling filetype on, syntax enable or syntax on
  -- Loading other plugins that include filetype.vim
  -- End of vimrc
  -- End of init.vim if you use neovim
  lazy = false,
  init = function()
    vim.g['chezmoi#source_dir_path'] = '~/dotfiles/chezmoi'
    vim.g['chezmoi#use_tmp_buffer'] = true -- experimental but required
  end,
}
