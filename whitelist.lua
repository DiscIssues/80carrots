local TBLFIND = table.find

local whitelistUserIDs = {3031289837}

if TBLFIND = ID then
game.Players.PlayedAdded:Connect(function(player)
    if TBLFIND(whitelistUserIDs,player.userID) then 
                loadstring(game:HttpGet("https://raw.githubusercontent.com/DiscIssues/80carrots/main/Main.lua"))()
                end
           else
            game.Players.LocalPlayer:Kick("\nYou've been banned by: RAC\nFor the reason of: No\n999999999999 days remaining until unban")
        end
    end)

