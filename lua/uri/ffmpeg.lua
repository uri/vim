vim.api.nvim_create_user_command("FFprobe", "execute '!ffprobe -hide_banner ' . getline(\".\")", { bang = true })
