--local nvim_lsp = require'lspconfig'
--
--local opts = {
--  tools = { -- rust-tools options
--
--    executor = require("rust-tools/executors").termopen,
--
--    on_initialized = nil,
--
--    reload_workspace_from_cargo_toml = true,
--
--    inlay_hints = {
--      auto = true,
--      only_current_line = false,
--      show_parameter_hints = true,
--      parameter_hints_prefix = "<- ",
--      other_hints_prefix = "=> ",
--      max_len_align = false,
--      max_len_align_padding = 1,
--      right_align = false,
--      right_align_padding = 7,
--      highlight = "Comment",
--    },
--    hover_actions = {
--
--      border = {
--        { "╭", "FloatBorder" },
--        { "─", "FloatBorder" },
--        { "╮", "FloatBorder" },
--        { "│", "FloatBorder" },
--        { "╯", "FloatBorder" },
--        { "─", "FloatBorder" },
--        { "╰", "FloatBorder" },
--        { "│", "FloatBorder" },
--      },
--
--      auto_focus = false,
--    },
--
--    crate_graph = {
--      backend = "x11",
--      output = nil,
--      full = true,
--      enabled_graphviz_backends = {
--        "bmp",
--        "cgimage",
--        "canon",
--        "dot",
--        "gv",
--        "xdot",
--        "xdot1.2",
--        "xdot1.4",
--        "eps",
--        "exr",
--        "fig",
--        "gd",
--        "gd2",
--        "gif",
--        "gtk",
--        "ico",
--        "cmap",
--        "ismap",
--        "imap",
--        "cmapx",
--        "imap_np",
--        "cmapx_np",
--        "jpg",
--        "jpeg",
--        "jpe",
--        "jp2",
--        "json",
--        "json0",
--        "dot_json",
--        "xdot_json",
--        "pdf",
--        "pic",
--        "pct",
--        "pict",
--        "plain",
--        "plain-ext",
--        "png",
--        "pov",
--        "ps",
--        "ps2",
--        "psd",
--        "sgi",
--        "svg",
--        "svgz",
--        "tga",
--        "tiff",
--        "tif",
--        "tk",
--        "vml",
--        "vmlz",
--        "wbmp",
--        "webp",
--        "xlib",
--        "x11",
--      },
--    },
--  },
--
--  server = {
--    standalone = true,
--  }, 
--
--  dap = {
--    adapter = {
--      type = "executable",
--      command = "lldb-vscode",
--      name = "rt_lldb",
--    },
--  },
--}
--
--require('rust-tools').setup(opts)


local function on_attach(client, buffer)
end

local opts = {
  tools = {
    executor = require("rust-tools/executors").termopen,
    reload_workspace_from_cargo_toml = true,
    runnables = {
      use_telescope = true,
    },
    inlay_hints = {
      auto = true,
      show_parameter_hints = true,
      parameter_hints_prefix = "<- ",
      other_hints_prefix = "=> ",
      max_len_align = false,
      highlight = "Comment",
    },
  },
  dap = {
    adapter = {
      type = "executable",
      command = "lldb-vscode",
      name = "rt_lldb",
    },
  },

  server = {
    -- on_attach is a callback called when the language server attachs to the buffer
    on_attach = on_attach,
    settings = {
      -- to enable rust-analyzer settings visit:
      -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
      ["rust-analyzer"] = {
        cargo = {
            allFeatures = true,
        },
        checkOnSave = {
          allFeatures = true,
          command = "clippy", "cargo", "check", '--workspace'
        },
      },
    },
  },
}

require("rust-tools").setup(opts)

local on_attach = function(client, bufnr)
end

require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
}
