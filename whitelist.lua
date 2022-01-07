local TBLFIND = table.find

local whitelistUserIDs = {}

game.Players.PlayedAdded:Connect(function(player)
    if not table.find(whitelistUserIDs,player.UserId) then --If the UserID value is not in the table this returns nil. In Lua nil equals false.
        game.Players.LocalPlayer:Kick("\nYou've been banned by: RAC\nFor the reason of: No\n999999999999 days remaining until unban")
    end
end)

