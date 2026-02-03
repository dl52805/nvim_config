--[[
local handlers = {
    ['textDocument/publishDiagnostics'] = function(...) end
}
--]]

local config = {
    cmd = {'/opt/homebrew/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
    -- handlers = handlers,
}

config.settings = {
    java = {
        project = {
            referencedLibraries = {
                '~/compsci/cs180/team/180TeamProject1/lib/junit-4.12.jar',
                '~/compsci/cs180/team/180TeamProject1/lib/hamcrest-core-1.3.jar',
            }
        },
    }
},

require('jdtls').start_or_attach(config)
