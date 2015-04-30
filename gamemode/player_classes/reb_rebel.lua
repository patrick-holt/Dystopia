AddCSLuaFile()

DEFINE_BASECLASS( "cit_citizen" )

local Class = {}

Class.DisplayName		= "Rebel"

function Class:SetModel()

	self.Player:SetModel( "models/player/group03/male_02.mdl" )

end

player_manager.RegisterClass( "reb_rebel", Class, "cit_citizen" )
