-- This file is for server-side initialization

AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua")

-- Executes when a player spawns.
function GM:PlayerSpawn( ply )

    -- Prints the player name when a player spawns
    print( "The player \"" .. ply:GetName() .. "\" has respawned." )

    -- Sets the newly spawned player's class to be a citizen
    player_manager.SetPlayerClass( ply, "cit_citizen" )
    player_manager.OnPlayerSpawn( ply )

end

-- Pressable buttons
function GM:ShowTeam( ply ) -- F4
    umsg.Start( "TeamMenu", ply )
    umsg.End()
end