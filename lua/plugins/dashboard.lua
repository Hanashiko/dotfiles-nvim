local function default_header() -- ASCII логотип (стиль Shadow)
    return {
        '', '', '',
        '██╗  ██╗ █████╗ ███╗   ██╗ █████╗ ███████╗██╗  ██╗██╗██╗  ██╗ ██████╗ ',
        '██║  ██║██╔══██╗████╗  ██║██╔══██╗██╔════╝██║  ██║██║██║ ██╔╝██╔═══██╗',
        '███████║███████║██╔██╗ ██║███████║███████╗███████║██║█████╔╝ ██║   ██║',
        '██╔══██║██╔══██║██║╚██╗██║██╔══██║╚════██║██╔══██║██║██╔═██╗ ██║   ██║',
        '██║  ██║██║  ██║██║ ╚████║██║  ██║███████║██║  ██║██║██║  ██╗╚██████╔╝',
        '╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝ ╚═════╝ ',
        '', '', ''
    }
end

require('dashboard').setup {
    theme = 'doom',
    config = {
        header = default_header(),
        center = {
            {
                icon = '󰈞 ',
                icon_hl = 'Title',
                desc = 'Знайти файли',
                desc_hl = 'String',
                key = 'f',
                keymap = 'SPC f f',
                key_hl = 'Number',
                action = ':Telescope find_files'
            }, {
				icon = '󰱾 ',
                icon_hl = 'Title',
                desc = 'Нещодавні файли',
                desc_hl = 'String',
                key = 'r',
                keymap = 'SPC f r',
                key_hl = 'Number',
                action = ':Telescope oldfiles'
            }, {
                icon = ' ',
                icon_hl = 'Title',
                desc = 'Пошук тексту',
                desc_hl = 'String',
                key = 'w',
                keymap = 'SPC f w',
                key_hl = 'Number',
                action = ':Telescope live_grep'
            }, {
                icon = ' ',
                icon_hl = 'Title',
                desc = 'Гілки Git',
                desc_hl = 'String',
                key = 'b',
                keymap = 'SPC g b',
                key_hl = 'Number',
                action = ':Telescope git_branches'
            }

        }
    }
}
