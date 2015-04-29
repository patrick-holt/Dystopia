-- This file is for server-side initialization

AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )

-- Executes when a player spawns.
function GM:PlayerSpawn( ply )

    -- Prints the player name when a player spawns
    print( "The player \"" .. ply:GetName() .. "\" has respawned." )

    -- Sets the newly spawned player's class to be a citizen
    player_manager.SetPlayerClass( ply, "player_citizen" )
    player_manager.OnPlayerSpawn( ply )

end