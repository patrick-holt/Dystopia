AddCSLuaFile()

DEFINE_BASECLASS( "cit_citizen" )

local Class = {}

Class.DisplayName		= "Combine Officer"

function Class:SetModel()

	self.Player:SetModel( "models/player/barney.mdl" )

end

player_manager.RegisterClass( "com_officer", Class, "cit_citizen" )
