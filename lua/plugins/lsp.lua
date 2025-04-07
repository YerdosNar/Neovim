local lspconfig = require("lspconfig")

lspconfig.pyright.setup {}   -- Python
lspconfig.clangd.setup {}    -- C/C++
lspconfig.ts_ls.setup {}  -- JS/TS
lspconfig.html.setup {}      -- HTML
lspconfig.cssls.setup {}     -- CSS
lspconfig.jdtls.setup {
    cmd = { "jdtls.sh" },
    root_dir = lspconfig.util.root_pattern('.git', 'pom.xml', 'build.gradle', 'settings.gradle', 'settings.gradle.kts', 'build.xml'),
}     -- Java

