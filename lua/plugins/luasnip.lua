if vim.loop.os_uname().sysname == "Darwin" then
	return {
		{
	        'L3MON4D3/LuaSnip',
	        version = "v2.*",
	        build = "make install_jsregexp",
    	},
	}
else
	return {
		{
	        'L3MON4D3/LuaSnip',
	        version = "v2.*",
	        -- build = "make install_jsregexp",
    	},
	}
end
