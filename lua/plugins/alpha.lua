return {
    'goolord/alpha-nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- set header
        dashboard.section.header.val = {
          "            :h-                                  Nhy`               ",
          "           -mh.                           h.    `Ndho               ",
          "           hmh+                          oNm.   oNdhh               ",
          "          `Nmhd`                        /NNmd  /NNhhd               ",
          "          -NNhhy                      `hMNmmm`+NNdhhh               ",
          "          .NNmhhs              ```....`..-:/./mNdhhh+               ",
          "           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
          "           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
          "      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
          " .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
          " h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
          " hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
          " /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
          "  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
          "   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
          "     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
          "       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
          "       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
          "       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
          "       //+++//++++++////+++///::--                 .::::-------::   ",
          "       :/++++///////////++++//////.                -:/:----::../-   ",
          "       -/++++//++///+//////////////               .::::---:::-.+`   ",
          "       `////////////////////////////:.            --::-----...-/    ",
          "        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
          "         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
          "           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
          "            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
          "           s-`::--:::------:////----:---.-:::...-.....`./:          ",
          "          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
          "         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
          "        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
          "                        .-:mNdhh:.......--::::-`                    ",
          "                           yNh/..------..`                          ",
          "                                                                    ",
        }

        -- set menu items
        dashboard.section.buttons.val = {
            dashboard.button( "n", "  > New file" , ":ene <BAR> startinsert <CR>"),
            dashboard.button( "f", "  > Find file", ":Telescope find_files<CR>"),
            dashboard.button( "w", "  > Find Word", ":Telescope live_grep <CR>"),
            dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
            dashboard.button( "q", "  > Quit", ":qa<CR>"),
        }

        alpha.setup(dashboard.opts)
    end
};
