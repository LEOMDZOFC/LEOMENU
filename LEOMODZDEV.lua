-- ts file was generated at discord.gg/25ms


local vu1 = Instance.new("ScreenGui")
local vu2 = Instance.new("Frame")
local v3 = Instance.new("UICorner")
local v4 = Instance.new("Frame")
local v5 = Instance.new("UICorner")
local v6 = Instance.new("TextButton")
local v7 = Instance.new("TextButton")
local vu8 = Instance.new("Frame")
local v9 = Instance.new("UICorner")
local v10 = Instance.new("TextLabel")
local v11 = Instance.new("TextButton")
local v12 = Instance.new("UICorner")
local v13 = Instance.new("ImageLabel")
local v14 = Instance.new("TextButton")
local v15 = Instance.new("UICorner")
local v16 = Instance.new("ImageLabel")
local v17 = Instance.new("Frame")
local v18 = Instance.new("UICorner")
local v19 = Instance.new("TextLabel")
local v20 = Instance.new("TextButton")
local v21 = Instance.new("UICorner")
Instance.new("TextButton")
Instance.new("UICorner")
local v22 = Instance.new("TextLabel")
vu1.Name = "ScriptCentral Hub"
vu1.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
vu1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
vu1.ResetOnSpawn = false
local function vu23()
    return game:GetService("UserInputService").TouchEnabled
