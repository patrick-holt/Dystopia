GM.Name = "Dystopia"
GM.Author = "Musk, Holt, GeneralIssues"
GM.Email = "N/A"
GM.Website = "N/A"

DeriveGamemode( "sandbox" )

AddCSLuaFile( "player_classes/player_citizen.lua" )
AddCSLuaFile( "player_manager.lua" )
include( "player_classes/player_citizen.lua" )

function GM:Initialize()
    print("welcome to this silly server og RP'ing. Remember, this is a muslim server.")
end
function GM:PlayerSpawn( PLAYER )

    print( "The player \"" .. PLAYER:GetName() .. "\" has respawned." )
    player_manager.SetPlayerClass( PLAYER, "player_citizen" )

end