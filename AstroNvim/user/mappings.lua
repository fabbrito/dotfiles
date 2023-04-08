-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

-- first key is the mode
-- second key is the lefthand side of the map
return {
  n = {
    [";"] = { ":", desc = "enter command mode" },
    -- Group: Substitute
    ["<leader>s"] = { name = "󰓡 Substitute" },
    ["<leader>sg"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Word globally" },
    ["<leader>sl"] = { [[:s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Word in line" },
    -- Better scroll
    ["<C-d>"] = { "<C-d>zz", desc = "scroll down and center this line" },
    ["<C-u>"] = { "<C-u>zz", desc = "scroll up and center this line" },
    -- Group: Find (telescope)
    ["<leader>fz"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", desc = "fuzzy find inside buffer" },
    -- Group: Yank
    -- ["<leader>y"] = { name = "Yank" },
    ["<leader>y"] = { [["+y]], desc = 'yank into "+' },
    ["<leader>Y"] = { [["+Y]], desc = 'Yank into "+' },
    -- ["<leader>d"] = { [["_d]], desc = 'delete selection into "_' },
  },
  v = {
    ["<leader>y"] = { [["+y]], desc = 'yank into "+' },
    -- ["<leader>d"] = { [["_d]], desc = 'delete selection into "_' },
  },
  x = {
    ["<leader>p"] = { [["_dP]], desc = "Paste over" },
  },
}
