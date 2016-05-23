-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here


display.setStatusBar(display.HiddenStatusBar)

local sampleUI = require("sampleUI.sampleUI")

sampleUI:newUI({
	theme='darkgrey',
	title = "horse animation",
	showBuildNum = false,
})

display.getCurrentStage():insert(sampleUI.backGroup)
local worldGroup = display.newGroup()
display.getCurrentStage():insert(sampleUI.frontGroup)



local tPrevious = system.getTimer()

display.setDefault("anchorX", 0.0)
display.setDefault("anchorY", 0.0)

local sceneContainer = display.newContainer(worldGroup, 480, 320)
sceneContainer.x, sceneContainer.y = 0,0
sceneContainer.anchorChildren = false

local background = display.newImage(sceneContainer, "background.png", 0,0)

local moon = display.newImage(sceneContainer, 'moon.png', 22, 19)

local mountain_big = display.newImage( sceneContainer, 'mountain_big.png', 132-240, 90 )
local mountain_big2 = display.newImage( sceneContainer, 'mountain_big.png', 132-720, 92 )
local mountain_small = display.newImage( sceneContainer, 'mountain_small.png', 84, 111 )
local mountain_small2 = display.newImage( sceneContainer, 'mountain_small.png', 84-480, 111 )

local tree_s = display.newImage( sceneContainer, 'tree_s.png', 129-30, 151 )
local tree_s2 = display.newImage( sceneContainer, 'tree_s.png', 270+10, 151 )
local tree_l = display.newImage( sceneContainer, 'tree_l.png', 145, 131)


local tree_s3 = display.newImage( sceneContainer, 'tree_s.png', 129-30-320, 151)
local tree_s4 = display.newImage( sceneContainer, 'tree_s.png', 270+10-320, 151 )
local tree_l2 = display.newImage( sceneContainer, 'tree_l.png', 145-320,131)

local tree_s5 = display.newImage( sceneContainer, 'tree_s.png', 129-30-640, 151 )
local tree_s6 = display.newImage( sceneContainer, 'tree_s.png', 270+10-640, 151 )
local tree_l3 = display.newImage( sceneContainer, 'tree_l.png', 145-640, 131 )


local fog = display.newImage( sceneContainer, 'Fog.png', 240, 214)
local fog2 = display.newImage( sceneContainer, 'Fog.png', -240, 214 )


local options = {
	frames = require( 'uma' ).frames
}


local umaSheet = graphics.newImageSheet( 'uma.png', options )
local spriteOptions = {
	name = 'uma',
	start = 1,
	count = 8,
	time = 1000,
}

local spriteInstance = display.newSprite( sceneContainer, umaSheet, spriteOptions )
spriteInstance.anchorX = 1
spriteInstance.anchorY = 1
spriteInstance.x = 460
spriteInstance.y = 320


local tree_l_sugi = display.newImage(sceneContainer, 'tree_l_sugi.png', 23,0)
local tree_l_take = display.newImage( sceneContainer, 'tree_l_take.png', 151, 0 )

local rakkan = display.newImage( sceneContainer, 'rakkan.png', 19,217 )
local rakkann = display.newImage( sceneContainer, 'rakkann.png', 450,11 )

local function move( event )
	
	local tDelta = event.time - tPrevious

	tPrevious = event.time
	local xOffset = (0.2 * tDelta)
	moon.x = moon.x + xOffset * 0.05

	fog.x = fog.x + xOffset
	fog2.x = fog2.x + xOffset

	mountain_big.x = mountain_big.x + xOffset*0.5
	mountain_big2.x = mountain_big2.x + xOffset*0.5
	mountain_small.x = mountain_small.x + xOffset*0.5
	mountain_small2.x = mountain_small2.x + xOffset*0.5

	tree_s.x = tree_s.x + xOffset
	tree_s2.x = tree_s2.x + xOffset
	tree_s3.x = tree_s3.x + xOffset
	tree_s4.x = tree_s4.x + xOffset
	tree_s5.x = tree_s5.x + xOffset
	tree_s6.x = tree_s6.x + xOffset

	tree_l.x = tree_l.x + xOffset
	tree_l2.x = tree_l2.x + xOffset
	tree_l3.x = tree_l3.x + xOffset

	tree_l_sugi.x = tree_l_sugi.x + xOffset * 1.5
	tree_l_take.x = tree_l_take.x + xOffset * 1.5

	
	if moon.x > 480 + moon.width / 2 then
		moon:translate( -480 * 2 , 0 )
	end
	if fog.x >= fog.width then
		fog:translate( -480*2, 0 )
	end
	if fog2.x >= fog2.width  then
		fog2:translate( -480*2, 0 )
	end
	if mountain_big.x > 480 + mountain_big.width/2 then
		mountain_big:translate( -480 * 2, 0 )
	end
	if mountain_big2.x >480 + mountain_big2.width/2 then
		mountain_big2:translate( -480 * 2, 0 )
	end
	if mountain_small.x > 480 + mountain_small.width/2 then
		mountain_small:translate( -480 * 2, 0 )
	end
	if mountain_small2.x > 480 + mountain_small2.width /2 then
		mountain_small2:translate( -480 * 2, 0 )
	end
	if  then
		
	end


end

spriteInstance:play()


Runtime:addEventListener( "enterFrame", move )






