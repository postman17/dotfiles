-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.
-- stylua: ignore
local colors = {
    blue = '#80a0ff',
    cyan = '#79dac8',
    black = '#080808',
    white = '#c6c6c6',
    red = '#ff5189',
    violet = '#d183e8',
    grey = '#303030',
    blueq = '#0099ff'
}

-- local bubbles_theme = {
--     normal = {
--         a = {fg = colors.black, bg = colors.blueq},
--         b = {fg = colors.white, bg = colors.grey},
--         c = {fg = colors.black, bg = colors.black}
--     },
--
--     insert = {a = {fg = colors.black, bg = colors.blue}},
--     visual = {a = {fg = colors.black, bg = colors.cyan}},
--     replace = {a = {fg = colors.black, bg = colors.red}},
--
--     inactive = {
--         a = {fg = colors.white, bg = colors.black},
--         b = {fg = colors.white, bg = colors.black},
--         c = {fg = colors.black, bg = colors.black}
--     }
-- }

require('lualine').setup {
    options = {
        --theme = bubbles_theme,
	theme = 'tokyonight',
        component_separators = '|',
        section_separators = {left = '', right = ''}
    },
    sections = {
        lualine_a = {{'mode', separator = {left = ''}, right_padding = 2}},
        lualine_b = {
		{'filename', path = 1}, 'branch'
            -- require("lsp-progress").progress  
        },
        lualine_c = {'fileformat'},
        lualine_x = {},
        lualine_y = {'filetype', 'encoding', 'progress'},
        lualine_z = {
            {'location', separator = {right = ''}, left_padding = 2}
        }
    },
    inactive_sections = {
        lualine_a = {'filename'},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'location'}
    },
    tabline = {},
    extensions = {}
}

vim.cmd([[
augroup lualine_augroup
    autocmd!
    autocmd User LspProgressStatusUpdated lua require("lualine").refresh()
augroup END
]])
