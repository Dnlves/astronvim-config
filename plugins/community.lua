return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- My Configs
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.indent.indent-blankline-nvim" },

  -- Angular + Java 
  -- { import = "astrocommunity.pack.angular" },
  -- { import = "astrocommunity.pack.java" },

  -- React, Next
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.tailwindcss" },

  -- Python
  -- { import = "astrocommunity.pack.python" },

  -- Docker
  { import = "astrocommunity.pack.docker" },

  -- Markdown
  { import = "astrocommunity.pack.markdown" },

  -- Rest Client
  { import = "astrocommunity.programming-language-support.rest-nvim",
  --   opt = {
  --     -- Open request results in a horizontal split
  --     result_split_horizontal = false,
  --     -- Keep the http file buffer above|left when split horizontal|vertical
  --     result_split_in_place = false,
  --     -- Skip SSL verification, useful for unknown certificates
  --     skip_ssl_verification = false,
  --     -- Encode URL before making request
  --     encode_url = true,
  --     -- Highlight request on run
  --     highlight = {
  --       enabled = true,
  --       timeout = 150,
  --     },
  --     result = {
  --       -- toggle showing URL, HTTP info, headers at top the of result window
  --       show_url = true,
  --       -- show the generated curl command in case you want to launch
  --       -- the same request via the terminal (can be verbose)
  --       show_curl_command = false,
  --       show_http_info = true,
  --       show_headers = true,
  --       -- executables or functions for formatting response body [optional]
  --       -- set them to false if you want to disable them
  --       formatters = {
  --         json = "jq",
  --         html = function(body)
  --           return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
  --         end
  --       },
  --     },
  --     -- Jump to request line on run
  --     jump_to_request = false,
  --     env_file = '.env',
  --     custom_dynamic_variables = {},
  --     yank_dry_run = true,
  --   },
  -- },
  opt = {
        -- Open request results in a horizontal split
        result_split_horizontal = false,
        -- Keep the http file buffer above|left when split horizontal|vertical
        result_split_in_place = false,
        -- stay in current windows (.http file) or change to results window (default)
        stay_in_current_window_after_split = false,
        -- Skip SSL verification, useful for unknown certificates
        skip_ssl_verification = false,
        -- Encode URL before making request
        encode_url = true,
        -- Highlight request on run
        highlight = {
          enabled = true,
          timeout = 150,
        },
        result = {
          -- toggle showing URL, HTTP info, headers at top the of result window
          show_url = true,
          -- show the generated curl command in case you want to launch
          -- the same request via the terminal (can be verbose)
          show_curl_command = false,
          show_http_info = true,
          show_headers = true,
          -- table of curl `--write-out` variables or false if disabled
          -- for more granular control see Statistics Spec
          show_statistics = false,
          -- executables or functions for formatting response body [optional]
          -- set them to false if you want to disable them
          formatters = {
            json = "jq",
            html = function(body)
              return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
            end
          },
        },
        -- Jump to request line on run
        jump_to_request = false,
        env_file = '.env',
        -- for telescope select
        env_pattern = "\\.env$",
        env_edit_command = "tabedit",
        custom_dynamic_variables = {},
        yank_dry_run = true,
        search_back = true,
    config = function()
    end
    }
  }
}
