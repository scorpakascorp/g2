conky.config = {
    out_to_x = false,
    out_to_console = true,
    short_units = true,
    update_interval = 1
}

home = os.getenv("HOME")
dofile(home .. '/.config/i3/conky/' .. 'jsonhelper.lua')
dofile(home .. '/.config/i3/conky/' .. 'jsonparts.lua')

enabled = ''
--  .. parts.mpd .. ','
--    .. parts.cputemp .. ',' 
    .. parts.download .. ','
    .. parts.upload .. ','
    .. parts.memory .. ','
    .. parts.cpu0 .. ','
    .. parts.uptime .. ','
    .. parts.host .. ','
--    .. parts.memory .. ','
    .. parts.machine
--    .. jsonhelper.separator()


conky.text = [[ 
[ 
]] .. enabled .. [[
],
]]





