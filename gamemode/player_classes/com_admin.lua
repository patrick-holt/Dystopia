AddCSLuaFile()

DEFINE_BASECLASS( "cit_citizen" )

local Class = {}

Class.DisplayName		= "Administrator"

function Class:SetModel()

	self.Player:SetModel( "models/player/breen.mdl" )

end

player_manager.RegisterClass( "com_admin", Class, "cit_citizen" )
