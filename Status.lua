local library = {name = "Counter Blox",colorpicking = false,tabbuttons = {},tabs = {},options = {},flags = {},scrolling = false,notifyText = Drawing.new("Text"),playing = false,multiZindex = 100,toInvis = {},libColor = Color3.fromRGB(100,60,80),blacklisted = {Enum.KeyCode.W,Enum.KeyCode.A,Enum.KeyCode.S,Enum.KeyCode.D,Enum.UserInputType.MouseMovement}}
library.notifyText.Font = Gotham
library.notifyText.Size = 25
library.notifyText.Outline = true
library.notifyText.Color = Color3.new(124, 10, 2)
library.notifyText.Position = Vector2.new(10,5)

function library:notify(text)
    if playing then return end
    playing = true
    library.notifyText.Text = text
    library.notifyText.Transparency = 0
    library.notifyText.Visible = true
    for i = 0,1,0.1 do wait()
        library.notifyText.Transparency = i
    end
    spawn(function()
        wait(2)
        for i = 1,0,-0.1 do wait()
            library.notifyText.Transparency = i
        end
        playing = false
        library.notifyText.Visible = false
    end)
end
library:notify("Status: Working")
