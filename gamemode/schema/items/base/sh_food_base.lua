Base.uniqueID = "food_base"
Base.name = "Food!"
Base.desc = "A Food!"
Base.category = "Food"
Base.cost = 0
Base.weight = 0
Base.func = { }
Base.func.eat = {
	text = "Eat",
	viewIsEntity = true,
	viewIsMenu = true,
	ismenuRightclickFunc = true,
	func = function( pl, tab, data )
		pl:EmitSound( "physics/flesh/flesh_impact_hard" .. math.random( 1, 5 ) .. ".wav" )
		pl:SetHealth( math.Clamp( pl:Health( ) + ( tab.healthPlus or 0 ), 0, 100 ) )
		catherine.inventory.Update( pl, "remove", tab.uniqueID )
	end,
	showFunc = function( pl, tab, key )
		return true
	end
}