end
local v24 = vu23() and "Mobile" or "PC"
local vu25 = ({
    PC = {
        width = 500,
        height = 500,
        titleSize = 34,
        textSize = 24,
        flagSize = 0.25
    },
    Mobile = {
        width = 320,
        height = 250,
        titleSize = 22,
        textSize = 14,
        flagSize = 0.25
    }
})[v24]
vu2.Name = "MainFrame"
vu2.Parent = vu1
vu2.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
vu2.BorderSizePixel = 0
vu2.Position = UDim2.new(0.5, - vu25.width / 2, 0.5, - vu25.height / 2)
vu2.Size = UDim2.new(0, vu25.width, 0, vu25.height)
vu2.Draggable = true
vu2.Active = true
vu2.Selectable = true
v3.CornerRadius = UDim.new(0, 8)
v3.Parent = vu2
v4.Name = "TabBar"
v4.Parent = vu2
v4.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
v4.BorderSizePixel = 0
v4.Size = UDim2.new(1, 0, 0, 32)
v5.CornerRadius = UDim.new(0, 8)
v5.Parent = v4
v6.Name = "CloseButton"
v6.Parent = v4
v6.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
v6.BackgroundTransparency = 0.8
v6.BorderSizePixel = 0
v6.Position = UDim2.new(0.92, 0, 0.15, 0)
v6.Size = UDim2.new(0, 22, 0, 22)
v6.Font = Enum.Font.GothamBold
v6.Text = "\195\151"
v6.TextColor3 = Color3.fromRGB(255, 255, 255)
v6.TextSize = 18
v6.MouseButton1Down:Connect(function()
    vu1:Destroy()
end)
v7.Name = "MinimizeButton"
v7.Parent = v4
v7.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
v7.BackgroundTransparency = 0.8
v7.BorderSizePixel = 0
v7.Position = UDim2.new(0.85, 0, 0.15, 0)
v7.Size = UDim2.new(0, 22, 0, 22)
v7.Font = Enum.Font.GothamBold
v7.Text = "-"
v7.TextColor3 = Color3.fromRGB(255, 255, 255)
v7.TextSize = 18
local vu26 = false
v7.MouseButton1Down:Connect(function()
    vu26 = not vu26
    vu8.Visible = not vu26
    vu2.Size = vu26 and UDim2.new(0, vu25.width, 0, 32) or UDim2.new(0, vu25.width, 0, vu25.height)
end)
vu8.Name = "ContentFrame"
vu8.Parent = vu2
vu8.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
vu8.BorderSizePixel = 0
vu8.Position = UDim2.new(0, 0, 0.114, 0)
vu8.Size = UDim2.new(1, 0, 0.886, 0)
v9.CornerRadius = UDim.new(0, 8)
v9.Parent = vu8
v10.Name = "Title"
v10.Parent = vu8
v10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v10.BackgroundTransparency = 1
v10.Position = UDim2.new(0.1, 0, 0.02, 0)
v10.Size = UDim2.new(0.8, 0, 0.08, 0)
v10.Font = Enum.Font.GothamMedium
v10.Text = "Universal Languages"
v10.TextColor3 = Color3.fromRGB(220, 220, 220)
v10.TextSize = vu25.titleSize
v10.TextWrapped = true
v11.Name = "PortugueseButton"
v11.Parent = vu8
v11.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
v11.BorderSizePixel = 0
v11.Position = UDim2.new(0.1, 0, 0.15, 0)
v11.Size = UDim2.new(0.8, 0, 0.12, 0)
v11.Font = Enum.Font.Gotham
v11.Text = v24 == "PC" and "Executar Portugu\195\170s" or "Portugu\195\170s"
v11.TextColor3 = Color3.fromRGB(240, 240, 240)
v11.TextSize = vu25.textSize
v11.TextWrapped = true
v11.MouseButton1Down:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LEOMDZOFC/LEOMENU/refs/heads/main/README.md", true))()
end)
v12.CornerRadius = UDim.new(0, 6)
v12.Parent = v11
v13.Name = "PortugueseFlag"
v13.Parent = v11
v13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v13.BackgroundTransparency = 1
v13.Position = UDim2.new(0.02, 0, 0.15, 0)
v13.Size = UDim2.new(vu25.flagSize, 0, 0.7, 0)
v13.Image = "rbxassetid://74283357140722"
v13.ScaleType = Enum.ScaleType.Fit
v14.Name = "EnglishButton"
v14.Parent = vu8
v14.BackgroundColor3 = Color3.fromRGB(50, 50, 55)
v14.BorderSizePixel = 0
v14.Position = UDim2.new(0.1, 0, 0.32, 0)
v14.Size = UDim2.new(0.8, 0, 0.12, 0)
v14.Font = Enum.Font.Gotham
v14.Text = v24 == "PC" and "Execute English" or "English"
v14.TextColor3 = Color3.fromRGB(240, 240, 240)
v14.TextSize = vu25.textSize
v14.TextWrapped = true
v14.MouseButton1Down:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LEOMDZOFC/LEOMENU/refs/heads/main/README.md", true))()
end)
v15.CornerRadius = UDim.new(0, 6)
v15.Parent = v14
v16.Name = "EnglishFlag"
v16.Parent = v14
v16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v16.BackgroundTransparency = 1
v16.Position = UDim2.new(0.02, 0, 0.15, 0)
v16.Size = UDim2.new(vu25.flagSize, 0, 0.7, 0)
v16.Image = "rbxassetid://85306941087226"
v16.ScaleType = Enum.ScaleType.Fit
v17.Name = "KeySection"
v17.Parent = vu8
v17.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
v17.BorderSizePixel = 0
v17.Position = UDim2.new(0.05, 0, 0.5, 0)
v17.Size = UDim2.new(0.9, 0, 0.35, 0)
v18.CornerRadius = UDim.new(0, 6)
v18.Parent = v17
v19.Name = "GetKeyLabel"
v19.Parent = v17
v19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v19.BackgroundTransparency = 1
v19.Position = UDim2.new(0.1, 0, 0.05, 0)
v19.Size = UDim2.new(0.8, 0, 0.15, 0)
v19.Font = Enum.Font.GothamMedium
v19.Text = "Discord"
v19.TextColor3 = Color3.fromRGB(200, 200, 200)
v19.TextSize = vu25.textSize
v19.TextWrapped = true
v20.Name = "DiscordButton"
v20.Parent = v17
v20.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
v20.BorderSizePixel = 0
v20.Position = UDim2.new(0.1, 0, 0.25, 0)
v20.Size = UDim2.new(0.8, 0, 0.25, 0)
v20.Font = Enum.Font.Gotham
v20.Text = "TELEGRAM"
v20.TextColor3 = Color3.fromRGB(255, 255, 255)
v20.TextSize = vu25.textSize
v20.TextWrapped = true
v20.MouseButton1Down:Connect(function()
    setclipboard("https://t.me/LEOMODZ43")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "COPIADO!",
        Text = "Telegram link copiado",
        Duration = 3
    })
end)
v21.CornerRadius = UDim.new(0, 6)
v21.Parent = v20
v22.Name = "Footer"
v22.Parent = vu8
v22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
v22.BackgroundTransparency = 1
v22.Position = UDim2.new(0.1, 0, 0.88, 0)
v22.Size = UDim2.new(0.8, 0, 0.05, 0)
v22.Font = Enum.Font.Gotham
v22.Text = "TELAGRAM: LEOMODZ3"
v22.TextColor3 = Color3.fromRGB(180, 180, 180)
v22.TextSize = vu25.textSize - 2
v22.TextWrapped = true;
(function()
    local vu27 = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        vu27:CaptureController()
        vu27:ClickButton2(Vector2.new())
    end)
    if vu23() then
        spawn(function()
            while task.wait(30) do
                pcall(function()
                    local v28 = math.random(50, 100)
                    local v29 = math.random(50, 100)
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(v28, v29, 0, true, game, 1)
                    task.wait(0.1)
                    game:GetService("VirtualInputManager"):SendMouseButtonEvent(v28, v29, 0, false, game, 1)
                end)
            end
        end)
    end
end)()
print("100%")
