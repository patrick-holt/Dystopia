AddCSLuaFile()

DEFINE_BASECLASS( "cit_citizen" )

local Class = {}

Class.DisplayName		= "Overseer"

function Class:SetModel()

	self.Player:SetModel( "models/player/combine_super_soldier.mdl" )

end

player_manager.RegisterClass( "com_overseer", Class, "cit_citizen" )
