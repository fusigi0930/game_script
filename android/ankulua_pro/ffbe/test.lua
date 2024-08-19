-- ========== Settings ================
Settings:setCompareDimension(true, 1080)
Settings:setScriptDimension(true, 1080)

--[[

--]]
-- ==========  main program ===========
require "/sdcard/AnkuLua/ffbe-header"

m=wait_for_image("next.png",20)
print (m)
highlight_click(m)
