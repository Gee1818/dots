-- latex
return {
  'lervag/vimtex',
  event = 'VeryLazy',
  config = function()
    vim.g.vimtex_compiler_method = 'zathura'
  end
}

