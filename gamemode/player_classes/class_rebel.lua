AddCSLuaFile()

DEFINE_BASECLASS( "player_default" )

local Class = {}

--
-- See gamemodes/base/player_class/player_default.lua for all overridable variables
--

-- Standard variables
Class.DisplayName			    = "Rebel"

Class.WalkSpeed                 = 400		-- How fast to move when not running
Class.RunSpeed				    = 600		-- How fast to move when running
Class.CrouchedWalkSpeed	        = 0.3		-- Multiply move speed by this when crouching
Class.DuckSpeed			        = 0.3		-- How fast to go from not ducking, to ducking
Class.UnDuckSpeed			    = 0.3		-- How fast to go from ducking, to not ducking
Class.JumpPower			        = 200		-- How powerful our jump should be
Class.CanUseFlashlight		    = true		-- Can we use the flashlight
Class.MaxHealth			        = 100		-- Max health we can have
Class.StartHealth			    = 100		-- How much health we start with
Class.StartArmor			    = 0			-- How much armour we start with
Class.DropWeaponOnDie  		    = true		-- Do we drop our weapon when we die
Class.TeammateNoCollide	        = false		-- Do we collide with teammates or run straight through them
Class.AvoidPlayers			    = true		-- Automatically swerves around other players
Class.UseVMHands			    = true		-- Uses viewmodel hands

-- Custom variables for the mod
Class.Loyalty                  = 0
Class.SubversiveActivities     = 0
Class.Stamina                  = 20
Class.BodyHeat                 = 37
Class.Hunger                   = 0

-- What happens to the players loadout when he spawns
function Class:Loadout()
    Class.RemoveAllWeapons()
    Class.RemoveAllItems()
    Class.RemoveAllAmmo()
    Class.GiveItem( "ID_Card" )

end
--
-- Set up the network table accessors
--
function Class:SetupDataTables()
end

--
-- Called when the class object is created (shared)
--
function Class:Init()
end

--
-- Called serverside only when the player spawns
--
function Class:Spawn()
end

-- Sets the player model
function Class:SetModel()

    local cl_playermodel = self.Player:GetInfo( "cl_playermodel" )
    local modelname = player_manager.TranslatePlayerModel( cl_playermodel )
    util.PrecacheModel( modelname )
    self.Player:SetModel( modelname )

end

-- Clientside only
function Class:CalcView( view ) end		-- Setup the player's view
function Class:CreateMove( cmd ) end		-- Creates the user command on the client
function Class:ShouldDrawLocal() end		-- Return true if we should draw the local player

-- Shared
function Class:StartMove( cmd, mv ) end	-- Copies from the user command to the move
function Class:Move( mv ) end				-- Runs the move (can run multiple times for the same client)
function Class:FinishMove( mv ) end		-- Copy the results of the move back to the Player

--
-- Name: PLAYER:ViewModelChanged
-- Desc: Called when the player changes their weapon to another one causing their viewmodel model to change
-- Arg1: Entity|viewmodel|The viewmodel that is changing
-- Arg2: string|old|The old model
-- Arg3: string|new|The new model
-- Ret1:
--
function Class:ViewModelChanged( vm, old, new )
end

--
-- Name: PLAYER:PreDrawViewmodel
-- Desc: Called before the viewmodel is being drawn (clientside)
-- Arg1: Entity|viewmodel|The viewmodel
-- Arg2: Entity|weapon|The weapon
-- Ret1:
--
function Class:PreDrawViewModel( vm, weapon )
end

--
-- Name: PLAYER:PostDrawViewModel
-- Desc: Called after the viewmodel has been drawn (clientside)
-- Arg1: Entity|viewmodel|The viewmodel
-- Arg2: Entity|weapon|The weapon
-- Ret1:
--
function Class:PostDrawViewModel( vm, weapon )
end

--
-- Name: PLAYER:GetHandsModel
-- Desc: Called on player spawn to determine which hand model to use
-- Arg1:
-- Ret1: table|info|A table containing model, skin and body
--
function Class:GetHandsModel()

    -- return { model = "models/weapons/c_arms_cstrike.mdl", skin = 1, body = "0100000" }

    local playermodel = player_manager.TranslateToPlayerModelName( self.Player:GetModel() )
    return player_manager.TranslatePlayerHands( playermodel )

end

-- registers the class like so (name, player, baseclass)
player_manager.RegisterClass( "player_rebel", Class, "player_default" )