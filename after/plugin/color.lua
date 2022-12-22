--require("tokyonight").setup({
--  -- use the night style
--  style = "night",
--  transparent = true,
--  -- disable italic for functions
--  styles = {
--    comments = {italic = true},
--    conditionals = {italic = true},
--    sidebars = "dark",
--    floats = "dark",
--    loops = {},
--    functions = {},
--    keywords = {},
--    strings = {},
--    variables = {},
--    numbers = {},
--    booleans = {},
--    properties = {},
--    types = {},
--    operators = {},
--  },
--  sidebars = { "qf", "vista_kind", "terminal", "packer" },
--  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
--  on_colors = function(colors)
--    colors.hint = colors.orange
--    colors.error = "#ff0000"
--  end,
--
--   integrations = {
--       cmp = true,
--       gitsigns = true,
--       nvimtree = true,
--       telescope = true,
--       notify = false,
--       mini = false,
--   },
--
--  on_highlights = function(hl, c)
--    local prompt = "#8AADF4"
--    hl.HarpoonWindow = {
--      fg = prompt
--    }
--    hl.HarpoonBorder = {
--      fg = prompt
--    }
--    hl.TelescopeNormal = {
--      fg = prompt
--    }
--    hl.TelescopeBorder = {
--      fg = prompt,
--    }
--    hl.WhichKeyFloat = {
--      fg = prompt
--    }
--    hl.WhichKeyBorder = {
--      fg = prompt,
--    }
--  end
--})
--
--vim.cmd[[colorscheme tokyonight]]
require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true,
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd[[colorscheme catppuccin]]
