AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )

function GM:PlayerSpawn( ply )

    print( "The player \"" .. ply:GetName() .. "\" has respawned." )
    player_manager.SetPlayerClass( ply, "player_citizen" )
    player_manager.OnPlayerSpawn( ply )

end