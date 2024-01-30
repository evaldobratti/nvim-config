-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`

local function nvim_tree_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set("n", "l", api.node.open.edit, opts('Open Node'))
  vim.keymap.set("n", "<CR>", api.node.open.edit, opts('Open Node'))
  vim.keymap.set("n", "o", api.node.open.edit, opts('Open Node'))
  vim.keymap.set("n", "h", api.node.navigate.parent_close, opts('Close Node'))
end

require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = true,
  --update_to_buf_dir   = {
  --  enable = true,
  --  auto_open = true,
  --},
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    width = 60,
    side = 'left',
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  renderer = {
    root_folder_label = true,

  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    change_dir = {
      global = false,
    },
    open_file = {
      quit_on_open = false,
    }
  },
  on_attach = nvim_tree_on_attach
}
