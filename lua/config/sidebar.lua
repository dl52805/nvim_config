local cat = [[


          ／l、             
        （ﾟ､ ｡ ７         
          l  ~ヽ       
          じしf_,)ノ


         へ       ╱|、
     ૮ -  ՛)      (` - 7
      / ⁻ ៸|       |、⁻〵
   乀(ˍ, ل ل      じしˍ,)ノ



       *  .   
           .∧＿∧  ∩  * 
      *  ( ・∀・)/.
        . ⊂     ノ* 
      * (つ  ノ .
           (ノ


]]

local sidebar = require("sidebar-nvim")

local illustration = {
	title = "Illustration",
	icon = "󰢵",
	setup = function(ctx)
		-- called only once and if the section is being used
	end,
	update = function(ctx)
		-- hook callback, called when an update was requested by 
		-- either the user of external events (using autocommands)
	end,
	draw = function(ctx)
		return cat
	end,
}

local opts = {
	side = "right",
	sections = { illustration },
	section_separator = {"", "-----", ""},
	section_title_separator = {""},
}
sidebar.setup(opts)
