AddCSLuaFile()

DEFINE_BASECLASS( "player_default" )

local Class = {}

--
-- See gamemodes/base/player_class/player_default.lua for all overridable variables
--

-- Standard variables
Class.DisplayName		= "Citizen"

Class.WalkSpeed			= 250		-- How fast to move when not running
Class.RunSpeed			= 500		-- How fast to move when running
Class.CrouchedWalkSpeed	= 0.3		-- Multiply move speed by this when crouching
Class.DuckSpeed			= 0.3		-- How fast to go from not ducking, to ducking
Class.UnDuckSpeed		= 0.3		-- How fast to go from ducking, to not ducking
Class.JumpPower			= 200		-- How powerful our jump should be
Class.CanUseFlashlight	= true		-- Can we use the flashlight
Class.MaxHealth			= 100		-- Max health we can have
Class.StartHealth		= 100		-- How much health we start with
Class.StartArmor		= 0		-- How much armour we start with
Class.DropWeaponOnDie	= true		-- Do we drop our weapon when we die
Class.TeammateNoCollide	= false		-- Do we collide with teammates or run straight through them
Class.AvoidPlayers		= true		-- Automatically swerves around other players
Class.UseVMHands		= true		-- Uses viewmodel hands

-- Custom variables for the mod
Class.Loyalty			= 0
Class.SubversiveActivities	= 0
Class.Stamina			= 20
Class.BodyHeat			= 37
Class.Hunger			= 0

-- What happens to the players loadout when he spawns
function Class:Loadout()
   Class.RemoveAllWeapons()
   Class.RemoveAllItems()
   Class.RemoveAllAmmo()
   Class.GiveItem( "ID_Card" )

end

function Class:SetupDataTables()
end

function Class:Init()
end

function Class:Spawn()
end

-- Sets the player model
function Class:SetModel()

    util.PrecacheModel( "models/player/group01/male_01.mdl" )
    self.Player:SetModel( "models/player/group01/male_01.mdl" )

end

-- Clientside only
function Class:CalcView( view ) end		-- Setup the player's view
function Class:CreateMove( cmd ) end		-- Creates the user command on the client
function Class:ShouldDrawLocal() end		-- Return true if we should draw the local player

-- Shared
function Class:StartMove( cmd, mv ) end	-- Copies from the user command to the move
function Class:Move( mv ) end				-- Runs the move (can run multiple times for the same client)
function Class:FinishMove( mv ) end		-- Copy the results of the move back to the Player

function Class:ViewModelChanged( vm, old, new )
end

function Class:PreDrawViewModel( vm, weapon )
end

function Class:PostDrawViewModel( vm, weapon )
end

function Class:GetHandsModel()

    local playermodel = player_manager.TranslateToPlayerModelName( self.Player:GetModel() )
    return player_manager.TranslatePlayerHands( playermodel )

end

-- registers the class like so (name, player, baseclass)
player_manager.RegisterClass( "cit_citizen", Class, "player_default" )
