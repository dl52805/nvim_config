local dap = require("dap")

dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
        command = "codelldb",
        args = { "--port", "${port}" },
    },
}

local lldb = {
    name = 'Launch',
    type = 'codelldb',
    request = 'launch',
    program = function()
		return vim.fn.input(
			"Path to executable: ",
			vim.fn.getcwd() .. "/",
			"file"
		)
	end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
    runInTerminal = false,
}

require('dap').configurations.cpp = {
	{
		name = 'Launch',
	    type = 'codelldb',
	    request = 'launch',
	    program = "${workspaceFolder}/out/debug/${workspaceFolderBasename}",
	    cwd = '${workspaceFolder}',
	    stopOnEntry = false,
	    args = {},
	    runInTerminal = false,
	},
}

require('dap').configurations.c = {
	{
		name = 'Launch',
	    type = 'codelldb',
	    request = 'launch',
	    program = "${workspaceFolder}/out/debug/${workspaceFolderBasename}",
	    cwd = '${workspaceFolder}',
	    stopOnEntry = false,
	    args = {},
	    runInTerminal = false,
	},
}
