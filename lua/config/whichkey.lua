local opts = {
  mode = "n", -- NORMAL mode
  prefix = "",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}

local mappings = {
    ["<leader>f"] = {"<cmd>lua require('telescope.builtin').find_files(no_preview())<cr>", "files"},
    ["<leader>q"] = {"<cmd>q<cr>", "q"},
    ["<leader>w"] = {"<cmd>w<cr>", "save"},
    ["<leader>r"] = {"<cmd>lua vim.lsp.buf.rename()<cr>", "rename"},
    ["<leader>D"] = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "signature_help"},
    ["<leader>l"] = {"<cmd>lua vim.lsp.buf.formatting()<cr>", "formatting"},
    ["<leader>a"] = {"<cmd>RustCodeAction<cr>", "RustCodeAction"},
    ["<leader>A"] = {"<cmd>RustHoverActions<cr>", "RustHoverActions"},
    ["<leader>v"] = {"<cmd>vsplit<cr>", "vsplit"},
    ["<leader>R"] = {"<cmd>RustRun<cr>", "RustRun"},
    ["<leader>n"] = {"<cmd>nohl<cr>", "nohl"},
    ["<leader>h"] = {"<cmd>RustHoverActions<cr>", "hover"},
    ["<leader>e"] = {"<cmd>E<cr>", "Explorer"},
    ["<leader>s"] ={
        name = "harpoon",
        h = {"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "harpoon"},
        a = {"<cmd>:lua require('harpoon.mark').add_file()<cr>", "add_file"},
        u = {"<cmd>:lua require('harpoon.ui').nav_file(1)<cr>", "w1"},
        i = {"<cmd>:lua require('harpoon.ui').nav_file(2)<cr>", "w2"},
        o = {"<cmd>:lua require('harpoon.ui').nav_file(3)<cr>", "w3"},
        p = {"<cmd>:lua require('harpoon.ui').nav_file(4)<cr>", "w4"},
    },
    
}

local config = {
    window = {
      border = "single", -- none, single, double, shadow
      position = "bottom", -- bottom, top
    },
}

require("which-key").setup(config)
require("which-key").register(mappings, opts)
