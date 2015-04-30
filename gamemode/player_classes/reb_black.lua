AddCSLuaFile()

DEFINE_BASECLASS( "cit_citizen" )

local Class = {}

Class.DisplayName		= "Black Market Contact"

function Class:SetModel()

	self.Player:SetModel( "models/player/group03/male_01.mdl" )

end

player_manager.RegisterClass( "reb_black", Class, "cit_citizen" )
