Item.name = "Portable Radio"
Item.desc = "Communication to other humans."
Item.cost = 210
Item.model = "models/Items/battery.mdl"
Item.weight = 3
Item.category = "Communication"
Item.itemData = {
	freq = "",
	toggle = false
}
Item.func = { }
Item.func.setfreq = {
	text = "Set Freq",
	viewIsMenu = true,
	func = function( pl, tab, data )
		catherine.util.UniqueStringReceiver( pl, "PortableRadio_UniqueSetFreq", "Set Radio freq", "What are you setting for radio?", "xxx.x", function( _, val )
			if ( val:find( "^%d%d%d%.%d$" ) ) then
				local one, two, three = val:match( "(%d)%d(%d)%.(%d)" )
				one = tonumber( one ) two = tonumber( two ) three = tonumber( three )
				if ( one == 1 and two > 0 and two <= 9 and three > 0 and three <= 9 ) then
					pl:SetInvItemData( tab.uniqueID, "freq", val )
					catherine.util.Notify( pl, "You set portable radio freq to " .. val .. "." )
				else
					catherine.util.Notify( pl, "Radio freq is must be 101.1 ~ 199.9!" )
				end
			else
				catherine.util.Notify( pl, "Radio freq is must be XXX.X!" )
			end
		end )
	end
}
Item.func.toggle = {
	text = "Toggle",
	viewIsMenu = true,
	func = function( pl, tab, data )
		local toggle = false
		if ( !data.toggle ) then toggle = true end
		pl:SetInvItemData( tab.uniqueID, "toggle", toggle )
	end
}


if ( CLIENT ) then
	function Item:DrawOverAll( pl, w, h, data )
		if ( data.toggle ) then
			surface.SetDrawColor( 255, 255, 255, 255 )
			surface.SetMaterial( Material( "icon16/accept.png" ) )
			surface.DrawTexturedRect( 5, 5, 16, 16 )
		end
	end
	
	function Item:GetDesc( pl, itemTab, data )
		return "Freq : " .. ( data.freq == "" and "xxx.x" or data.freq ) .. "\nToggle : " .. ( data.toggle == true and "On" or "Off" )
	end
end

