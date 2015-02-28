
catherine.command.Register( {
	command = "radio",
	syntax = "[Text]",
	runFunc = function( pl, args )
		if ( pl:HasItem( "portable_radio" ) ) then

			if ( pl:GetInvItemData( "portable_radio", "toggle" ) ) then
				if ( pl:GetInvItemData( "portable_radio", "freq" ) != "" ) then
				
				else
					catherine.util.Notify( pl, "You are not set radio freq!" )
				end
			else
				catherine.util.Notify( pl, "Please turn on the radio!" )
			end
		else
			catherine.util.Notify( pl, "You don't have Portable radio!" )
		end
	end
} )