no_preview = function()
  return require('telescope.themes').get_dropdown({
    borderchars = {
      { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
      prompt = {"─", "│", " ", "│", '┌', '┐', "│", "│"},
      results = {"─", "│", "─", "│", "├", "┤", "┘", "└"},
      preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
    },
    width = 0.8,
    previewer = false,
    prompt_title = false,
    cwd = "/home/mc",
    search_dirs = { ".config/nvim/", "rustprojects"},
--    winblend = 20
  })
end

require('telescope').setup()

require('telescope').setup{
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    }
  } 
}
require('telescope').setup{
  -- see :help telescope.setup()
  defaults = {
      --path_display = {"tail"},
    mappings = {
      i = {
        ["<Esc>"] = require('telescope.actions').close
      }
    },
    -- The below pattern is lua regex and not wildcard
    file_ignore_patterns = {"node_modules","%.out"},
    prompt_prefix = "🔍 ",
  }
}


-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
