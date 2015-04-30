--
-- Created by IntelliJ IDEA.
-- User: patrick holt
-- Date: 29-04-2015
-- Time: 21:32
-- To change this template use File | Settings | File Templates.
--

AddCSLuaFile()

function ChooseTeam()
    local base = vgui.Create( "DFrame" )
    local butnCitizen = vgui.Create( "DButton" )
    local butnRebellion = vgui.Create( "DButton" )
    local butnCombine = vgui.Create( "DButton" )

    local ScrScaW = 0.7 -- Scale for width
    local ScrScaH = 0.8 -- and height

    -- It is not necessary to touch these
    local ScrPosW = (1%ScrScaW)/2
    local ScrPosH = (1%ScrScaH)/2
    --

    -- local _img = vgui.Create( "DImageButton", base )

    base:SetPos( ScrW() * ScrPosW, ScrH() * ScrPosH )
    base:SetSize( ScrW() * ScrScaW, ScrH() * ScrScaH )
    base:SetVisible( true )
    base:SetTitle( "Window Title" )
    base:SetDraggable( false )
    base:ShowCloseButton( false )
    base:MakePopup()

    butnCitizen:SetParent( base )
    butnCitizen:SetText( "Citizen" )
    butnCitizen:SetPos( 0, 0 )
    butnCitizen:SetSize( ScrW() * ScrScaW/3, ScrH() * ScrScaH )
    butnCitizen.DoClick = function()
        chat.AddText( Color( 0, 120, 150), "[TEXT] ", Color( 255, 255, 255 ), "The Citizen button was pressed!" )
        base:Remove()
    end
    butnCitizen:SetImage( "img/test.png" )

    butnRebellion:SetParent( base )
    butnRebellion:SetText( "Rebellion" )
    butnRebellion:SetPos( ScrW() * ScrScaW/3, 0 )
    butnRebellion:SetSize( ScrW() * ScrScaW/3, ScrH() * ScrScaH )
    butnRebellion.DoClick = function()
        chat.AddText( Color( 0, 120, 150), "[TEXT] ", Color( 255, 255, 255 ), "The Rebellion button was pressed!")
        base:Remove()
    end

    butnCombine:SetParent( base )
    butnCombine:SetText( "Combine" )
    butnCombine:SetPos( ScrW() * ScrScaW/3 * 2, 0 )
    butnCombine:SetSize( ScrW() * ScrScaW/3, ScrH() * ScrScaH )
    butnCombine.DoClick = function()
        chat.AddText( Color( 0, 120, 150), "[TEXT] ", Color( 255, 255, 255 ), "The Combine button was pressed!")
        base:Remove()
    end

    --[[
    _img:SetParent( base )
    _img:SetPos( 0, 0 )
    _img:SetImage( "img/test.vtf" )
    _img:SizeToContents()
    _img.DoClick = function()
        base:Remove()
    end
    ]]--
end