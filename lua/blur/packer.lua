return require('packer').startup(function(use)
    --NOTE: packer
    use 'wbthomason/packer.nvim'

    --NOTE: colorizer // add colors to hex codes
    use 'NvChad/nvim-colorizer.lua'

    --NOTE: telecope // telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    --NOTE: VimBeGood to play // practice vim
    use 'ThePrimeagen/vim-be-good'

    --NOTE: todo-comment // My favourite commenting lib
    use "folke/todo-comments.nvim"

    --NOTE: gruvbox // my fav theme
    use { "ellisonleao/gruvbox.nvim" }

    --NOTE: monochrome theme // citruszest theme
    use { "zootedb0t/citruszest.nvim" }

    --NOTE: kanagawa
    use { "rebelot/kanagawa.nvim" }

    --NOTE: kamou
    use { "ntk148v/komau.vim" }

    --NOTE: numb // for number peeking
    use 'nacro90/numb.nvim'

    --NOTE: Hover // hover for info // n, K
    use "lewis6991/hover.nvim"

    --NOTE: Lsp UI
    use {
        "jinzhongjia/LspUI.nvim",
        -- event = 'VimEnter',
        --config = function()
        --    require("LspUI").setup()
        --end
    }

    --NOTE: tabnine client for neovim
    use { 'codota/tabnine-nvim', run = "powershell.exe -file .\\dl_binaries.ps1" }

    --NOTE: treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    --NOTE: lsp signature // hint as you type, panda hints
    use { "ray-x/lsp_signature.nvim", }

    --NOTE: devicons
    use 'kyazdani42/nvim-web-devicons'

    --NOTE: reticle
    use('tummetott/reticle.nvim')

    --NOTE: lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    --NOTE: harpoon (For file navigation)
    use 'theprimeagen/harpoon'

    --NOTE: lsp-lens
    use "VidocqH/lsp-lens.nvim"


    --NOTE: lsp settings
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
        }
    }

    --NOTE: autopairs
    use 'windwp/nvim-autopairs'

    --NOTE: indentation
    use "lukas-reineke/indent-blankline.nvim"

    --NOTE: nvim-ts-autotag
    use 'windwp/nvim-ts-autotag'

    --NOTE: nvim - tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        --tag = 'gruvbox' -- optional, updated every week. (see issue #1193)
    }

    --NOTE: start page
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require 'alpha'.setup(require 'alpha.themes.startify'.config)
            --require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }


    --NOTE: move
    use 'fedepujol/move.nvim'

    --NOTE: commenting
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        'rmagatti/goto-preview',
        config = function()
            require('goto-preview').setup {}
        end
    }

    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
            }
        end
    }

    --NOTE: toggle terminal
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end
    }

    use "dnlhc/glance.nvim"

    --NOTE: make transparent
    use "xiyaowong/transparent.nvim"

    --NOTE: wakatime stats
    use 'wakatime/vim-wakatime'

    --NOTE: formatter
    use "lukas-reineke/lsp-format.nvim"

    --NOTE: Plugins added on 12/08/2023 -----------------------------------------------------------------------------------------------------

    --NOTE: smooth cursor
    use { 'gen740/SmoothCursor.nvim',
        config = function()
            require('smoothcursor').setup()
        end
    }

    --NOTE: sidebar
    use 'sidebar-nvim/sidebar.nvim'

    --NOTE: prettier plugin/ or wont format on save
    use('neovim/nvim-lspconfig')
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')

    --NOTE: notify
    use 'rcarriga/nvim-notify'

    --NOTE: markdown view
    use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })

    --NOTE: we are trying to get some snippets in here.
    use({
        "L3MON4D3/LuaSnip",
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })

    use "rafamadriz/friendly-snippets"

    -- leap.nvim NOTE: move around
    use "ggandor/leap.nvim"


    use "folke/which-key.nvim"

    -- fold code
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

    -- NOTE: Plugins added on 08/01/2024 -----------------------------------------------------------------------------------------------------

    -- NOTE:plugin tells me the scope of where i'm coding in
    use {
        "SmiteshP/nvim-navic",
        requires = "neovim/nvim-lspconfig"
    }

    -- NOTE:plugin to tell me virtual types in code
    use 'jubnzv/virtual-types.nvim'

    -- NOTE:plugin for components, mostly other plugins use this
    use 'MunifTanjim/nui.nvim'


    -- NOTE:plugin for components, mostly other plugins use this
    use "SmiteshP/nvim-navbuddy"
end)
