AddCSLuaFile()

DEFINE_BASECLASS( "cit_citizen" )

local Class = {}

Class.DisplayName		= "Merchant"

function Class:SetModel()

	self.Player:SetModel( "models/player/group01/male_02.mdl" )

end

player_manager.RegisterClass( "cit_merchant", Class, "cit_citizen" )
