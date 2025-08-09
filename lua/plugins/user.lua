-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILif true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- PLEASE REMOVE THE EXAMPLES YOU HAVE NO INTEREST IN BEFORE ENABLING THIS FILE
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- == Examples of Overriding Plugins ==

  -- customize dashboard options
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
                                                                   .od88888bo.
    _.ooooo._                               _.oooooo._           .d88888888888b
  .d888888888b                            _d8888888888b.        d88888888888888b
 .888888888888b                          d88888888888888b_     d8888888888888888b
d888888888888888b.                      d88888888888888888b    888888888888888888
8888888`"Y8888888b          ____       d8888888888888888888b   888888P""Y8888P888b
88P'  _|  |`_ `Y88      .ood88888b.    88888888""""`Y8888888b  88P' =,  \  =- `Y88
88P  '-'   `-` `Y8     d88888888888b.  888P  ' ,=-   `Y8888"Y  88P'      `     888
888             Y8    d88888888888888b  Y/ _ `.       |888p 8  88     _-_      P \
| Y     '"`      8\  d888888P""""""Y88b \ /"|          Y - .8  |Y     ' '      | |
\\     ."-".    |// 888888P' '_   \_ `Y  J  |'-)        |-'88  \`    _.--._    |_'
 `-    -----`   |'  888888P -'"    \".|   |  " ___      | 888   `|   '  -      |8
  Y      =     /Y   8P Y88     , -' ) |    \ |"-'     .'  Y88    `.    `       |
   |         .' F   \| ,Y8b    / ___  F     \ '_.'  .'     Y8     |`--.___.--' |
  / `. ` ---'  |     \         -'._.\|       \    .'        Y_    )           /`.
.<    `-       |      \`-'        =  |        `._'         .' \.-'|        _.' / \
  `-.   `.     |       Y| `     _   /            )-._    .'    /  |`-.__.-'   /   \
     \    \__.'|       `|        `""|           J\   `-.'     /  J   .-.     /
      \    /\  |`.      |           |           / \   / \    /   /   (  )  .'
       \   | | |  `-   / \     `    |        _.'   \  \ |   /    \    ) |.'
        \  | | |    `./   `.       _|    _.-'       \  | \ /      \   | '
         \ | | |       \    `.__.-' |_.-'            `.|  V        \  /
          \| | /        \     / \  / \                 \  /         \/
           \ | |         \    \ ( /                     \/
            \|/           `.  | |/
             V              \ | /
                             `.'                                       Veronica Karlsson
          ]],
        },
      },
    },
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = true },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
}
