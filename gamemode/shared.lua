GM.Name = "Dystopia"
GM.Author = "Musk, Holt, GeneralIssues"
GM.Email = "N/A"
GM.Website = "N/A"

DeriveGamemode( "sandbox" )

AddCSLuaFile( "player_classes/class_citizen.lua" )
include( "player_classes/class_citizen.lua" )

team.SetUp(1, "Combines", Color(220,110,110) )
team.SetUp(2, "Citizens", Color(10,10,110)   )
team.SetUp(3, "Rebels"  ,   Color(50,220,50) )



function GM:Initialize()
    print("welcome to this silly server og RP'ing. Remember, this is a muslim server.")
end