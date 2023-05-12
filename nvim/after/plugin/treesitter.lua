
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

parser_config.odin = {
  install_info = {
    url = "https://github.com/ap29600/tree-sitter-odin.git",
    files = {"src/parser.c"},
    branch = "main" 
  },
  filetype = "odin",
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "odin" },

  sync_install = false,

  auto_install = true,

  ignore_install = { "javascript" },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    disable = { "odin" },
  },
}


