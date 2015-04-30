-- This file is for shared initialization

GM.Name = "Dystopia"
GM.Author = "Musk, Holt, GeneralIssues"
GM.Email = "N/A"
GM.Website = "N/A"

DeriveGamemode( "sandbox" )

-- Teams and Classes --
-- Adding every class file --
AddCSLuaFile( "player_classes/cit_citizen.lua" )
include( "player_classes/cit_citizen.lua" )

AddCSLuaFile( "player_classes/cit_chef.lua" )
include( "player_classes/cit_chef.lua" )

AddCSLuaFile( "player_classes/cit_merchant.lua" )
include( "player_classes/cit_merchant.lua" )

AddCSLuaFile( "player_classes/com_admin.lua" )
include( "player_classes/com_admin.lua" )

AddCSLuaFile( "player_classes/com_civil.lua" )
include( "player_classes/com_civil.lua" )

AddCSLuaFile( "player_classes/com_medic.lua" )
include( "player_classes/com_medic.lua" )

AddCSLuaFile( "player_classes/com_officer.lua" )
include( "player_classes/com_officer.lua" )

AddCSLuaFile( "player_classes/com_overseer.lua" )
include( "player_classes/com_overseer.lua" )

AddCSLuaFile( "player_classes/reb_black.lua" )
include( "player_classes/reb_black.lua" )

AddCSLuaFile( "player_classes/reb_black.lua" )
include( "player_classes/reb_rebel.lua" )

-- Setting up teams --
team.SetUp(1, "Combines", Color(0,0,255), true ) -- Combines have the colour Blue
team.SetUp(2, "Citizens", Color(0,255,0), true ) -- Citizens have the colour Green
team.SetUp(3, "Rebels"  , Color(255,0,0), true ) -- Rebels have the colour Red
-- -- -- -- -- -- -- --

-- Menus
AddCSLuaFile( "menus/cl_chooseteam.lua" )
include( "menus/cl_chooseteam.lua" )

-- Executes when the server initializes and again when the client initializes
function GM:Initialize()
    print("welcome to this silly server of RP'ing. Remember, this is a muslim server.")
end
