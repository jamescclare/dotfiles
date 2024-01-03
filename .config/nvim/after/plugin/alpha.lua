local alpha = require('alpha');
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
    [[                                                      _.oo.            ]],
    [[                              _.u[[/;:,.         .odMMMMMM'            ]],
    [[                           .o888UU[[[/;:-.  .o@P^    MMM^              ]],
    [[                          oN88888UU[[[/;::-.        dP^                ]],
    [[                         dNMMNN888UU[[[/;:--.   .o@P^                  ]],
    [[                        ,MMMMMMN888UU[[/;::-. o@^                      ]],
    [[                        NNMMMNN888UU[[[/~.o@P^                         ]],
    [[                        888888888UU[[[/o@^-..                          ]],
    [[                       oI8888UU[[[/o@P^:--..                           ]],
    [[                    .@^  YUU[[[/o@^;::---..                            ]],
    [[                  oMP     ^/o@P^;:::---..                              ]],
    [[               .dMMM    .o@^ ^;::---...                                ]],
    [[              dMMMMMMM@^`       `^^^^                                  ]],
    [[             YMMMUP^                                                   ]],
    [[              ^^                                                       ]],
    [[                                                                       ]],
    [[                                                                       ]],
    [[       ████ ██████           █████      ██                     ]],
    [[      ███████████             █████                             ]],
    [[      █████████ ███████████████████ ███   ███████████   ]],
    [[     █████████  ███    █████████████ █████ ██████████████   ]],
    [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
    [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
    [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
    [[                                                                       ]],
}

dashboard.section.buttons.val = {
    dashboard.button("f", "󰍉  Find file", ":Telescope find_files <CR>"),
    dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("r", "󰋚  Recently used files", ":Telescope oldfiles <CR>"),
    dashboard.button("t", "󰱽  Find text", ":Telescope live_grep <CR>"),
    dashboard.button("q", "󰩈  Quit Neovim", ":qa<CR>"),
}

-- Hightlight the header section.
dashboard.section.header.opts.hl = "AlphaHeader"

-- Adjust default padding of dashboard theme.
dashboard.config.layout[1].val = 10
dashboard.config.layout[3].val = 6

alpha.setup(dashboard.config)
