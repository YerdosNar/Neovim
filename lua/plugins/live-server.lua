return {
    "barrett-ruth/live-server.nvim",
    build = "npm install -g live-server", -- Auto-install the binary
    cmd = { "LiveServerStart", "LiveServerStop" }, -- Lazy load on command
    config = true,
}
