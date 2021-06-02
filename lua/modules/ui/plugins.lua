local ui = {}
local conf = require("modules.ui.config")

-- ui["christianchiarulli/nvcode-color-schemes.vim"] = {
--     config = [[vim.cmd('colorscheme lunar')]]
-- }

-- ui["sainnhe/sonokai"] = {
--   config = function()
--     vim.cmd([[
--         if has('termguicolors')
--           set termguicolors
--         endif
--         " Available values `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`, `'espresso'`
--         let g:sonokai_style = 'maia'
--         let g:sonokai_enable_italic = 1
--         let g:sonokai_disable_italic_comment = 1
--         colorscheme sonokai
-- ]])
--   end
-- }

ui["navarasu/onedark.nvim"] = {
    config = function()
        vim.cmd([[ colorscheme onedark ]])
    end
}

ui["glepnir/galaxyline.nvim"] = {
    branch = "main",
    event = "BufEnter",
    config = conf.galaxyline,
    requires = {"kyazdani42/nvim-web-devicons"}
}

-- ui["lukas-reineke/indent-blankline.nvim"] = {
--     event = "BufEnter",
--     branch = "lua",
--     config = conf.indent_blakline
-- }

ui["akinsho/nvim-bufferline.lua"] = {
    event = "BufEnter",
    config = conf.nvim_bufferline,
    requires = {"kyazdani42/nvim-web-devicons"}
}

ui["kyazdani42/nvim-tree.lua"] = {
    cmd = {"NvimTreeToggle", "NvimTreeRefresh", "NvimTreeFindFile"},
    config = conf.nvim_tree,
    requires = {"kyazdani42/nvim-web-devicons"}
}

ui["lewis6991/gitsigns.nvim"] = {
    event = {"BufEnter"},
    config = conf.gitsigns,
    requires = {"nvim-lua/plenary.nvim", opt = true}
}

ui["folke/which-key.nvim"] = {
    event = {"BufEnter"},
    config = conf.which_key
}

-- yay -S glow
ui["npxbr/glow.nvim"] = {
    ft = {"markdown"}
    -- run = "yay -S glow"
}

ui["kevinhwang91/nvim-bqf"] = {
    event = "BufEnter",
    config = conf.bqf
}

ui["folke/trouble.nvim"] = {
    cmd = {"Trouble", "TroubleClose", "TroubleToggle", "TroubleRefresh"},
    requires = {"kyazdani42/nvim-web-devicons"},
    config = conf.trouble
}

ui["phaazon/hop.nvim"] = {
    -- cmd = {"HopWord", "HopLine", "HopChar1", "HopChar2", "HopPattern"},
    keys = {"gl", "<Leader>h"},
    commit = {"e5eb06d6f3caff15f3abd35c6c21135f93fa4eb7"},
    -- event = "BufEnter",
    config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        --   require "hop.nvim".setup {keys = "etovxqpdygfblzhckisuran"}
        vim.api.nvim_set_keymap("n", "<Leader>h", "<cmd>lua require'hop'.hint_words()<cr>", {})
        vim.api.nvim_set_keymap("n", "gl", ":HopWord<cr>", {})
    end
}

-- ui["kosayoda/nvim-lightbulb"] = {
--     event = {"BufEnter"},
--     config = function()
--         vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
--     end
-- }

return ui
