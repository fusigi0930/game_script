-- ========== Settings ================
Settings:setCompareDimension(true, 1920)
Settings:setScriptDimension(true, 1920)

--[[

--]]

require "/sdcard/AnkuLua/ffbe-header"
count=0
-- ==========  main program ===========
while true do
	--for i=1,3 do
	--	ground_img=wait_for_image("ground.png",10)
	--	if (ground_img == nil ) then
	--		wait_in_light(3)
	--		back_img=wait_for_image("back.png",10)
	--		highlight_click(back_img)
	--	else 
	--		break
	--	end
	--end
	--ground_img=wait_for_image("ground.png",10)
	--if (ground_img == nil) then
	--	m=wait_for_image("next.png",25)
	--	highlight_click(m)
	--end
	-- click lesson 1 location 	500,1220
	swipe(Region(500, 1600, 25, 25), Region(500, 500, 25, 25));
	highlight_click(Region(500,1700, 25, 25))

	-- click next
	wait_in_light(2)
	--m=wait_for_image("next.png",20)
	highlight_click(Region(500,1650,50,50))
	--wait_in_light(12)
	
	-- click frient
	m=wait_for_image("friend.png",20)
	if (m ~= nil) then
		m:highlight()
		highlight_click(Region(500,650, 25, 25))
		m:highlight()
	end
	-- click ¥Xµo
	m=wait_for_image("start.png",20)
	highlight_click(m)
	wait_in_light(13)
	
	-- click auto
	highlight_click(Region(140,1850,25, 25))
	
	wait_in_light(65)
	
	highlight_click(Region(500,200, 25, 25))
	
	m=wait_for_image("next.png",25)
	highlight_click(m)
	
	wait_in_light(3)
	highlight_click(Region(500,200, 25, 25))
	
	wait_in_light(3)
	--m=wait_for_image("next.png",25)
	--if (m ~= nil) then
	highlight_click(Region(500,1650,25,25))
	--end
	
	--wait_in_light(8)
	--click(Location(500,650))

	--m=wait_for_image("next.png",25)
	--click(m)
	wait_in_light(3)
	-- power key to suspend
	-- wait_in_dark(400)
	--count=count+1
end
