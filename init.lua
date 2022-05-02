local awful = require("awful")


local base_cmd = "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.playerctld /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player"

local module = {}

function module.play_pause()
    awful.util.spawn(base_cmd .. ".PlayPause", false)
end

function module.stop()
    awful.util.spawn(base_cmd .. ".Stop", false)
end

function module.previous()
    awful.util.spawn(base_cmd .. ".Previous", false)
end

function module.next()
    awful.util.spawn(base_cmd .. ".Next", false)
end

return module
