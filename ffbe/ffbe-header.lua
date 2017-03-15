-- ========== Settings ================
Settings:setCompareDimension(true, 1080)
Settings:setScriptDimension(true, 1080)
setImmersiveMode(true)

--[[

--]]
-- ==========  main program ===========
function wait_for_image(image,sec)
	for i=1,sec do
		m=exists(Pattern(image):similar(0.65):targetOffset(3, 3), 1)
		if (m ~= nil) then
			wait(1)
			return m
		end
		click(Location(0,0))
	end	
	return nil
end

function wait_in_light(sec)
	cur_time=os.time()
	while cur_time + sec > os.time() do
		wait(1)
		click(Location(0,0))
	end
end

function wait_in_dark(sec)
	cur_time=os.time()
	keyevent(26)
	while cur_time + sec > os.time() do
		wait(1)
	end
	keyevent(26)
end

function highlight_click(m)
	if (m == nil) then
		return
	end
	m:highlight()
	--touchDown(m)
	--wait(1)
	--touchUp(m)
	click(m)
	m:highlight()
end
