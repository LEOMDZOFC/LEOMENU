local aimbotEnabled = false
local espEnabled = false
local superJumpEnabled = false
local godmodEnabled = false
local speedEnabled = false
local spamEnabled = false
local spamMessage = "LEO MENU CHAT SPAM 👿"
local defaultWalkSpeed = 16
local defaultJumpPower = 16
local espBoxes = {}




local function isPlayerAlive(player)
    return player and player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0
end


local function isBehindWall(target)
    if not target or not target.Character or not target.Character:FindFirstChild("Head") then return false end
    local origin = workspace.CurrentCamera.CFrame.Position
    local direction = (target.Character.Head.Position - origin).Unit
    local raycastParams = RaycastParams.new()
    raycastParams.FilterDescendantsInstances = {game.Players.LocalPlayer.Character}
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
    local raycastResult = workspace:Raycast(origin, direction * 1000, raycastParams)
    return raycastResult and raycastResult.Instance and not raycastResult.Instance:IsDescendantOf(target.Character)
end


local function getClosestPlayer()
    local closestPlayer, shortestDistance = nil, math.huge
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and isPlayerAlive(player) then
            local character = player.Character
            if character and character:FindFirstChild("Head") then
                local screenPoint = workspace.CurrentCamera:WorldToViewportPoint(character.Head.Position)
                local distance = (Vector2.new(screenPoint.X, screenPoint.Y) - Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)).Magnitude
                if distance < shortestDistance and not isBehindWall(player) then
                    closestPlayer, shortestDistance = player, distance
                end
            end
        end
    end
    return closestPlayer
end


local function aimAt(target)
    if target and target.Character and target.Character:FindFirstChild("Head") then
        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, target.Character.Head.Position)
    end
end


game:GetService("RunService").RenderStepped:Connect(function()
    if aimbotEnabled then
        local target = getClosestPlayer()
        if target then
            aimAt(target)
        end
    end
end)


local function createESP(player)
    if espBoxes[player] then return end
    local box = Instance.new("BoxHandleAdornment")
    box.Name = "ESPBox"
    box.Adornee = player.Character:FindFirstChild("HumanoidRootPart")
    box.AlwaysOnTop = true
    box.ZIndex = 1
    box.Size = Vector3.new(4, 6, 2)
    box.Transparency = 0.3
    box.Color3 = Color3.fromHSV(tick() % 5 / 5, 1, 1)
    box.Parent = player.Character.HumanoidRootPart
    espBoxes[player] = box
end


local function removeAllESP()
    for _, box in pairs(espBoxes) do
        if box then
            box:Destroy()
        end
    end
    espBoxes = {}
end

game:GetService("RunService").RenderStepped:Connect(function()
    if espEnabled then
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer and isPlayerAlive(player) then
                createESP(player)
            end
        end
    else
        removeAllESP()
    end
end)

local function enableSuperJump()
    local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
    if humanoid then
        humanoid.JumpPower = superJumpEnabled and 50 or defaultJumpPower
    end
end

local function enableGodMod()
    while godmodEnabled do
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.Health = math.huge
        end
        task.wait(0.1)
    end
end


local function enableSpeedHack()
    local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = speedEnabled and 50 or defaultWalkSpeed
    end
end


local function enableSpamChat()
    while spamEnabled do
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamMessage, "All")
        task.wait(0.5)
    end
end



local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local OpenButton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 300, 0, 400)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.Visible = false

OpenButton.Parent = ScreenGui
OpenButton.Size = UDim2.new(0, 120, 0, 40)
OpenButton.Position = UDim2.new(0, 20, 0, 20)
OpenButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenButton.Font = Enum.Font.SourceSansBold
OpenButton.Text = "LEO MENU"
OpenButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
    OpenButton.Text = MainFrame.Visible and "FECHAR MENU" or "LEO MENU"
end)

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(0, 260, 0, 40)
titleLabel.Position = UDim2.new(0, 20, 0, 0)
titleLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.Text = "LEO MENU FUSÃO"
titleLabel.TextSize = 20
titleLabel.TextStrokeTransparency = 0.8
titleLabel.Parent = MainFrame


local hue = 0
game:GetService("RunService").Heartbeat:Connect(function()
    hue = (hue + 0.002) % 1
    titleLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
end)


local buttonYOffset = 70


local function createButton(parent, text, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 260, 0, 40)
    button.Position = UDim2.new(0, 20, 0, buttonYOffset)
    button.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSans
    button.Text = text
    button.Parent = parent
    button.MouseButton1Click:Connect(function()
        callback(button)
    end)
    

    buttonYOffset = buttonYOffset + 50
    return button
end

createButton(MainFrame, "AIMBOT: OFF", function(button)
    aimbotEnabled = not aimbotEnabled
    button.Text = aimbotEnabled and "AIMBOT: ON" or "AIMBOT: OFF"
end)

createButton(MainFrame, "ESP: OFF", function(button)
    espEnabled = not espEnabled
    button.Text = espEnabled and "ESP: ON" or "ESP: OFF"
end)

createButton(MainFrame, "SUPER PULO: OFF", function(button)
    superJumpEnabled = not superJumpEnabled
    enableSuperJump()
    button.Text = superJumpEnabled and "SUPER PULO: ON" or "SUPER PULO: OFF"
end)

createButton(MainFrame, "GOD MOD: OFF", function(button)
    godmodEnabled = not godmEnabled
    if godmodnabled then
        spawn(enableGodmod)
    end
    button.Text = godmodEnabled and "GOD MOD: ON" or "GOD MOD: OFF"
end)

createButton(MainFrame, "SPEED HACK: OFF", function(button)
    speedEnabled = not speedEnabled
    enableSpeedHack()
    button.Text = speedEnabled and "SPEED HACK: ON" or "SPEED HACK: OFF"
end)

createButton(MainFrame, "SPAM CHAT: OFF", function(button)
    spamEnabled = not spamEnabled
    if spamEnabled then
    
        spawn(function()
            enableSpamChat()
        end)
    end
    button.Text = spamEnabled and "SPAM CHAT: ON" or "SPAM CHAT: OFF"
end)
