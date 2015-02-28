
Schema.Name = "HL2RP"
Schema.Desc = "The City 17 in the life."
Schema.Author = "L7D, Fristet"
Schema.FolderName = "catherine_hl2rp"
Schema.Title = "Welcome to City 17."
Schema.Desc = "This is safe, maybe ..."

catherine.util.Include( "sh_config.lua" )
catherine.util.Include( "sh_commands.lua" )
catherine.util.Include( "sv_schema.lua" )
catherine.util.Include( "cl_schema.lua" )

catherine.chat.RegisterClass( {
	class = "radio",
	doChat = function( pl, text )
		chat.AddText( Color( 0, 255, 100 ), pl:Name( ) .. " 님의 말 : " .. text )
	end,
	global = true,
	canRun = function( pl )
		return pl:Alive( )
	end
} )