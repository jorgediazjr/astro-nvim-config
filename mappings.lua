-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["e<space>"] = { ":tabedit ", desc = "Write :tabe command" },
    [";"] = { ":", desc = "Enter cmdline" },
    ["<C-J>"] = { "<C-W><C-J>", desc = "Move up in window" },
    ["<C-K>"] = { "<C-W><C-K>", desc = "Move down in window" },
    ["<C-L>"] = { "<C-W><C-L>", desc = "Move right in window" },
    ["<C-H>"] = { "<C-W><C-H>", desc = "Move left in window" },
    ["mm"] = { "M", desc = "Go to middle of screen" },
    ["<Left><Left>"] = { "0", desc = "Go to beginning of line" },
    ["<Right><Right>"] = { "$", desc = "Go to end of line" },
    ["<M-Left>"] = { "0", desc = "Go to beginning of line" },
    ["<M-Right>"] = { "$", desc = "Go to end of line" },
    ["˙"] = { "0", desc = "Go to beginning of line" },
    ["¬"] = { "$", desc = "Go to end of line" },
    ["no"] = { ":noh<return><esc>", desc = "Remove highlighted words from search results" },
    ["-"] = { "dd", desc = "Remove line under cursor" },
    ["<leader>vb"] = { "<ESC>:vsp blank<CR>", desc = "Vertically split open a blank window" },
    ["<Left><tab>"] = { ":tabprevious<CR>", desc = "Go to previous tab" },
    ["<tab>"] = { ":tabnext<CR>", desc = "Go to next tab" },
    ["<leader><TAB>"] = { ":tabnext<CR>", desc = "Go to next tab" },
    ["<leader><Left><TAB>"] = { ":tabprevious<CR>", desc = "Go to previous tab" },
    ["<leader>ee<CR>"] = { ":ConjureEvalCurrentForm<CR>", desc = "Eval current line" },
    ["<leader>er<CR>"] = { ":ConjureEvalRootForm<CR>", desc = "Eval current root form" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["jk"] = { "<ESC>", desc = "Escape insert mode" },
    ["JK"] = { "<ESC>", desc = "Escape insert mode" },
    ["ds"] = { "$", desc = "Write $ char" },
    ["Ω"] = { "<ESC>0i", desc = "Go to beginning of line" },
    ["≈"] = { "<ESC>$a", desc = "Go to end of line" },
    ["<C-n>"] = { "<C-x><C-o>", desc = "Not sure" },
  },
  v = {
    ["<leader>E<CR>"] = { ":ConjureEvalVisual<CR>", desc = "Eval current visual highlighted" },
  }
}
