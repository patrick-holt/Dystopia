AddCSLuaFile()

DEFINE_BASECLASS( "cit_citizen" )

local Class = {}

Class.DisplayName		= "Civil Protection"

function Class:SetModel()

	self.Player:SetModel( "models/player/police.mdl" )

end

player_manager.RegisterClass( "com_civil", Class, "cit_citizen" )
