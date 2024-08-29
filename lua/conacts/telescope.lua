local telescope = require('telescope')

telescope.setup {
    defaults = {
        file_ignore_patterns = {"venv/", "env/", "%.venv/"}
    },
    extensions = {
        media_files = {
            filetypes = {"png", "webp", "jpg", "jpeg"},
            find_cmd = "rg"
        }
    }
}

telescope.load_extension('media_files')
