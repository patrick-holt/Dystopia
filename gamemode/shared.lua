-- This file is for shared initialization

GM.Name = "Dystopia"
GM.Author = "Musk, Holt, GeneralIssues"
GM.Email = "N/A"
GM.Website = "N/A"

DeriveGamemode( "sandbox" )

AddCSLuaFile( "player_classes/class_citizen.lua" )
include( "player_classes/class_citizen.lua" )

team.SetUp(1, "Combines", Color(0,0,255), true ) -- Combines have the colour Blue
team.SetUp(2, "Citizens", Color(0,255,0), true ) -- Citizens have the colour Green
team.SetUp(3, "Rebels"  , Color(255,0,0), true ) -- Rebels have the colour Red


-- Executes when the server initializes and again when the client initializes
function GM:Initialize()
    print("welcome to this silly server og RP'ing. Remember, this is a muslim server.")
end