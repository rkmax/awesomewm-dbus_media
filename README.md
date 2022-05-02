# dbus media controllers for awesome

## How does it work

Any media player that conform the [MPRIS spec](https://specifications.freedesktop.org/mpris-spec/2.2/Player_Interface.html) should work

## How to use it

### Clone the repo

```
git clone https://github.com/rkmax/dbus_media ~/.config/awesome/dbus_media
```

### Include into your configuration

```lua
-- ~/.config/awesome/rc.lua
-- ...
local media = require('dbus_media')
-- ...
globalkeys = gears.table.join(
-- ...
        awful.key({ }, "XF86AudioPlay", media.play_pause, { description = "Play/Pause", group = "media"}),
        awful.key({ }, "XF86AudioStop", media.stop, { description = "Stop", group = "media"}),
        awful.key({ }, "XF86AudioPrev", media.previous, { description = "Previous", group = "media"}),
        awful.key({ }, "XF86AudioNext", media.next, { description = "Next", group = "media"})    
)
```
