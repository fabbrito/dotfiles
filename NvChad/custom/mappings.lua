---@type MappingsTable
local M = {}
M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-c>"] = { ":noh <CR>", "clear highlights" },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "quick substitute" },
    ["<C-d>"] = { "<C-d>zz", "scroll down and center this line" },
    ["<C-u>"] = { "<C-u>zz", "scroll up and center this line" },
    ["J"] = { "mzJ`z", "better join" },
    ["<leader>y"] = { [["+y]], 'yank into "+' },
    ["<leader>Y"] = { [["+Y]], 'Yank into "+' },
    ["<leader>d"] = { [["_d]], 'delete using "_' },
  },
  v = {
    ["<leader>y"] = { [["+y]], 'yank into "+' },
    ["<leader>d"] = { [["_d]], 'delete using "_' },
    ["J"] = { ":m '>+1<CR>gv=gv", "move selection down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "move selection up" },
  },
  x = {
    ["<leader>p"] = { [["_dp]], "paste over" },
    ["<leader>P"] = { [["_dP]], "Paste over" },
  },
}

M.telescope = {
  n = {
    ["<leader>fi"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "fuzzy find inside buffer" },
  },
}

M.fugitive = {
  n = {
    ["<leader>gs"] = { vim.cmd.Git, "Fugitive: Git Status" },
  },
}

-- more keybinds!
return M
