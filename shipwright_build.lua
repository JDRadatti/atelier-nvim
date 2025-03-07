local lushwright = require("shipwright.transform.lush")
run(require("lua.lush_theme.atelier"),
    -- generate lua code
    lushwright.to_lua,
    -- write the lua code into our destination.
    -- you must specify open and close markers yourself to account
    -- for differing comment styles, patchwrite isn't limited to lua files.
    { patchwrite, "colors/atelier-cave.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE" }
)
