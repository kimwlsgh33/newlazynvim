local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- Debugging
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      -- "Pocco81/DAPInstall.nvim",
    },
    config = function()
      require "custom.configs.dap"
    end,
  },

  -- Language Dev Tools
  {
    "simrat39/rust-tools.nvim", -- rust
    lazy = false,
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
      "mfussenegger/nvim-dap",
    },
    config = function()
      require "custom.configs.rust-tools"
    end,
  },
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = function()
      require "custom.configs.flutter-tools"
    end,
  },

  -- Utils
  {
    "szw/vim-maximizer", -- maximizes and restores current window
    lazy = false,
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "iamcco/markdown-preview.nvim",
    lazy = false,
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  -- GPT
  -- {
  --   "jackMort/ChatGPT.nvim",
  --   lazy = false,
  --   config = function()
  --     require "custom.configs.chat-gpt"
  --   end,
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim",
  --   },
  -- },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },

  "terryma/vim-multiple-cursors",
  {
    "vim-autoformat/vim-autoformat",
    lazy = false,
  },
}

return plugins
