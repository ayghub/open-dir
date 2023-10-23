local utils = require 'mp.utils'

function open_dir()
    local path = mp.get_property("path")
    local current_path, _ = utils.split_path(path)
    os.execute(string.format('start "" "%s"', current_path))
end

mp.add_key_binding("ctrl+d", "open_current_dir", open_dir)
