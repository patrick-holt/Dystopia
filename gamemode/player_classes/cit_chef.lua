AddCSLuaFile()

DEFINE_BASECLASS( "cit_citizen" )

local Class = {}

Class.DisplayName		= "Chef"

function Class:SetModel()

    self.Player:SetModel( "models/player/group01/female_01.mdl"  )

end

player_manager.RegisterClass( "cit_chef", Class, "cit_citizen" )
