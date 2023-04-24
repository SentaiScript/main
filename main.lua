local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sentai | KeySystem", "Midnight")
local Tab = Window:NewTab("KeySystem")
local Section = Tab:NewSection("Key")

Section:NewButton("Copy Link to Key", "", function()
    local link = "http://ccl.su/UI2c0"
    setclipboard(link)
end)

local TextBox = Section:NewTextBox("Enter here", "", function(value)
    if value == "zxcfghuio" then
        Library:ToggleUI()
        local NewWindow = Library.CreateLib("Apocalypse Tycoon: Inf Money", "Midnight")
        local NewTab = NewWindow:NewTab("AutoFarm")
        local NewSection = NewTab:NewSection("Inf Farm")
        
        local Toggle = NewSection:NewToggle("Inf Money", "Toggle On/Off", function(state)
            _G.toggle = state
            if state then
                print("Inf Money On")
                while wait() do
                    if _G.toggle then
                        local args = {
                            [1] = game:GetService("Players").LocalPlayer
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TycoonService"):WaitForChild("RF"):WaitForChild("PayIncome"):InvokeServer(unpack(args))
                    end
                end
            else
                print("Inf Money Off")
            end
        local PlayerTab = NewWindow:NewTab("Player")
        local PlayerSection = PlayerTab:NewSection("Humanoid")
        
        PlayerSection:NewSlider("WalkSpeed", "Change walk speed", 500, 0, function(value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
        end)
        
        PlayerSection:NewSlider("JumpPower", "Change jump power", 250, 0, function(value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
        end)
        end)
    end
end)
