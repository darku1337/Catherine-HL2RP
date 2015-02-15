--[[

--]]

function Schema:PlayerCantSpray( pl )
	return !pl:HasItem( "spray" )
end