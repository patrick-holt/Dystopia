AddCSLuaFile()

DEFINE_BASECLASS( "cit_citizen" )

local Class = {}

Class.DisplayName		= "Medical Personnel"

function Class:SetModel()

	self.Player:SetModel( "	models/player/group03m/female_01.mdl" )

end

player_manager.RegisterClass( "com_medic", Class, "cit_citizen" )
