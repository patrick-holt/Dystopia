
AddCSLuaFile()

DEFINE_BASECLASS( "player_default" )

local PLAYER = {}

--
-- See gamemodes/base/player_class/player_default.lua for all overridable variables
-- Standard variables
PLAYER.DisplayName			= "Citizen"

PLAYER.WalkSpeed			    = 400		-- How fast to move when not running
PLAYER.RunSpeed				    = 600		-- How fast to move when running
PLAYER.CrouchedWalkSpeed	        = 0.3		-- Multiply move speed by this when crouching
PLAYER.DuckSpeed			    = 0.3		-- How fast to go from not ducking, to ducking
PLAYER.UnDuckSpeed			    = 0.3		-- How fast to go from ducking, to not ducking
PLAYER.JumpPower			    = 200		-- How powerful our jump should be
PLAYER.CanUseFlashlight		    = false		-- Can we use the flashlight
PLAYER.MaxHealth			    = 100		-- Max health we can have
PLAYER.StartHealth			    = 100		-- How much health we start with
PLAYER.StartArmor			    = 0			-- How much armour we start with
PLAYER.DropWeaponOnDie  		= true		-- Do we drop our weapon when we die
PLAYER.TeammateNoCollide	    = true		-- Do we collide with teammates or run straight through them
PLAYER.AvoidPlayers			    = true		-- Automatically swerves around other players
PLAYER.UseVMHands			    = true		-- Uses viewmodel hands

-- Custom variables for the mod
PLAYER.Loyalty                  = 0
PLAYER.Disloyalty               = 0
PLAYER.Stamina                  = 20
PLAYER.BodyHeat                 = 37
PLAYER.Hunger                   = 0

function PLAYER:Loadout()

    self.Player:RemoveAllWeapons()
    self.Player:RemoveAllItems()
    self.Player:RemoveAllAmmo()
    self.Player:SetLoyalty(0)
    self.Player:SetDisloyalty(0)
    self.Player:GiveItem( "Citizen_Clothes" )
    self.Player:GiveItem( "ID_Card" )

end

function PLAYER:SetModel()

    local cl_playermodel = self.Player:GetInfo( "cl_playermodel" )
    local modelname = player_manager.TranslatePlayerModel( cl_playermodel )
    util.PrecacheModel( modelname )
    self.Player:SetModel( modelname )

end

-- Clientside only
function PLAYER:CalcView( view ) end		-- Setup the player's view
function PLAYER:CreateMove( cmd ) end		-- Creates the user command on the client
function PLAYER:ShouldDrawLocal() end		-- Return true if we should draw the local player

-- Shared
function PLAYER:StartMove( cmd, mv ) end	-- Copies from the user command to the move
function PLAYER:Move( mv ) end				-- Runs the move (can run multiple times for the same client)
function PLAYER:FinishMove( mv ) end		-- Copy the results of the move back to the Player

--
-- Name: PLAYER:ViewModelChanged
-- Desc: Called when the player changes their weapon to another one causing their viewmodel model to change
-- Arg1: Entity|viewmodel|The viewmodel that is changing
-- Arg2: string|old|The old model
-- Arg3: string|new|The new model
-- Ret1:
--
function PLAYER:ViewModelChanged( vm, old, new )
end

--
-- Name: PLAYER:PreDrawViewmodel
-- Desc: Called before the viewmodel is being drawn (clientside)
-- Arg1: Entity|viewmodel|The viewmodel
-- Arg2: Entity|weapon|The weapon
-- Ret1:
--
function PLAYER:PreDrawViewModel( vm, weapon )
end

--
-- Name: PLAYER:PostDrawViewModel
-- Desc: Called after the viewmodel has been drawn (clientside)
-- Arg1: Entity|viewmodel|The viewmodel
-- Arg2: Entity|weapon|The weapon
-- Ret1:
--
function PLAYER:PostDrawViewModel( vm, weapon )
end

--
-- Name: PLAYER:GetHandsModel
-- Desc: Called on player spawn to determine which hand model to use
-- Arg1:
-- Ret1: table|info|A table containing model, skin and body
--
function PLAYER:GetHandsModel()

    -- return { model = "models/weapons/c_arms_cstrike.mdl", skin = 1, body = "0100000" }

    local playermodel = player_manager.TranslateToPlayerModelName( self.Player:GetModel() )
    return player_manager.TranslatePlayerHands( playermodel )

end

player_manager.RegisterClass( "Citizen", PLAYER, "player_default" )
