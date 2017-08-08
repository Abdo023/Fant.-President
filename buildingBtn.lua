local B = {}

function B.btn( width,height,func )
	local btn = Widget.newButton( {
        shape = "roundedRect",
        width = width,
        height = height,
        label = txt,
        labelAlign = "left",
        font = native.systemFont,
        labelColor = { default={ 255 /255, 255 /255, 255 /255 }, over={ 0, 0, 0, 0.5 } },
        fontSize = 32,
        strokeColor = { default={211 /255, 84 /255, 0 /255}, over={0.2,0.2,1,1} },
        strokeWidth = 2,
        --fillColor = { default={211 /255, 84 /255, 0 /255, 0.1}, over={1,1,1,0.3} },
        --emboss = true,
        onRelease = func
	} )
	return btn
end

function B.createBuildingBtn( parent, func )
	local width = U.sW/3
	local btn = B.btn (U.sW-50, 200, func)
	btn.id = 1
	btn.activated = false  -- In order to start generating
	local barGroup = UI.bar(10, btn.height - 20, btn.width - 20)

	btn.barGroup = barGroup
	btn.bar = barGroup.bar
	btn:insert( barGroup )

	local textOptions = {
        parent = btn,
        text = "txt: ",     
        --width = 200,
        font = native.systemFont,   
        fontSize = 25,
        align = "center"
    }
    local xOffset = 200
    local yOffset = 40

	local nameTxt = display.newText( textOptions )
	nameTxt.x = btn.width*0.5 
	nameTxt.y = yOffset
    nameTxt:setFillColor( 0, 0, 0 )
    nameTxt.size = 45
	btn.nameTxt = nameTxt

	local moneyTxt = display.newText( textOptions )
	moneyTxt.x = btn.width*0.5 - xOffset
	moneyTxt.y = btn.height*0.5 + yOffset
    moneyTxt:setFillColor( 0, 0, 0 )
	btn.moneyTxt = moneyTxt

    local popTxt = display.newText( textOptions )
    popTxt.x = btn.width*0.5 + xOffset
    popTxt.y = btn.height*0.5 + yOffset
    popTxt:setFillColor( 0, 0, 0 )
    btn.popTxt = popTxt

    function btn.setTxt( name,money, pop )
        nameTxt.text =  name
        moneyTxt.text =  "Money: "..money.."/month"
        popTxt.text =  "Popularity: "..pop.."/month"
    end

	function btn.reset(  )
		btn.bar.width = 0
	end

	return btn
end

function B.btnsScroll ( dataTable, func )
    local scroll = UI.scroll()
    tempTable = dataTable
    local createdBtns = {}  -- Returns the created btns
    scroll.btns = createdBtns
    local x = U.cX
    local offset = 10
    
    for i=1, #tempTable do
        local btn = B.createBuildingBtn (scroll, func)
        btn.setTxt(tempTable[i].name, tempTable[i].money, tempTable[i].pop)
        btn.id = i -- for accessing the data table later

        btn.x = U.cX
        btn.y = i * btn.height + offset
        btn:setFillColor( 211 /255, 84 /255, 0 /255, 0.1 )
        btn.bar.width = 0
        -- Starting them not shown until player unlocks the btn
        --btn.barGroup.isVisible = false

        scroll:insert( btn )
        offset = offset + 20

        createdBtns[#createdBtns+1] = btn
    end



    return scroll
end


return B