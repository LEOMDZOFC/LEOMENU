-- ts file was generated at discord.gg/25ms


local v1 = game:GetService("Players")
game:GetService("TweenService")
game:GetService("CoreGui")
game:GetService("StarterGui")
local _ = v1.LocalPlayer
local v2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))():MakeWindow({
    Title = "LEO MENU HUB - BROOKHAVEN",
    SubTitle = "BY @LEO MODZ ",
    SaveFolder = "No"
})
v2:AddMinimizeButton({
    Button = {
        Image = "rbxassetid://89018617324929",
        BackgroundTransparency = 0
    }
})
local v3 = v2:MakeTab({
    "Fun",
    "fun"
})
local v4 = v2:MakeTab({
    "Avatar",
    "shirt"
})
local v5 = v2:MakeTab({
    "House",
    "Home"
})
local v6 = v2:MakeTab({
    "Car",
    "Car"
})
local v7 = v2:MakeTab({
    "RGB",
    "brush"
})
local vu8 = v2:MakeTab({
    "Music All",
    "radio"
})
local vu9 = v2:MakeTab({
    "Music",
    "music"
})
local v10 = v2:MakeTab({
    "Troll",
    "skull"
})
v2:MakeTab({
    "Lag Server",
    "bomb"
})
local v11 = v2:MakeTab({
    "Scripts",
    "code"
})
local v12 = v2:MakeTab({
    "Teleportes",
    "map-pin"
})
v3:AddParagraph({
    "Executor",
    ((function()
        if identifyexecutor then
            return identifyexecutor()
        else
            return syn and "Synapse X" or (KRNL_LOADED and "KRNL" or (is_sirhurt_closure and "SirHurt" or (pebc_execute and "ProtoSmasher" or (not getexecutorname and "Unknown Executor" or getexecutorname()))))
        end
    end)())
})
v3:AddSection({
    "Hub Version: 1"
})
v3:AddParagraph({
    "Credits",
    "?"
})
v3:AddSection({
    "Player Character"
})
local vu13 = game:GetService("Players")
local vu14 = vu13.LocalPlayer
local vu15 = nil
local vu16 = false
local function vu27(p17)
    local v18 = vu14.Character or vu14.CharacterAdded:Wait()
    local v19 = v18:FindFirstChildOfClass("Humanoid")
    if not (p17.Character and p17.Character:FindFirstChild("Head")) then
        warn("Target Doesn\'t Have Head Or Character.")
        return false
    end
    local v20 = p17.Character.Head
    local v21 = v18:FindFirstChild("HumanoidRootPart")
    if not v21 then
        warn("Your Character Has No Humanoid.")
        return false
    end
    v21.CFrame = v20.CFrame * CFrame.new(0, 2.2, 0)
    local v22, v23, v24 = pairs(v21:GetChildren())
    while true do
        local v25
        v24, v25 = v22(v23, v24)
        if v24 == nil then
            break
        end
        if v25:IsA("WeldConstraint") then
            v25:Destroy()
        end
    end
    local v26 = Instance.new("WeldConstraint")
    v26.Part0 = v21
    v26.Part1 = v20
    v26.Parent = v21
    if v19 then
        v19.Sit = true
    end
    print("Headsit activated on " .. p17.Name)
    return true
end
local function vu35()
    local v28 = vu14.Character or vu14.CharacterAdded:Wait()
    local v29 = v28:FindFirstChildOfClass("Humanoid")
    local v30 = v28:FindFirstChild("HumanoidRootPart")
    if v30 then
        local v31, v32, v33 = pairs(v30:GetChildren())
        while true do
            local v34
            v33, v34 = v31(v32, v33)
            if v33 == nil then
                break
            end
            if v34:IsA("WeldConstraint") then
                v34:Destroy()
            end
        end
    end
    if v29 then
        v29.Sit = false
    end
    print("Headsit deactivated")
end
local function vu43(p36)
    local v37 = p36:lower()
    local v38 = vu13
    local v39, v40, v41 = pairs(v38:GetPlayers())
    while true do
        local v42
        v41, v42 = v39(v40, v41)
        if v41 == nil then
            break
        end
        if v42 ~= vu14 and v42.Name:lower():sub(1, # v37) == v37 then
            return v42
        end
    end
    return nil
end
local function vu49(p44)
    local v45 = game:GetService("StarterGui")
    local v46 = Enum.ThumbnailType.HeadShot
    local v47 = Enum.ThumbnailSize.Size100x100
    local v48, _ = vu13:GetUserThumbnailAsync(p44.UserId, v46, v47)
    v45:SetCore("SendNotification", {
        Title = "Select Player",
        Text = p44.Name .. " Has Been Selected.",
        Icon = v48,
        Duration = 5
    })
end
v3:AddTextBox({
    Name = "Name Player",
    Description = "Enter Player Name",
    PlaceholderText = "String",
    Callback = function(p50)
        local v51 = vu43(p50)
        if v51 then
            vu15 = v51.Name
            vu49(v51)
        else
            warn("Player Not Found.")
        end
    end
})
v3:AddButton({
    "",
    function()
        if vu15 then
            if vu16 then
                vu35()
                vu16 = false
            else
                local v52 = vu13:FindFirstChild(vu15)
                if v52 and vu27(v52) then
                    vu16 = true
                end
            end
        end
    end
})
v3:AddSlider({
    Name = "Speed Player",
    Increase = 1,
    MinValue = 16,
    MaxValue = 888,
    Default = 16,
    Callback = function(p53)
        local v54 = game.Players.LocalPlayer
        local v55 = (v54.Character or v54.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
        if v55 then
            v55.WalkSpeed = p53
        end
    end
})
v3:AddSlider({
    Name = "Jumppower",
    Increase = 1,
    MinValue = 50,
    MaxValue = 500,
    Default = 50,
    Callback = function(p56)
        local v57 = game.Players.LocalPlayer
        local v58 = (v57.Character or v57.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
        if v58 then
            v58.JumpPower = p56
        end
    end
})
v3:AddSlider({
    Name = "Gravity",
    Increase = 1,
    MinValue = 0,
    MaxValue = 10000,
    Default = 196.2,
    Callback = function(p59)
        game.Workspace.Gravity = p59
    end
})
local vu60 = false
game:GetService("UserInputService").JumpRequest:Connect(function()
    if vu60 then
        local v61 = game.Players.LocalPlayer.Character
        if v61 and v61:FindFirstChild("Humanoid") then
            v61.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)
v3:AddButton({
    Name = "Reset Speed/Gravity/Jumppower.\226\156\133",
    Callback = function()
        local v62 = game.Players.LocalPlayer
        local v63 = (v62.Character or v62.CharacterAdded:Wait()):FindFirstChildOfClass("Humanoid")
        if v63 then
            v63.WalkSpeed = 16
            v63.JumpPower = 50
        end
        game.Workspace.Gravity = 196.2
        vu60 = false
    end
})
v3:AddToggle({
    Name = "Infinite Jump",
    Default = false,
    Callback = function(p64)
        vu60 = p64
    end
})
local vu65 = {
    Enabled = false,
    Connections = {},
    SoccerBalls = {}
}
local v66 = game:GetService("Players")
local vu67 = game:GetService("RunService")
local vu68 = game:GetService("Workspace")
local vu69 = v66.LocalPlayer
local function vu75(p70)
    if p70 then
        local v71, v72, v73 = ipairs(p70:GetDescendants())
        while true do
            local v74
            v73, v74 = v71(v72, v73)
            if v73 == nil then
                break
            end
            if v74:IsA("BasePart") then
                v74.CanCollide = not vu65.Enabled
                v74.Anchored = false
            end
        end
    end
end
local function vu80(p76)
    if p76.Position.Y < - 500 then
        local v77 = CFrame.new(0, 100, 0)
        local v78 = RaycastParams.new()
        v78.FilterDescendantsInstances = {
            vu69.Character
        }
        local v79 = vu68:Raycast(p76.Position, Vector3.new(0, 500, 0), v78)
        if v79 then
            v77 = CFrame.new(v79.Position + Vector3.new(0, 5, 0)) or v77
        end
        p76.CFrame = v77
    end
end
local function vu87()
    local v81 = vu68:FindFirstChild("Com", true)
    if v81 then
        v81 = vu68.Com:FindFirstChild("001_SoccerBalls")
    end
    if v81 then
        local v82, v83, v84 = ipairs(v81:GetChildren())
        while true do
            local vu85
            v84, vu85 = v82(v83, v84)
            if v84 == nil then
                break
            end
            if vu85.Name:match("^Soccer") then
                pcall(function()
                    vu85.CanCollide = not vu65.Enabled
                    vu85.Anchored = vu65.Enabled
                end)
                vu65.SoccerBalls[vu85] = true
            end
        end
        if not vu65.Connections.BallAdded then
            vu65.Connections.BallAdded = v81.ChildAdded:Connect(function(pu86)
                if pu86.Name:match("^Soccer") then
                    task.wait(0.3)
                    pcall(function()
                        pu86.CanCollide = not vu65.Enabled
                        pu86.Anchored = vu65.Enabled
                    end)
                end
            end)
        end
    end
end
local function vu90()
    vu65.Connections.Heartbeat = vu67.Heartbeat:Connect(function()
        local v88 = vu69.Character
        if v88 then
            vu75(v88)
            local v89 = v88:FindFirstChild("HumanoidRootPart")
            if v89 then
                vu80(v89)
            end
        end
        if tick() % 2 < 0.1 then
            vu87()
        end
    end)
end
v3:AddToggle({
    Name = "Ultimate Noclip",
    Description = "Noclip + Ball Control",
    Default = false
}):Callback(function(p91)
    vu65.Enabled = p91
    if p91 then
        vu90()
        vu87()
        vu65.Connections.CharAdded = vu69.CharacterAdded:Connect(function()
            task.wait(0.5)
            vu75(vu69.Character)
        end)
    else
        local v92, v93, v94 = pairs(vu65.Connections)
        while true do
            local v95
            v94, v95 = v92(v93, v94)
            if v94 == nil then
                break
            end
            v95:Disconnect()
        end
        if vu69.Character then
            vu75(vu69.Character)
        end
        local v96, v97, v98 = pairs(vu65.SoccerBalls)
        while true do
            local vu99 = v96(v97, v98)
            if vu99 == nil then
                break
            end
            v98 = vu99
            if vu99.Parent then
                pcall(function()
                    vu99.CanCollide = true
                    vu99.Anchored = false
                end)
            end
        end
    end
end)
local vu100 = nil
local vu101 = false
v3:AddToggle({
    Name = "Anti-Sit",
    Description = "Buggy",
    Default = false,
    Callback = function(p102)
        vu101 = p102
        local v103 = game:GetService("Players").LocalPlayer
        if p102 then
            local function vu107(p104)
                local vu105 = p104:FindFirstChild("Humanoid")
                if vu105 then
                    vu105.Sit = false
                    vu105:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                    if vu100 then
                        vu100:Disconnect()
                    end
                    vu100 = vu105.Seated:Connect(function(p106)
                        if p106 then
                            vu105.Sit = false
                            vu105:ChangeState(Enum.HumanoidStateType.GettingUp)
                        end
                    end)
                end
            end
            if v103.Character then
                vu107(v103.Character)
            end
            local vu108 = nil
            vu108 = v103.CharacterAdded:Connect(function(p109)
                if vu101 then
                    if p109:WaitForChild("Humanoid", 5) then
                        vu107(p109)
                    end
                else
                    vu108:Disconnect()
                end
            end)
        else
            if vu100 then
                vu100:Disconnect()
                vu100 = nil
            end
            local v110 = v103.Character and v103.Character:FindFirstChild("Humanoid")
            if v110 then
                v110:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            end
        end
    end
})
local vu111 = game:GetService("Players")
local vu112 = game:GetService("RunService")
local vu113 = {}
local vu114 = {}
local vu115 = false
local vu116 = "RGB Suave"
v3:AddButton({
    Name = "Active Fly GUI",
    Description = "fly universal",
    Callback = function()
        local v117, _ = pcall(function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fly-gui-v3-30439"))()
        end)
        game.StarterGui:SetCore("SendNotification", {
            Title = v117 and "Sucess" or "Error",
            Text = v117 and "Fly GUI loaded." or "Fly GUI Failed To Load.",
            Duration = 5
        })
    end
})
v3:AddSection({
    "ESP"
})
v3:AddDropdown({
    Name = "ESP color",
    Default = "RGB ",
    Options = {
        "RGB",
        "Branco",
        "Preto",
        "Vermelho",
        "Verde",
        "Azul",
        "Amarelo",
        "Rosa",
        "Roxo"
    },
    Callback = function(p118)
        vu116 = p118
    end
})
local function vu120()
    if vu116 ~= "RGB" then
        if vu116 ~= "Preto" then
            if vu116 ~= "Branco" then
                if vu116 ~= "Vermelho" then
                    if vu116 ~= "Verde" then
                        if vu116 ~= "Azul" then
                            if vu116 ~= "Amarelo" then
                                if vu116 ~= "Rosa" then
                                    if vu116 ~= "Roxo" then
                                        return Color3.new(1, 1, 1)
                                    else
                                        return Color3.fromRGB(128, 0, 128)
                                    end
                                else
                                    return Color3.fromRGB(255, 105, 180)
                                end
                            else
                                return Color3.fromRGB(255, 255, 0)
                            end
                        else
                            return Color3.fromRGB(0, 170, 255)
                        end
                    else
                        return Color3.fromRGB(0, 255, 0)
                    end
                else
                    return Color3.fromRGB(255, 0, 0)
                end
            else
                return Color3.fromRGB(255, 255, 255)
            end
        else
            return Color3.fromRGB(0, 0, 0)
        end
    else
        local v119 = tick() % 5 / 5
        return Color3.fromHSV(v119, 1, 1)
    end
end
local function vu126(p121)
    if p121 ~= vu111.LocalPlayer then
        if vu115 then
            local v122 = p121.Character
            local v123 = v122 and v122:FindFirstChild("Head")
            if v123 then
                if vu113[p121] then
                    vu113[p121]:Destroy()
                end
                local v124 = Instance.new("BillboardGui")
                v124.Name = "ESP_Billboard"
                v124.Parent = v123
                v124.Adornee = v123
                v124.Size = UDim2.new(0, 200, 0, 50)
                v124.StudsOffset = Vector3.new(0, 3, 0)
                v124.AlwaysOnTop = true
                local v125 = Instance.new("TextLabel")
                v125.Name = "TextLabel"
                v125.Parent = v124
                v125.Size = UDim2.new(1, 0, 1, 0)
                v125.BackgroundTransparency = 1
                v125.TextStrokeTransparency = 0.5
                v125.Font = Enum.Font.SourceSansBold
                v125.TextSize = 14
                v125.Text = p121.Name .. " | " .. p121.AccountAge .. " dias"
                v125.TextColor3 = vu120()
                vu113[p121] = v124
            end
        end
    else
        return
    end
end
local function vu128(p127)
    if vu113[p127] then
        vu113[p127]:Destroy()
        vu113[p127] = nil
    end
end
v3:AddToggle({
    Name = "ESP Activate",
    Description = "Mostra nome e idade da conta dos jogadores.",
    Default = false
}):Callback(function(p129)
    vu115 = p129
    if vu115 then
        local v130 = vu111
        local v131, v132, v133 = pairs(v130:GetPlayers())
        while true do
            local v134
            v133, v134 = v131(v132, v133)
            if v133 == nil then
                break
            end
            vu126(v134)
        end
        local v146 = vu112.Heartbeat:Connect(function()
            local v135 = vu111
            local v136, v137, v138 = pairs(v135:GetPlayers())
            while true do
                local v139
                v138, v139 = v136(v137, v138)
                if v138 == nil then
                    break
                end
                vu126(v139)
            end
            if vu116 == "RGB" then
                local v140 = vu111
                local v141, v142, v143 = pairs(v140:GetPlayers())
                while true do
                    local v144
                    v143, v144 = v141(v142, v143)
                    if v143 == nil then
                        break
                    end
                    local v145 = vu113[v144]
                    if v145 and v145:FindFirstChild("TextLabel") then
                        v145.TextLabel.TextColor3 = vu120()
                    end
                end
            end
        end)
        table.insert(vu114, v146)
        local v149 = vu111.PlayerAdded:Connect(function(pu147)
            vu126(pu147)
            local v148 = pu147.CharacterAdded:Connect(function()
                vu126(pu147)
            end)
            table.insert(vu114, v148)
        end)
        table.insert(vu114, v149)
        local v151 = vu111.PlayerRemoving:Connect(function(p150)
            vu128(p150)
        end)
        table.insert(vu114, v151)
    else
        local v152 = vu111
        local v153, v154, v155 = pairs(v152:GetPlayers())
        while true do
            local v156
            v155, v156 = v153(v154, v155)
            if v155 == nil then
                break
            end
            vu128(v156)
        end
        local v157, v158, v159 = pairs(vu114)
        while true do
            local v160
            v159, v160 = v157(v158, v159)
            if v159 == nil then
                break
            end
            v160:Disconnect()
        end
        vu114 = {}
        vu113 = {}
    end
end)
v4:AddSection({
    "Copy Avatar"
})
local vu161 = game:GetService("Players")
local vu162 = vu161.LocalPlayer
local vu163 = game:GetService("ReplicatedStorage"):WaitForChild("Remotes")
local vu164 = nil
local vu165 = nil
local function vu172()
    local v166 = vu161
    local v167, v168, v169 = ipairs(v166:GetPlayers())
    local v170 = {}
    while true do
        local v171
        v169, v171 = v167(v168, v169)
        if v169 == nil then
            break
        end
        if v171.Name ~= vu162.Name then
            table.insert(v170, v171.Name)
        end
    end
    return v170
end
local vu174 = v4:AddDropdown({
    Name = "Players List",
    Description = "",
    Options = vu172(),
    Default = "",
    Flag = "player list",
    Callback = function(p173)
        vu164 = p173
        vu165 = p173
    end
})
local function vu175()
    vu174:Set(vu172())
end
vu175()
v4:AddButton({
    "Refresh List",
    function()
        vu175()
    end
})
vu161.PlayerAdded:Connect(vu175)
vu161.PlayerRemoving:Connect(vu175)
v4:AddButton({
    Name = "Copy Avatar",
    Callback = function()
        if vu165 then
            local v176 = vu161.LocalPlayer.Character
            local v177 = vu161:FindFirstChild(vu165)
            if v177 and v177.Character then
                if v176 then
                    v176 = v176:FindFirstChildOfClass("Humanoid")
                end
                local v178 = v177.Character:FindFirstChildOfClass("Humanoid")
                if v176 and v178 then
                    local v179 = v176:GetAppliedDescription()
                    local v180, v181, v182 = ipairs(v179:GetAccessories(true))
                    while true do
                        local v183
                        v182, v183 = v180(v181, v182)
                        if v182 == nil then
                            break
                        end
                        if v183.AssetId and tonumber(v183.AssetId) then
                            vu163.Wear:InvokeServer(tonumber(v183.AssetId))
                            task.wait(0.2)
                        end
                    end
                    if tonumber(v179.Shirt) then
                        vu163.Wear:InvokeServer(tonumber(v179.Shirt))
                        task.wait(0.2)
                    end
                    if tonumber(v179.Pants) then
                        vu163.Wear:InvokeServer(tonumber(v179.Pants))
                        task.wait(0.2)
                    end
                    if tonumber(v179.Face) then
                        vu163.Wear:InvokeServer(tonumber(v179.Face))
                        task.wait(0.2)
                    end
                    local v184 = v178:GetAppliedDescription()
                    local v185 = {
                        {
                            v184.Torso,
                            v184.RightArm,
                            v184.LeftArm,
                            v184.RightLeg,
                            v184.LeftLeg,
                            v184.Head
                        }
                    }
                    vu163.ChangeCharacterBody:InvokeServer(unpack(v185))
                    task.wait(0.5)
                    if tonumber(v184.Shirt) then
                        vu163.Wear:InvokeServer(tonumber(v184.Shirt))
                        task.wait(0.3)
                    end
                    if tonumber(v184.Pants) then
                        vu163.Wear:InvokeServer(tonumber(v184.Pants))
                        task.wait(0.3)
                    end
                    if tonumber(v184.Face) then
                        vu163.Wear:InvokeServer(tonumber(v184.Face))
                        task.wait(0.3)
                    end
                    local v186, v187, v188 = ipairs(v184:GetAccessories(true))
                    while true do
                        local v189
                        v188, v189 = v186(v187, v188)
                        if v188 == nil then
                            break
                        end
                        if v189.AssetId and tonumber(v189.AssetId) then
                            vu163.Wear:InvokeServer(tonumber(v189.AssetId))
                            task.wait(0.3)
                        end
                    end
                    local v190 = v177.Character:FindFirstChild("Body Colors")
                    if v190 then
                        vu163.ChangeBodyColor:FireServer(tostring(v190.HeadColor))
                        task.wait(0.3)
                    end
                    if tonumber(v184.IdleAnimation) then
                        vu163.Wear:InvokeServer(tonumber(v184.IdleAnimation))
                        task.wait(0.3)
                    end
                    local v191 = v177:FindFirstChild("PlayersBag")
                    if v191 then
                        if v191:FindFirstChild("RPName") and v191.RPName.Value ~= "" then
                            vu163.RPNameText:FireServer("RolePlayName", v191.RPName.Value)
                            task.wait(0.3)
                        end
                        if v191:FindFirstChild("RPBio") and v191.RPBio.Value ~= "" then
                            vu163.RPNameText:FireServer("RolePlayBio", v191.RPBio.Value)
                            task.wait(0.3)
                        end
                        if v191:FindFirstChild("RPNameColor") then
                            vu163.RPNameColor:FireServer("PickingRPNameColor", v191.RPNameColor.Value)
                            task.wait(0.3)
                        end
                        if v191:FindFirstChild("RPBioColor") then
                            vu163.RPNameColor:FireServer("PickingRPBioColor", v191.RPBioColor.Value)
                            task.wait(0.3)
                        end
                    end
                end
            end
        end
    end
})
v4:AddSection({
    "Roupas 3D"
})
local vu207 = {
    ReplicatedStorage = game:GetService("ReplicatedStorage"),
    MostrarNotificacao = function(_, pu192)
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Information",
                Text = pu192,
                Duration = 5
            })
        end)
    end,
    Avatares = {
        {
            Nome = "Gato de Manga",
            ID = 124948425515124
        },
        {
            Nome = "Tung Saur",
            ID = 117098257036480
        },
        {
            Nome = "Tralaleiro",
            ID = 99459753608381
        },
        {
            Nome = "Monstro S.A",
            ID = 123609977175226
        },
        {
            Nome = "Trenzinho",
            ID = 80468697076178
        },
        {
            Nome = "Dino",
            ID = 11941741105
        },
        {
            Nome = "Pou idoso",
            ID = 15742966010
        },
        {
            Nome = "Coco/boxt@",
            ID = 77013984520332
        },
        {
            Nome = "Coelho",
            ID = 71797333686800
        },
        {
            Nome = "Hipop\195\179tamo",
            ID = 73215892129281
        },
        {
            Nome = "Ratatui",
            ID = 108557570415453
        },
        {
            Nome = "Galinha",
            ID = 71251793812515
        },
        {
            Nome = "Pepa pig",
            ID = 92979204778377
        },
        {
            Nome = "pinguin",
            ID = 94944293759578
        },
        {
            Nome = "Sid",
            ID = 87442757321244
        },
        {
            Nome = "puga grande",
            ID = 111436158728716
        },
        {
            Nome = "SHREK AMALDI\195\135OADO",
            ID = 120960401202173
        },
        {
            Nome = "mosquito grande",
            ID = 108052868536435
        },
        {
            Nome = "Noob Invertido",
            ID = 106596990206151
        },
        {
            Nome = "Pato(a)",
            ID = 135132836238349
        },
        {
            Nome = "Cachorro Chihuahua",
            ID = 18656467256
        },
        {
            Nome = "Gato sla",
            ID = 18994959003
        },
        {
            Nome = "Gato fei ",
            ID = 77506186615650
        },
        {
            Nome = "Inpostor",
            ID = 18234669337
        },
        {
            Nome = "Simon amarelo",
            ID = 75183593514657
        },
        {
            Nome = "Simon azul",
            ID = 76155710249925
        }
    },
    GetAvatarNames = function(p193)
        local v194, v195, v196 = ipairs(p193.Avatares)
        local v197 = {}
        while true do
            local v198
            v196, v198 = v194(v195, v196)
            if v196 == nil then
                break
            end
            table.insert(v197, v198.Nome)
        end
        return v197
    end,
    EquiparAvatar = function(pu199, p200)
        local v201, v202, v203 = ipairs(pu199.Avatares)
        while true do
            local v204
            v203, v204 = v201(v202, v203)
            if v203 == nil then
                break
            end
            if v204.Nome == p200 then
                local vu205 = {
                    v204.ID
                }
                local v206, _ = pcall(function()
                    return pu199.ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(unpack(vu205))
                end)
                if v206 then
                    pu199:MostrarNotificacao("Avatar " .. p200 .. "Equiped sucessfully")
                else
                    pu199:MostrarNotificacao("Failed To Equip Avatar " .. p200 .. "!")
                end
                return
            end
        end
        pu199:MostrarNotificacao("Avatar " .. p200 .. " not found")
    end
}
local v208 = v4.AddDropdown
local v209 = {
    Name = "accessories 3D",
    Description = "",
    Default = nil
}
local v210 = vu207
v209.Options = vu207.GetAvatarNames(v210)
function v209.Callback(p211)
    _G.SelectedAvatar = p211
end
v208(v4, v209)
v4:AddButton({
    Name = "equipar ",
    Description = "Equipar selecionado",
    Callback = function()
        if _G.SelectedAvatar and _G.SelectedAvatar ~= "" then
            vu207:EquiparAvatar(_G.SelectedAvatar)
        else
            vu207:MostrarNotificacao("Nenhum avatar selecionado!")
        end
    end
})
v4:AddSection({
    "Avatar Editor"
})
v4:AddParagraph({
    Title = "Gonna Refresh Your Avatar",
    Content = ""
})
v4:AddButton({
    Name = "Mini REPO",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer(unpack({
            {
                117101023704825,
                125767940563838,
                137301494386930,
                87357384184710,
                133391239416999,
                111818794467824
            }
        }))
        print("Todas as partes do corpo equipadas!")
    end
})
v4:AddButton({
    Name = "mini horse",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer(unpack({
            {
                124355047456535,
                120507500641962,
                82273782655463,
                113625313757230,
                109182039511426,
                0
            }
        }))
        print("Todas as partes do corpo equipadas!")
    end
})
v4:AddButton({
    Name = "stick",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer(unpack({
            {
                14731384498,
                14731377938,
                14731377894,
                14731377875,
                14731377941,
                14731382899
            }
        }))
        print("Todas as partes do corpo equipadas!")
    end
})
v4:AddButton({
    Name = "Chunky-Bug",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer(unpack({
            {
                15527827600,
                15527827578,
                15527831669,
                15527836067,
                15527827184,
                15527827599
            }
        }))
        print("Todas as partes do corpo equipadas!")
    end
})
v4:AddButton({
    Name = "Cursed-Spider",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer(unpack({
            {
                134555168634906,
                100269043793774,
                125607053187319,
                122504853343598,
                95907982259204,
                91289185840375
            }
        }))
        print("Todas as partes do corpo equipadas!")
    end
})
v4:AddButton({
    Name = "Possessed-Horror",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer(unpack({
            {
                122800511983371,
                132465361516275,
                125155800236527,
                83070163355072,
                102906187256945,
                78311422507297
            }
        }))
        print("Todas as partes do corpo equipadas!")
    end
})
v4:AddParagraph({
    Title = "gonna be more here until the next update.",
    Content = ""
})
v5:AddParagraph({
    Title = "Function Yourself ",
    Content = ""
})
v5:AddButton({
    Name = "Remove Ban",
    Description = "",
    Callback = function()
        local v212 = 0
        local v213 = 0
        for v214 = 1, 37 do
            local vu215 = vu68:FindFirstChild("BannedBlock" .. v214, true)
            if vu215 then
                local v216, _ = pcall(function()
                    vu215:Destroy()
                end)
                if v216 then
                    v213 = v213 + 1
                else
                    v212 = v212 + 1
                end
            end
        end
        local v217 = vu68
        local v218, v219, v220 = pairs(v217:GetDescendants())
        while true do
            local vu221
            v220, vu221 = v218(v219, v220)
            if v220 == nil then
                break
            end
            if vu221.Name:match("BannedBlock") then
                local v222, _ = pcall(function()
                    vu221:Destroy()
                end)
                if v222 then
                    v213 = v213 + 1
                else
                    v212 = v212 + 1
                end
            end
        end
        if v213 > 0 then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Sucess",
                Text = "Ban has removed" .. v213 .. "",
                Duration = 5
            })
        end
        if v212 > 0 then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Error",
                Text = "Failed to remove ban" .. v212 .. "",
                Duration = 5
            })
        end
        if v213 == 0 and v212 == 0 then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Error",
                Text = "no ban found to unban.",
                Duration = 5
            })
        end
    end
})
v5:AddParagraph({
    Title = "i have no idea to add here.",
    Content = ""
})
v6:AddSection({
    "all car functions"
})
local v223 = game:GetService("Players")
local vu224 = game:GetService("Workspace")
local vu225 = v223.LocalPlayer
local vu253 = {
    Players = v223,
    Workspace = vu224,
    LocalPlayer = vu225,
    Camera = vu224.CurrentCamera,
    MostrarNotificacao = function(_, pu226)
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Information",
                Text = pu226,
                Duration = 5
            })
        end)
    end,
    ToggleFallDamage = function(p227, p228)
        if not (p227.LocalPlayer.Character and p227.LocalPlayer.Character:FindFirstChild("Humanoid")) then
            return false
        end
        local v229 = p227.LocalPlayer.Character.Humanoid
        if not p228 then
            v229:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
            v229:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
            return false
        end
        v229:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
        v229:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
        v229:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
        v229.PlatformStand = false
        return true
    end,
    TeleportToSeat = function(p230, p231, _)
        if not (p230.LocalPlayer.Character and p230.LocalPlayer.Character:FindFirstChild("Humanoid")) then
            p230:MostrarNotificacao("Personagem n\195\163o encontrado!")
            return false
        end
        local v232 = p230.LocalPlayer.Character.Humanoid
        local v233 = p230.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not v233 then
            p230:MostrarNotificacao("Parte raiz do personagem n\195\163o encontrada!")
            return false
        end
        v232.Sit = false
        task.wait(0.1)
        v233.CFrame = p231.CFrame + Vector3.new(0, 5, 0)
        task.wait(0.1)
        p231:Sit(v232)
        task.wait(0.5)
        return v232.SeatPart == p231
    end,
    TeleportToVoid = function(p234, p235)
        if p235 then
            if not p235.PrimaryPart then
                local v236 = p235:FindFirstChild("Body", true) or p235:FindFirstChild("Chassis", true)
                if not (v236 and v236:IsA("BasePart")) then
                    p234:MostrarNotificacao("Parte principal do ve\195\173culo n\195\163o encontrada!")
                    return
                end
                p235.PrimaryPart = v236
            end
            local v237 = Vector3.new(0, - 1000, 0)
            p235:SetPrimaryPartCFrame(CFrame.new(v237))
            task.wait(0.5)
        else
            p234:MostrarNotificacao("Ve\195\173culo inv\195\161lido!")
        end
    end,
    TeleportToPlayer = function(p238, p239, p240)
        if p239 then
            if not p239.PrimaryPart then
                local v241 = p239:FindFirstChild("Body", true) or p239:FindFirstChild("Chassis", true)
                if not (v241 and v241:IsA("BasePart")) then
                    p238:MostrarNotificacao("Parte principal do ve\195\173culo n\195\163o encontrada!")
                    return
                end
                p239.PrimaryPart = v241
            end
            local v242 = p240 + Vector3.new(5, 0, 5)
            p239:SetPrimaryPartCFrame(CFrame.new(v242))
            task.wait(0.5)
        else
            p238:MostrarNotificacao("Ve\195\173culo inv\195\161lido!")
        end
    end,
    ExitCarAndReturn = function(p243, p244)
        if p243.LocalPlayer.Character and p243.LocalPlayer.Character:FindFirstChild("Humanoid") then
            local v245 = p243.LocalPlayer.Character.Humanoid
            if v245.SeatPart then
                v245.Sit = false
            end
            task.wait(0.1)
            if p244 then
                p243.LocalPlayer.Character:PivotTo(CFrame.new(p244))
            end
        end
    end,
    AtualizarListaCarros = function(p246)
        local v247 = p246.Workspace:FindFirstChild("Vehicles")
        local v248 = {}
        if v247 then
            local v249, v250, v251 = ipairs(v247:GetChildren())
            while true do
                local v252
                v251, v252 = v249(v250, v251)
                if v251 == nil then
                    break
                end
                if v252.Name:match("Car$") then
                    table.insert(v248, v252.Name)
                end
            end
        end
        return v248
    end
}
v6:AddParagraph({
    Title = "use void protection",
    Content = ""
})
v7:AddToggle({
    Name = "kill all cars in the server",
    Description = "Teleports all people car to void",
    Default = false,
    Callback = function(p254)
        local vu255 = p254
        if p254 then
            if not (self.LocalPlayer.Character and self.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then
                vu253:MostrarNotificacao("Personagem n\195\163o encontrado!")
                return
            end
            local vu256 = self.LocalPlayer.Character.HumanoidRootPart.Position
            vu253:ToggleFallDamage(true)
            spawn(function()
                local v257 = vu253.Workspace:FindFirstChild("Vehicles")
                if v257 then
                    local v258, v259, v260 = ipairs(v257:GetChildren())
                    local v261 = {}
                    while true do
                        local v262
                        v260, v262 = v258(v259, v260)
                        if v260 == nil then
                            break
                        end
                        if v262.Name:match("Car$") then
                            table.insert(v261, v262)
                        end
                    end
                    local v263, v264, v265 = ipairs(v261)
                    while true do
                        local v266
                        v265, v266 = v263(v264, v265)
                        if v265 == nil or not vu255 then
                            break
                        end
                        local v267 = v266:FindFirstChildWhichIsA("VehicleSeat", true)
                        if v267 and v267.Occupant == nil and vu253:TeleportToSeat(v267, v266) then
                            vu253:TeleportToVoid(v266)
                            vu253:ExitCarAndReturn(vu256)
                            task.wait(1)
                        end
                    end
                    if vu255 then
                        vu255 = false
                        vu253:ToggleFallDamage(false)
                    end
                else
                    vu253:MostrarNotificacao("Pasta de ve\195\173culos n\195\163o encontrada!")
                end
            end)
        else
            vu253:ToggleFallDamage(false)
        end
    end
})
v6:AddSection({
    "car functions"
})
local v268 = v6.AddDropdown
local v269 = {
    Name = "Select Player Car",
    Description = "To Kill",
    Default = nil
}
local v270 = vu253
v269.Options = vu253.AtualizarListaCarros(v270)
function v269.Callback(p271)
    _G.SelectedVehicle = p271
end
local vu272 = v268(v6, v269)
v6:AddToggle({
    Name = "Look At Selected Car Camera",
    Description = "...",
    Default = false,
    Callback = function(p273)
        if p273 then
            if not _G.SelectedVehicle or _G.SelectedVehicle == "" then
                vu253:MostrarNotificacao("Nenhum carro selecionado!")
                return
            end
            local v274 = vu253.Workspace:FindFirstChild("Vehicles")
            if not v274 then
                vu253:MostrarNotificacao("Pasta de ve\195\173culos n\195\163o encontrada!")
                return
            end
            local v275 = v274:FindFirstChild(_G.SelectedVehicle)
            if not v275 then
                vu253:MostrarNotificacao("Carro selecionado n\195\163o encontrado!")
                return
            end
            local v276 = v275:FindFirstChildWhichIsA("VehicleSeat", true)
            if not v276 then
                vu253:MostrarNotificacao("Assento do carro n\195\163o encontrado!")
                return
            end
            vu253.OriginalCameraSubject = vu253.Camera.CameraSubject
            vu253.OriginalCameraType = vu253.Camera.CameraType
            vu253.Camera.CameraSubject = v276
            vu253.Camera.CameraType = Enum.CameraType.Follow
            vu253:MostrarNotificacao("C\195\162mera ajustada para o carro " .. _G.SelectedVehicle .. "!")
        elseif vu253.OriginalCameraSubject then
            vu253.Camera.CameraSubject = vu253.OriginalCameraSubject
            vu253.Camera.CameraType = vu253.OriginalCameraType or Enum.CameraType.Custom
            vu253:MostrarNotificacao("C\195\162mera restaurada ao normal!")
            vu253.OriginalCameraSubject = nil
            vu253.OriginalCameraType = nil
        end
    end
})
vu253.Workspace:WaitForChild("Vehicles").ChildAdded:Connect(function()
    vu272:Set(vu253:AtualizarListaCarros())
end)
vu253.Workspace:WaitForChild("Vehicles").ChildRemoved:Connect(function()
    vu272:Set(vu253:AtualizarListaCarros())
end)
v6:AddSection({
    "function kill car"
})
v6:AddButton({
    Name = "Destroy Car",
    Description = "Teleports selected Car To Void",
    Callback = function()
        if _G.SelectedVehicle and _G.SelectedVehicle ~= "" then
            local v277 = vu253.Workspace:FindFirstChild("Vehicles")
            if v277 then
                local v278 = v277:FindFirstChild(_G.SelectedVehicle)
                if v278 then
                    local v279 = v278:FindFirstChildWhichIsA("VehicleSeat", true)
                    if v279 then
                        if v279.Occupant then
                            vu253:MostrarNotificacao("O kill car n\195\163o foi poss\195\173vel, h\195\161 algu\195\169m sentado no assento do motorista!")
                            return
                        elseif vu253.LocalPlayer.Character and vu253.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            local v280 = vu253.LocalPlayer.Character.HumanoidRootPart.Position
                            vu253:ToggleFallDamage(true)
                            if vu253:TeleportToSeat(v279, v278) then
                                vu253:TeleportToVoid(v278)
                                vu253:MostrarNotificacao("Carro " .. _G.SelectedVehicle .. " foi teleportado para o void!")
                                vu253:ExitCarAndReturn(v280)
                            else
                                vu253:MostrarNotificacao("Falha ao sentar no carro!")
                            end
                            vu253:ToggleFallDamage(false)
                        else
                            vu253:MostrarNotificacao("Personagem do jogador n\195\163o encontrado!")
                        end
                    else
                        vu253:MostrarNotificacao("Assento do carro n\195\163o encontrado!")
                        return
                    end
                else
                    vu253:MostrarNotificacao("Carro selecionado n\195\163o encontrado!")
                    return
                end
            else
                vu253:MostrarNotificacao("Pasta de ve\195\173culos n\195\163o encontrada!")
                return
            end
        else
            vu253:MostrarNotificacao("Nenhum carro selecionado!")
            return
        end
    end
})
v6:AddButton({
    Name = "Get Selected Cart",
    Description = "Teleports To Selected Car Position ",
    Callback = function()
        if _G.SelectedVehicle and _G.SelectedVehicle ~= "" then
            local v281 = vu253.Workspace:FindFirstChild("Vehicles")
            if v281 then
                local v282 = v281:FindFirstChild(_G.SelectedVehicle)
                if v282 then
                    local v283 = v282:FindFirstChildWhichIsA("VehicleSeat", true)
                    if v283 then
                        if v283.Occupant then
                            vu253:MostrarNotificacao("O teleporte do carro n\195\163o foi poss\195\173vel, h\195\161 algu\195\169m sentado no assento do motorista!")
                            return
                        elseif vu253.LocalPlayer.Character and vu253.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            local v284 = vu253.LocalPlayer.Character.HumanoidRootPart.Position
                            vu253:ToggleFallDamage(true)
                            if vu253:TeleportToSeat(v283, v282) then
                                vu253:TeleportToPlayer(v282, v284)
                                vu253:MostrarNotificacao("Carro " .. _G.SelectedVehicle .. " foi teleportado para voc\195\170!")
                                vu253:ExitCarAndReturn(v284)
                            else
                                vu253:MostrarNotificacao("Falha ao sentar no carro!")
                            end
                            vu253:ToggleFallDamage(false)
                        else
                            vu253:MostrarNotificacao("Personagem do jogador n\195\163o encontrado!")
                        end
                    else
                        vu253:MostrarNotificacao("Assento do carro n\195\163o encontrado!")
                        return
                    end
                else
                    vu253:MostrarNotificacao("Carro selecionado n\195\163o encontrado!")
                    return
                end
            else
                vu253:MostrarNotificacao("Pasta de ve\195\173culos n\195\163o encontrada!")
                return
            end
        else
            vu253:MostrarNotificacao("Nenhum carro selecionado!")
            return
        end
    end
})
v6:AddButton({
    Name = "Get All Cars In The Server",
    Description = "Teleports All Cars In The Server To You",
    Callback = function()
        if vu253.LocalPlayer.Character and vu253.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local v285 = vu253.LocalPlayer.Character.HumanoidRootPart.Position
            local v286 = vu253.Workspace:FindFirstChild("Vehicles")
            if v286 then
                vu253:ToggleFallDamage(true)
                local v287, v288, v289 = ipairs(v286:GetChildren())
                local v290 = {}
                while true do
                    local v291
                    v289, v291 = v287(v288, v289)
                    if v289 == nil then
                        break
                    end
                    if v291.Name:match("Car$") then
                        table.insert(v290, v291)
                    end
                end
                local v292, v293, v294 = ipairs(v290)
                while true do
                    local v295
                    v294, v295 = v292(v293, v294)
                    if v294 == nil then
                        break
                    end
                    local v296 = v295:FindFirstChildWhichIsA("VehicleSeat", true)
                    if v296 and v296.Occupant == nil then
                        if vu253:TeleportToSeat(v296, v295) then
                            vu253:TeleportToPlayer(v295, v285)
                            vu253:ExitCarAndReturn(v285)
                            vu253:MostrarNotificacao("Carro " .. v295.Name .. " foi teleportado para voc\195\170!")
                            task.wait(1)
                        else
                            vu253:MostrarNotificacao("Falha ao sentar no carro " .. v295.Name .. "!")
                        end
                    elseif v296 then
                        vu253:MostrarNotificacao("Carro " .. v295.Name .. " ignorado: algu\195\169m est\195\161 no assento do motorista!")
                    else
                        vu253:MostrarNotificacao("Carro " .. v295.Name .. " ignorado: assento n\195\163o encontrado!")
                    end
                end
                vu253:ToggleFallDamage(false)
                if # v290 == 0 then
                    vu253:MostrarNotificacao("Nenhum carro dispon\195\173vel para teleportar!")
                end
            else
                vu253:MostrarNotificacao("Pasta de ve\195\173culos n\195\163o encontrada!")
            end
        else
            vu253:MostrarNotificacao("Personagem do jogador n\195\163o encontrado!")
            return
        end
    end
})
local vu297 = false
vu253.LocalPlayer.CharacterAdded:Connect(function(p298)
    local v299 = p298:WaitForChild("Humanoid")
    if vu297 then
        v299:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
        v299:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
        v299:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
        v299.PlatformStand = false
    else
        v299:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
        v299:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
    end
end)
v7:AddSection({
    ""
})
local vu300 = 1
v7:AddSlider({
    Name = "RGB Speed",
    Description = "Changes RGB Speed",
    Min = 1,
    Max = 5,
    Increase = 1,
    Default = 3,
    Callback = function(p301)
        vu300 = p301
    end
})
local function vu304(p302)
    local v303 = tick() * p302 % 5 / 5
    return Color3.fromHSV(v303, 1, 1)
end
local function vu308(pu305, pu306)
    local vu307 = game:GetService("ReplicatedStorage"):FindFirstChild("RE")
    if vu307 and vu307:FindFirstChild(pu305) then
        pcall(function()
            vu307[pu305]:FireServer(unpack(pu306))
        end)
    end
end
local v309 = vu8
vu8.AddSection(v309, {
    "RGB para usar em voc\195\170"
})
local vu310 = false
v7:AddToggle({
    Name = "Name + Bio RGB ",
    Default = false,
    Callback = function(p311)
        vu310 = p311
        if p311 then
            task.spawn(function()
                while vu310 and vu225.Character do
                    local v312 = vu304(vu300)
                    vu308("1RPNam1eColo1r", {
                        "PickingRPNameColor",
                        v312
                    })
                    vu308("1RPNam1eColo1r", {
                        "PickingRPBioColor",
                        v312
                    })
                    task.wait(0.03)
                end
            end)
        end
    end
})
v7:AddToggle({
    Name = "RGB Char",
    Description = "RGB Character",
    Default = false
}):Callback(function(p313)
    getgenv().rgbCorpo = p313
    task.spawn(function()
        while getgenv().rgbCorpo do
            local vu314 = game:GetService("ReplicatedStorage"):FindFirstChild("Remotes")
            if vu314 and vu314:FindFirstChild("ChangeBodyColor") then
                pcall(function()
                    vu314.ChangeBodyColor:FireServer({
                        BrickColor.new(vu304(vu300))
                    })
                end)
            end
            task.wait(0.1)
        end
    end)
end)
v7:AddToggle({
    Name = "RGB Hair",
    Description = "Kinda Funny",
    Default = false
}):Callback(function(p315)
    getgenv().rgbCabelo = p315
    task.spawn(function()
        while getgenv().rgbCabelo do
            vu308("1Max1y", {
                "ChangeHairColor2",
                vu304(vu300)
            })
            task.wait(0.5)
        end
    end)
end)
v7:AddSection({
    "Car And Home"
})
v7:AddToggle({
    Name = "RGB Home",
    Description = "RGB",
    Default = false
}):Callback(function(p316)
    getgenv().rgbCasa = p316
    task.spawn(function()
        while getgenv().rgbCasa do
            vu308("1Player1sHous1e", {
                "ColorPickHouse",
                vu304(vu300)
            })
            task.wait(0.1)
        end
    end)
end)
local vu317 = false
v7:AddToggle({
    Name = "Car RGB  (Premium)",
    Description = "Only For Premium !",
    Default = false,
    Callback = function(p318)
        vu317 = p318
        if p318 then
            task.spawn(function()
                while vu317 and vu225.Character do
                    vu308("1Player1sCa1r", {
                        "PickingCarColor",
                        (vu304(vu300))
                    })
                    task.wait(0.03)
                end
            end)
        end
    end
})
v7:AddToggle({
    Name = "RGB Bike",
    Description = "RGB",
    Default = false
}):Callback(function(p319)
    getgenv().rgbBicicleta = p319
    task.spawn(function()
        while getgenv().rgbBicicleta do
            vu308("1Player1sCa1r", {
                "NoMotorColor",
                vu304(vu300)
            })
            task.wait(0.1)
        end
    end)
end)
local v320 = vu8
vu8.AddSection(v320, {
    "itens/tool"
})
local vu321 = false
v7:AddToggle({
    Name = "Radio RGB  ",
    Description = "Change the radio color with continuous RGB",
    Default = false,
    Callback = function(p322)
        vu321 = p322
        if p322 then
            task.spawn(function()
                while vu321 and vu225.Character do
                    local vu323 = vu304(vu300)
                    local v324, vu325 = pcall(function()
                        return vu225:WaitForChild("PlayerGui"):WaitForChild("ToolGui"):WaitForChild("ToolSettings"):WaitForChild("Settings"):WaitForChild("PropsColor"):WaitForChild("SetColor")
                    end)
                    if v324 and vu325 then
                        pcall(function()
                            vu325:FireServer(vu323)
                        end)
                    end
                    task.wait(0.03)
                end
            end)
        end
    end
})
v7:AddToggle({
    Name = "RGB Megafon prop",
    Description = "RGB on megafon",
    Default = false
}):Callback(function(p326)
    getgenv().rgbMegafone = p326
    task.spawn(function()
        while getgenv().rgbMegafone do
            local vu327 = vu304(vu300)
            local v328 = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
            if v328 then
                local v329 = v328:FindFirstChild("ToolGui")
                local v330 = v329 and v329:FindFirstChild("ToolSettings")
                if v330 then
                    local vu331 = v330:FindFirstChild("Settings"):FindFirstChild("PropsColor")
                    if vu331 and vu331:FindFirstChild("SetColor") then
                        pcall(function()
                            vu331.SetColor:FireServer(vu327)
                        end)
                    end
                end
            end
            task.wait(0.1)
        end
    end)
end)
v7:AddToggle({
    Name = "RGB Donut",
    Description = "RGB on Donut",
    Default = false
}):Callback(function(p332)
    getgenv().rgbRosquinha = p332
    task.spawn(function()
        while getgenv().rgbRosquinha do
            local vu333 = vu304(vu300)
            local v334 = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
            if v334 then
                local v335 = v334:FindFirstChild("ToolGui")
                local v336 = v335 and v335:FindFirstChild("ToolSettings")
                if v336 then
                    local vu337 = v336:FindFirstChild("Settings"):FindFirstChild("PropsColor")
                    if vu337 and vu337:FindFirstChild("SetColor") then
                        pcall(function()
                            vu337.SetColor:FireServer(vu333)
                        end)
                    end
                end
            end
            task.wait(0.1)
        end
    end)
end)
local vu338 = false
local vu339 = ""
local v340 = vu8
local v342 = {
    Name = "Inset ID Audio All",
    Description = "Enter the ID of the sound you want",
    Default = "",
    PlaceholderText = "Example: 6832470734",
    ClearTextOnFocus = true,
    Callback = function(p341)
        vu339 = tonumber(p341)
    end
}
vu8.AddTextBox(v340, v342)
local function vu347(p343, pu344)
    local v345 = game:GetService("ReplicatedStorage")
    local vu346 = v345:FindFirstChild("RE")
    if vu346 then
        vu346 = v345.RE:FindFirstChild(p343)
    end
    if vu346 then
        pcall(function()
            vu346:FireServer(unpack(pu344))
        end)
    end
end
local v348 = vu8
local v350 = {
    Name = "Play Sound",
    Description = "",
    Callback = function()
        if vu339 then
            vu347("1Gu1nSound1s", {
                vu224,
                vu339,
                1
            })
            local v349 = Instance.new("Sound", vu224)
            v349.SoundId = "rbxassetid://" .. vu339
            v349.Looped = false
            v349:Play()
            task.wait(3)
            v349:Destroy()
        end
    end
}
vu8.AddButton(v348, v350)
local v351 = vu8
local v355 = {
    Name = "Loop",
    Description = "loop play sound",
    Default = false,
    Callback = function(p352)
        vu338 = p352
        if vu338 then
            spawn(function()
                while vu338 do
                    if vu339 then
                        vu347("1Gu1nSound1s", {
                            vu224,
                            vu339,
                            1
                        })
                        local vu353 = Instance.new("Sound", vu224)
                        vu353.SoundId = "rbxassetid://" .. vu339
                        vu353.Looped = false
                        local v354 = vu353
                        vu353.Play(v354)
                        task.spawn(function()
                            task.wait(3)
                            vu353:Destroy()
                        end)
                    end
                    task.wait(1)
                end
            end)
        end
    end
}
vu8.AddToggle(v351, v355)
local function v382(p356, p357, p358)
    local v359, v360, v361 = pairs(p357)
    local v362 = {}
    local vu363 = {}
    while true do
        local v364
        v361, v364 = v359(v360, v361)
        if v361 == nil then
            break
        end
        local v365, v366, v367 = ipairs(v364)
        local v368 = v361
        while true do
            local v369
            v367, v369 = v365(v366, v367)
            if v367 == nil then
                break
            end
            if v369.name ~= "" and v369.id ~= "4354908569" then
                table.insert(v362, v369.name)
                vu363[v369.name] = {
                    id = v369.id,
                    category = v368
                }
            end
        end
    end
    local vu370 = nil
    local vu371 = 1
    local vu372 = 1
    local function vu378(p373, p374, p375)
        vu347("1Gu1nSound1s", {
            vu224,
            p373,
            p374
        })
        local vu376 = Instance.new("Sound")
        vu376.Parent = vu224
        vu376.SoundId = "rbxassetid://" .. p373
        vu376.Volume = p374
        vu376.Pitch = p375
        vu376.Looped = false
        local v377 = vu376
        vu376.Play(v377)
        task.spawn(function()
            task.wait(3)
            vu376:Destroy()
        end)
    end
    vu8:AddDropdown({
        Name = p356,
        Description = "Choose a sound to play on the server",
        Default = p358,
        Multi = false,
        Options = v362,
        Callback = function(p379)
            if p379 and vu363[p379] then
                vu370 = vu363[p379].id
            else
                vu370 = nil
            end
        end
    })
    vu8:AddButton({
        Name = "Play Selected",
        Description = "Click to play the sound from the dropdown",
        Callback = function()
            if vu370 then
                vu378(vu370, vu371, vu372)
            end
        end
    })
    local vu380 = false
    vu8:AddToggle({
        Name = "Loop",
        Description = "Loop Play Sound",
        Default = false,
        Callback = function(p381)
            vu380 = p381
            if p381 then
                task.spawn(function()
                    while vu380 do
                        if vu370 then
                            vu378(vu370, vu371, vu372)
                        end
                        task.wait(1)
                    end
                end)
            end
        end
    })
end
v382("Selecione um meme", {
    Memes = {{name="pankapakan",id="122547522269143"},{name="rape",id="128863565301778"},{name="NAHH",id="116293771329297"},{name="G0z33iiii",id="93462644278510"},{name="Hommmm ",id="133135656929513"},{name="sus1",id="105263704862377"},{name="sus2",id="92186909873950"},{name="sus3",id="128137573022197"},{name="sus4",id="131219411501419"},{name="sus kawai",id="100409245129170"},{name="Hentai wiaaaaan",id="88332347208779"},{name="iamete cunasai",id="108494476595033"},{name="dodichan onnn...",id="134640594695384"},{name="Loly gemiD0",id="119277017538197"},{name="poison",id="115870718113313"},{name="chegachega SUS",id="77405864184828"},{name="uwu",id="76820720070248"},{name="sus",id="130714479795369"},{name="girl audio 2",id="84207358477461"},{name="Hoo ze da manga",id="106624090319571"},{name="hi Alexander ",id="107261471941570"},{name="haaii meme",id="120006672159037"},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="GoGogo gogogo",id="103262503950995"},{name="Toma jack",id="132603645477541"},{name="Toma jackV2",id="100446887985203"},{name="Random",id="97476487963273"},{name="ifood",id="133843750864059"},{name="Random",id="94395705857835"},{name="Random",id="136804576009416"},{name="coringa",id="84663543883498"},{name="shoope",id="8747441609"},{name="Random",id="103440368630269"},{name="Random",id="101232400175829"},{name="Random",id="78442476709262"},{name="mita even if im too one",id="94889439372168"},{name="today i will be your wife and you ",id="90844637105538"},{name="Lie here",id="100291188941582"},{name="miau",id="131804436682424"},{name="skibidi",id="128771670035179"},{name="BIRULEIBI",id="121569761604968"},{name="biseabesjnjkasnakjsndjkafb",id="133106998846260"},{name="vai corinthians!!....",id="127012936767471"},{name="my sigman",id="103431815659907"},{name="mama",id="106850066985594"},{name="OH MY GOD",id="73349649774476"},{name="aahhh plankton meme",id="95982351322190"},{name="CHINABOY",id="84403553163931"},{name="PASTOR MIRIM E A L\195\141NGUA DOS ANJOS",id="71153532555470"},{name="Sai d3sgra\195\167@",id="106973692977609"},{name="opa salve tudo bem?",id="80870678096428"},{name="OLHA O CARRO DO DANONE",id="110493863773948"},{name="N\195\163oooo, N\195\163oooo, N\195\163ooo!!!!!",id="95825536480898"},{name="UM P\195\137 DE SIRIGUELA KK",id="112804043442210"},{name="e o carro da pamonha",id="94951629392683"},{name="BOM DIAAAAAAAAAA",id="136579844511260"},{name="ai-meu-chiclete",id="92911732806153"},{name="posso te ligar ou tua mulher...",id="103211341252816"},{name="Boa chi joga muito cara",id="110707564387669"},{name="Oqueee meme",id="120092799810101"},{name="kkk muito fei",id="79241074803021"},{name="lula cade o ze gotinha",id="86012585992725"},{name="morreu",id="8872409975"},{name="a-pia-ta-cheia-de-louca",id="98076927129047"},{name="Mahito killSong",id="128669424001766"},{name="Sucumba",id="7946300950"},{name="nem clicou o thurzin",id="84428355313544"},{name="fiui OLHA MENSAGEM",id="121668429878811"},{name="tooomeee",id="128319664118768"},{name="risada de ladrao",id="133065882609605"},{name="E o PIX nada ainda",id="113831443375212"},{name="Vo nada vo nada",id="89093085290586"},{name="Eli gosta",id="105012436535315"},{name="um cavalo de tres pernas?",id="8164241439"},{name="voces sao um bado de fdp",id="8232773326"},{name="HAHA TROLLEI AT\195\137 VOC\195\138",id="7021794555"},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="Calaboca Kenga",id="86494561679259"},{name="alvincut",id="88788640194373"},{name="e a risada faz como?",id="140713372459057"},{name="voce deve se m@t4",id="100227426848009"},{name="receba",id="94142662616215"},{name="UUIIII",id="73210569653520"},{name="sai",id="121169949217007"},{name="risada boa dms",id="127589011971759"},{name="vacilo perna de pau",id="106809680656199"},{name="gomo gomo no!!!",id="137067472449625"},{name="arroto",id="140203378050178"},{name="iraaaa",id="136752451575091"},{name="n\195\163o fica se achando muito n\195\163o",id="101588606280167"},{name="WhatsApp notifica\195\167aoV1",id="107004225739474"},{name="WhatsApp notifica\195\167aoV2",id="18850631582"},{name="SamsungV1",id="123767635061073"},{name="SamsungV2",id="96579234730244"},{name="Shiiii",id="120566727202986"},{name="ai_tomaa miku",id="139770074770361"},{name="Miku Miku",id="72812231495047"},{name="kuru_kuru",id="122465710753374"},{name="PM ROCAM",id="96161547081609"},{name="cavalo!!",id="78871573440184"},{name="deixa os garoto brinca",id="80291355054807"},{name="flamengo",id="137774355552052"},{name="sai do mei satnas",id="127944706557246"},{name="namoral agora e a hora",id="120677947987369"},{name="n pode me chutar pq seu celebro e burro",id="82284055473737"},{name="vc ta fudido vou te pegar",id="120214772725166"},{name="deley",id="102906880476838"},{name="Tu e um beta",id="130233956349541"},{name="Porfavor n tira eu nao",id="85321374020324"},{name="Ol\195\161 beleza vc pode me d\195\161 muitos",id="74235334504693"},{name="Discord sus",id="122662798976905"},{name="rojao apito",id="6549021381"},{name="off",id="1778829098"},{name="Kazuma kazuma",id="127954653962405"},{name="sometourado",id="123592956882621"},{name="Estouradoespad",id="136179020015211"},{name="Alaku bommm",id="110796593805268"},{name="busss",id="139841197791567"},{name="Estourado wItb",id="137478052262430"},{name="sla",id="116672405522828"},{name="HA HA HA",id="138236682866721"}}
}, "pankapakan")
local v383 = vu8
vu8.AddSection(v383, {
    "throw terror or effect on the server"
})
v382("Select a horror or effect", {
    ["efeito/terror"] = {
        {
            name = "jumpscar",
            id = "91784486966761"
        },
        {
            name = "n se preocupe",
            id = "87041057113780"
        },
        {
            name = "eles estao todos mortos",
            id = "70605158718179"
        },
        {
            name = "gritoestourado",
            id = "7520729342"
        },
        {
            name = "gritomedo",
            id = "113029085566978"
        },
        {
            name = "Nukesiren",
            id = "9067330158"
        },
        {
            name = "nuclear sirenv2",
            id = "675587093"
        },
        {
            name = "Alertescola",
            id = "6607047008"
        },
        {
            name = "Memealertsiren",
            id = "8379374771"
        },
        {
            name = "sirenv3",
            id = "6766811806"
        },
        {
            name = "Alarm estourAAAA...",
            id = "93354528379052"
        },
        {
            name = "MegaMan Alarm",
            id = "1442382907"
        },
        {
            name = "Alarm bookhaven",
            id = "1526192493"
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "alet malaysia",
            id = "7714172940"
        },
        {
            name = "Risada",
            id = "79191730206814"
        },
        {
            name = "Hahahah",
            id = "90096947219465"
        },
        {
            name = "scream",
            id = "314568939"
        },
        {
            name = "Terrified meme scream",
            id = "5853668794"
        },
        {
            name = "Sonic.exe Scream Effect",
            id = "146563959"
        },
        {
            name = "Demon Scream",
            id = "2738830850"
        },
        {
            name = "SCP-096 Scream (raging)",
            id = "343430735"
        },
        {
            name = "Nightmare Yelling Bursts",
            id = "9125713501"
        },
        {
            name = "HORROR SCREAM 07",
            id = "9043345732"
        },
        {
            name = "Female Scream Woman Screams",
            id = "9114397912"
        },
        {
            name = "Scream1",
            id = "1319496541"
        },
        {
            name = "Scream2",
            id = "199978176"
        },
        {
            name = "scary maze scream",
            id = "270145703"
        },
        {
            name = "SammyClassicSonicFan\'s Scream",
            id = "143942090"
        },
        {
            name = "FNAF 2 Death Scream",
            id = "1572549161"
        },
        {
            name = "cod zombie scream",
            id = "8566359672"
        },
        {
            name = "Slendytubbies- CaveTubby Scream",
            id = "1482639185"
        },
        {
            name = "FNAF 2 Death Scream",
            id = "5537531920"
        },
        {
            name = "HORROR SCREAM 15",
            id = "9043346574"
        },
        {
            name = "Jumpscare Scream",
            id = "6150329916"
        },
        {
            name = "FNaF: Security Breach",
            id = "2050522547"
        },
        {
            name = "llllllll",
            id = "5029269312"
        },
        {
            name = "loud jumpscare",
            id = "7236490488"
        },
        {
            name = "fnaf",
            id = "6982454389"
        },
        {
            name = "Pinkamena Jumpscare 1",
            id = "192334186"
        },
        {
            name = "Ennard Jumpscare 2",
            id = "629526707"
        },
        {
            name = "a sla medo dino",
            id = "125506416092123"
        },
        {
            name = "Backrooms Bacteria Pitfalls ",
            id = "81325342128575"
        },
        {
            name = "error Infinite",
            id = "3893790326"
        },
        {
            name = "Screaming Meme",
            id = "107732411055226"
        },
        {
            name = "Jumpscare - SCP CB",
            id = "97098997494905"
        },
        {
            name = "mirror jumpscare",
            id = "80005164589425"
        },
        {
            name = "PTLD-39 Jumpscare",
            id = "5581462381"
        },
        {
            name = "jumpscare:Play()",
            id = "121519648044128"
        },
        {
            name = "mimic jumpscare",
            id = "91998575878959"
        },
        {
            name = "DOORS Glitch Jumpscare Sound",
            id = "96377507894391"
        },
        {
            name = "FNAS 4 Nightmare Mario",
            id = "99804224106385"
        },
        {
            name = "Death House I Jumpscare Sound",
            id = "8151488745"
        },
        {
            name = "Shinky Jumpscare",
            id = "123447772144411"
        },
        {
            name = "FNaTI Jumpscare Oblitus casa",
            id = "18338717319"
        },
        {
            name = "fnaf jumpscare loadmode",
            id = "18911896588"
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        }
    }
}, "jumpscar")
local function vu386(p384)
    local v385 = game:GetService("ReplicatedStorage")
    v385:WaitForChild("RE"):WaitForChild("PlayerToolEvent"):FireServer(unpack({
        "ToolMusicText",
        p384
    }))
    v385:WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack({
        "PickHouseMusicText",
        p384
    }))
    v385:WaitForChild("RE"):WaitForChild("1Player1sCa1r"):FireServer(unpack({
        "PickingCarMusicText",
        p384
    }))
    v385:WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack({
        "PickingScooterMusicText",
        p384
    }))
end
local v387 = vu9
local v389 = {
    Name = "ID music",
    PlaceholderText = "Enter ID and press Enter",
    Callback = function(p388)
        if p388 and p388 ~= "" then
            vu386(tostring(p388))
        end
    end
}
vu9.AddTextBox(v387, v389)
local function v408(p390, p391, p392)
    local v393, v394, v395 = pairs(p391)
    local v396 = {}
    local vu397 = {}
    while true do
        local v398
        v395, v398 = v393(v394, v395)
        if v395 == nil then
            break
        end
        local v399, v400, v401 = ipairs(v398)
        local v402 = v395
        while true do
            local v403
            v401, v403 = v399(v400, v401)
            if v401 == nil then
                break
            end
            if v403.name ~= "" then
                table.insert(v396, v403.name)
                vu397[v403.name] = {
                    id = v403.id,
                    category = v402
                }
            end
        end
    end
    local function vu405(p404)
        vu386(tostring(p404))
    end
    vu9:AddDropdown({
        Name = p390,
        Description = "all",
        Default = p392,
        Multi = false,
        Options = v396,
        Callback = function(p406)
            if p406 and vu397[p406] then
                local v407 = vu397[p406].id
                if v407 and (v407 ~= "" and v407 ~= "4354908569") then
                    vu405(v407)
                end
            end
        end
    })
end
v408("Hot", {
    forro = {
        {
            name = "forr\195\179 ja cansou",
            id = "74812784884330"
        },
        {
            name = "lenbro ate hoje",
            id = "71531533552899"
        },
        {
            name = "escolha certa",
            id = "107088620814881"
        },
        {
            name = "forr\195\179 da rezenha",
            id = "120973520531216"
        },
        {
            name = "forr\195\179 dudu",
            id = "74404168179733"
        },
        {
            name = "forr\195\179 sao joao",
            id = "106364874935196"
        },
        {
            name = "forr\195\179 engra\195\167ado paia",
            id = "76524290482399"
        },
        {
            name = "100% forro vaquejada",
            id = "92295159623916"
        },
        {
            name = "PASTOR MIRIM E A L\195\141NGUA DOS ANJOS",
            id = "71153532555470"
        },
        {
            name = "PARA N\195\131O ESQUECER QUEM SOMOS",
            id = "88937498361674"
        },
        {
            name = "Uno zero",
            id = "112959083808887"
        },
        {
            name = "Iate do neymar",
            id = "135738534706063"
        },
        {
            name = "Batidao na aldeia",
            id = "79953696595578"
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        }
    }
}, "Option 1")
v408("Music of Memes", {
    forro = {
        {
            name = "ANXIETY (Amapiano Re-fix)",
            id = "101483901475189"
        },
        {
            name = "Meu corpo, minhas regras",
            id = "127587901595282"
        },
        {
            name = "$$$$gg$$$$gg",
            id = "137471775091253"
        },
        {
            name = "Megalovania but its only the melodies",
            id = "104500091160463"
        },
        {
            name = "androphono strikes back",
            id = "78312089943968"
        },
        {
            name = "Bamm Bamm",
            id = "128730685516895"
        },
        {
            name = "chupa cabra",
            id = "132890273173295"
        },
        {
            name = "longe de mais",
            id = "124478512057763"
        },
        {
            name = "Garoto de Copacabana",
            id = "135648634110254"
        },
        {
            name = "CELL!",
            id = "117634275895085"
        },
        {
            name = "Boa vibe em Ubatuba",
            id = "139059061493558"
        },
        {
            name = "SLIP AWAY",
            id = "126152928520174"
        },
        {
            name = "Alone in Motion",
            id = "122379348696948"
        },
        {
            name = "Fade Away",
            id = "81002139735874"
        },
        {
            name = "Wounds & Wishes",
            id = "109347979566607"
        },
        {
            name = "Ascens\195\163o do Monarca",
            id = "101864243033211"
        },
        {
            name = "carro do ovo",
            id = "3148329638"
        },
        {
            name = "ingles bus (fling ou kill bus)",
            id = "123268013026823"
        },
        {
            name = "MIKU MIKU HATSUNE",
            id = "112783541496955"
        },
        {
            name = "Five Nights at Freddy\'s",
            id = "110733765539890"
        },
        {
            name = "Rat Dance",
            id = "133496635668044"
        },
        {
            name = "Escalando a Sele\195\167\195\163o Brasileira para a Copa",
            id = "116546457407236"
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        }
    }
}, "Option 1")
v408("Funk", {
    Funk = {
        {
            name = "sua mulher funk",
            id = "90844637105538"
        },
        {
            name = "fuga na viatura",
            id = "131891110268352"
        },
        {
            name = "funkphonk fumando verde",
            id = "112143944982807"
        },
        {
            name = "cauma xmara",
            id = "95664293972405"
        },
        {
            name = "que que sharke",
            id = "129546408528391"
        },
        {
            name = "Il Cacto Hipopotamo FUNK",
            id = "104491656009142"
        },
        {
            name = "Espressora Signora FUNK",
            id = "123394392737234"
        },
        {
            name = "trippi troop funk",
            id = "73049389767013"
        },
        {
            name = "bombini funkphonk",
            id = "88814770244609"
        },
        {
            name = "pre treino",
            id = "136869502216760"
        },
        {
            name = "CVRL",
            id = "124244582950595"
        },
        {
            name = "batida Brega Violino (Beat Brega Funk)",
            id = "99399643204701"
        },
        {
            name = "Dan\195\167a do Canguru (Pke Gaz1nh)",
            id = "86876136192157"
        },
        {
            name = "espere 30segundos!! Ondas sonoras",
            id = "127757321382838"
        },
        {
            name = "MONTAGEM ARABIANA (Pke Gaz1nh)",
            id = "78076624091098"
        },
        {
            name = "Manda o papo (NGI)",
            id = "132642647937688"
        },
        {
            name = "Viver bem",
            id = "82805460494325"
        },
        {
            name = "Faixa estronda",
            id = "121187736532042"
        },
        {
            name = "Ritmo Pixelado",
            id = "93928823862203"
        },
        {
            name = "Viagem Sonora",
            id = "79349174602261"
        },
        {
            name = "Melodia Virtual",
            id = "139147474886402"
        },
        {
            name = "Melodia Serena",
            id = "97011217688307"
        },
        {
            name = "SENTA",
            id = "124085422276732"
        },
        {
            name = "TUNG TUNG TUNG TUNG SAHUR PHONK BRASILEIRO",
            id = "120353876640055"
        },
        {
            name = "crazy-lol",
            id = "106958630419629"
        },
        {
            name = "V7",
            id = "80348640826643"
        },
        {
            name = "UIUAH",
            id = "82894376737849"
        },
        {
            name = "meta ritmo",
            id = "110091098283354"
        },
        {
            name = "CAPPUCCINO ASSASSINO (SPEDUP)",
            id = "132733033157915"
        },
        {
            name = "haha (NGI)",
            id = "122114766584918"
        },
        {
            name = "DO PO",
            id = "114207745067816"
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        },
        {
            name = "",
            id = ""
        }
    }
}, "Option 1")
v408("Phonk", {
    phonk = {{name="wyles",id="85385155970460"},{name="phonk kawai",id="91502410121438"},{name="querendo da a bucet@",id="72720721570850"},{name="vem no pocpoc",id="102333419023382"},{name="tatiu wim",id="122871512353520"},{name="novinha sapeca",id="111668097052966"},{name="novinha representa",id="93786060174790"},{name="phonk1",id="77501611905348"},{name="phonk2",id="126887144190812"},{name="phonk osadia",id="88033569921555"},{name="phonk sarra",id="132436320685732"},{name="relaionamento sem crush",id="105832154444494"},{name="phonk3",id="90323407842935"},{name="novinha dan\195\167apanpa",id="132245626038510"},{name="phonk sexoagre\195\167ivo",id="111995323199676"},{name="phonk4",id="115016589376700"},{name="phonk5",id="118740708757685"},{name="phonk6",id="139435437308948"},{name="phonk chapaquente",id="109189438638906"},{name="phonk rajada",id="105126065014034"},{name="rede globo",id="138487820505005"},{name="phonk indiano",id="87968531262747"},{name="vapo do vapo",id="106317184644394"},{name="tutatatutata",id="112068892721408"},{name="phonk slower",id="122852029094656"},{name="phonk9",id="91760524161503"},{name="phonk10",id="73140398421340"},{name="phonk11",id="137962454483542"},{name="phonk12",id="84733736048142"},{name="phonk13",id="106322173003761"},{name="phonk14",id="94604796823780"},{name="phonk15",id="118063577904953"},{name="phonk16",id="115567432786512"},{name="phonk toq",id="71304501822029"},{name="phonk hey",id="132218979961283"},{name="phonk17",id="102708912256857"},{name="phonk18",id="140642559093189"},{name="phonk neve",id="13530439660"},{name="phonk19",id="87863924786534"},{name="phonk20",id="133135085604736"},{name="phonk lento",id="97258811783169"},{name="phonk21",id="92308400487695"},{name="tipo wym",id="88064647826500"},{name="estouradassa1",id="92175624643620"},{name="estouradassa2",id="108099943758978"},{name="Naaaaa",id="109784877184952"},{name="trem",id="114608169341947"},{name="eoropa",id="111346133543699"},{name="atimosphekika",id="77857496821844"},{name="phonk ALL THE TIME",id="123809083385992"},{name="Lifelong Memory",id="81929101024622"},{name="Automotivo Blondie (Pke Gaz1nh)",id="74564219749776"},{name="\239\191\189\239\191\189\224\184\167\224\184\177\224\184\170\224\184\148\224\184\181\224\184\132\224\184\153\224\185\132\224\184\151\224\184\162 v2",id="118225359190317"},{name="MTG TU VAI SENTAR (Pke Gaz1nh)",id="115317874112657"},{name="SARRA FUNK",id="96249826607044"},{name="Catuquanvan",id="88038595663211"},{name="F-D-1 (slowed)",id="124958445624871"},{name="Sucessagem",id="88551699463723"},{name="ILOVE phonksla",id="82148953715595"},{name="SPEED SLIDE",id="118959437310311"},{name="TOMA FUNK PHONK",id="126291069838831"},{name="PASSO BEM SOLTO X NEW JAZZ",id="122706595087279"},{name="MONTAGEM BIONICA DIAMANTE",id="122338822665007"},{name="BALA SELVAGEM!",id="96180057167470"},{name="Luz <3",id="74281337525581"},{name="COMO TU",id="86928685812280"},{name="MONTAGEM SOLAR TROPICANO (SPEED UP)",id="116461681407294"},{name="MONTAGEM SOLAR TROPICANO (SLOWED)",id="109308273341422"},{name="YO DE TI",id="125181345407169"},{name="Beauty, (Phonk), Super sped up",id="71123357599630"},{name="MONTAGEM BOOMBOX DO MALA FUNK",id="86537505028256"},{name="BRAZIL DO FUNK",id="133498554139200"},{name="BRR BRR PATAPIM FUNK",id="117170901476451"},{name="MONTAGEM TERRA BELA FUNK",id="134770548505933"},{name="FUNK DO RAVE 1.0",id="137135395010424"},{name=" Portao Funk",id="70900514961735"},{name=" Espa\195\167o Funk",id="110519906029322"},{name=" FUTABA",id="91834632690710"},{name=" Mel\195\179dica Explos\195\163o De Melodia",id="98371771055411"},{name=" RASGO",id="98267810117949"},{name=" HIPNOTIZA",id="117668905142866"},{name="CRISTAL NOTURNO",id="103695219371872"},{name=" SKY HIGH",id="123517126955383"},{name="MIKU top",id="102771149931910"},{name=" ACABU SO FUNK",id="127870227978818"},{name="CREATIFE FUNK",id="130525387712209"},{name="GOTH FUNK",id="97662362226511"},{name="PORTUGESE FUNK",id="125858109122379"},{name="SUBURBANA",id="139825057894568"},{name="ESPERA LA NOCHE FUNK",id="139768056738146"},{name="SIN PERMISO FUNK",id="92572896648274"},{name="MONTAGEM DACE RAT",id="98711199754623"},{name=" LOVELY FUNK",id="130633105268814"},{name="STORYMODECOOL",id="87115976125426"},{name="BLACK COFFEE FUNK",id="82705137378395"},{name="KOBALT",id="79381341943021"},{name=" andante bacterial",id="105882833374061"},{name="ANGEL Speed Up",id="139593870988593"},{name="LUTA \195\137PICA",id="73966367524216"},{name="MALDITA",id="133814632960968"},{name="DA ZONA NTJ VERSON",id="105770593501071"},{name="HIPNOTIZA",id="132015050363205"},{name="MIDZUKI speed up",id="129151948619922"},{name="movimenta funk",id="114994598691121"},{name="CRISTAL",id="103445348511856"},{name="Letero funkphonk",id="99409598156364"},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""},{name="",id=""}}
}, "Option 1")
local v409 = vu9
local v410 = {
    Name = "Stop",
    Description = "ALL music",
    Callback = function()
        vu386("")
    end
}
vu9.AddButton(v409, v410)
local vu411 = game:GetService("Players")
local vu412 = game:GetService("Workspace")
local vu413 = game:GetService("RunService")
local vu414 = game:GetService("ReplicatedStorage")
local vu415 = vu411.LocalPlayer
local vu416 = nil
local vu417 = false
local vu418 = false
local vu419 = false
local vu420 = nil
local vu421 = nil
local vu422 = nil
local vu423 = nil
local vu424 = {}
local vu425 = nil
local vu426 = nil
local vu427 = nil
local vu428 = nil
local vu429 = false
local vu430 = nil
local vu431 = nil
local vu432 = nil
local v433 = Instance.new("RemoteEvent")
v433.Name = "SetNetworkOwnerEvent_" .. tostring(math.random(1000, 9999))
v433.Parent = vu414
local vu434 = "\r\n    local ReplicatedStorage = game:GetService(\"ReplicatedStorage\")\r\n    local event = ReplicatedStorage:WaitForChild(\"" .. v433.Name .. "\")\r\n    \r\n    event.OnServerEvent:Connect(function(player, part, networkOwner)\r\n        if part and part:IsA(\"BasePart\") then\r\n            pcall(function()\r\n                part:SetNetworkOwner(networkOwner)\r\n                part.Anchored = false\r\n                part.CanCollide = true\r\n                part.CanTouch = true\r\n            end)\r\n        end\r\n    end)\r\n"
pcall(function()
    loadstring(vu434)()
end)
local function vu436()
    local v435 = vu415:WaitForChild("Backpack"):FindFirstChild("CarClient")
    if v435 and v435:IsA("LocalScript") then
        v435.Disabled = true
    end
end
local function vu443()
    local v437 = vu411
    local v438, v439, v440 = ipairs(v437:GetPlayers())
    local v441 = {}
    while true do
        local v442
        v440, v442 = v438(v439, v440)
        if v440 == nil then
            break
        end
        if v442 ~= vu415 then
            table.insert(v441, v442.Name)
        end
    end
    return v441
end
local function vu448(pu444, pu445)
    pcall(function()
        local v446 = pu444:Get()
        local v447 = vu443()
        pu444:Set(v447)
        if v446 and not table.find(v447, v446) then
            pu444:Set("")
            vu416 = nil
            if vu429 then
                stopSpectating()
                if pu445 then
                    pcall(function()
                        pu445:Set(false)
                    end)
                end
            end
            if vu419 or (vu417 or vu418) then
                vu419 = false
                vu417 = false
                vu418 = false
                if vu420 then
                    vu420:Disconnect()
                    vu420 = nil
                end
                if vu421 then
                    vu421:Disconnect()
                    vu421 = nil
                end
                if vu432 then
                    pcall(function()
                        vu432:Set(false)
                    end)
                end
            end
        elseif v446 and table.find(v447, v446) then
            pu444:Set(v446)
        end
    end)
end
local function vu452(p449)
    if vu431 then
        vu431:Disconnect()
        vu431 = nil
    end
    local v450 = vu411:FindFirstChild(p449)
    if v450 and v450 ~= vu415 then
        vu430 = v450
        vu429 = true
        local function vu451()
            if vu429 and vu430 then
                if vu430.Character and vu430.Character:FindFirstChild("Humanoid") then
                    vu412.CurrentCamera.CameraSubject = vu430.Character.Humanoid
                else
                    vu412.CurrentCamera.CameraSubject = nil
                end
            end
        end
        vu451()
        vu431 = vu413.Heartbeat:Connect(function()
            if vu429 then
                pcall(vu451)
            else
                vu431:Disconnect()
                vu431 = nil
            end
        end)
        vu430.CharacterAdded:Connect(function()
            if vu429 then
                vu451()
            end
        end)
    else
        vu429 = false
        vu430 = nil
    end
end
local function vu453()
    if vu431 then
        vu431:Disconnect()
        vu431 = nil
    end
    vu429 = false
    vu430 = nil
    if vu415.Character and vu415.Character:FindFirstChild("Humanoid") then
        vu412.CurrentCamera.CameraSubject = vu415.Character.Humanoid
        vu412.CurrentCamera.CameraType = Enum.CameraType.Custom
    else
        vu412.CurrentCamera.CameraSubject = nil
        vu412.CurrentCamera.CameraType = Enum.CameraType.Custom
    end
end
local function vu468(p454)
    local vu455 = vu411:FindFirstChild(p454)
    if vu455 and vu415.Character and (vu415.Character:FindFirstChild("HumanoidRootPart") and vu455.Character and vu455.Character:FindFirstChild("HumanoidRootPart")) then
        local vu456 = vu415.Character:FindFirstChild("HumanoidRootPart")
        local v457 = vu415.Character:FindFirstChild("Humanoid")
        if not (vu456 and v457) then
            print("Seu personagem n\195\163o est\195\161 totalmente carregado para teletransporte.")
            return
        end
        local v458, v459, v460 = ipairs(vu415.Character:GetDescendants())
        while true do
            local v461
            v460, v461 = v458(v459, v460)
            if v460 == nil then
                break
            end
            if v461:IsA("BasePart") then
                v461.Velocity = Vector3.zero
                v461.RotVelocity = Vector3.zero
                v461.Anchored = true
            end
        end
        local v462, v463 = pcall(function()
            vu456.CFrame = CFrame.new(vu455.Character.HumanoidRootPart.Position + Vector3.new(0, 2, 0))
        end)
        if not v462 then
            warn("Erro ao teletransportar: " .. tostring(v463))
            return
        end
        v457.Sit = false
        v457:ChangeState(Enum.HumanoidStateType.GettingUp)
        task.wait(0.5)
        local v464, v465, v466 = ipairs(vu415.Character:GetDescendants())
        while true do
            local v467
            v466, v467 = v464(v465, v466)
            if v466 == nil then
                break
            end
            if v467:IsA("BasePart") then
                v467.Anchored = false
                v467.Velocity = Vector3.zero
                v467.RotVelocity = Vector3.zero
            end
        end
        print("Teletransportado para o jogador: " .. p454 .. " com ancoragem segura.")
    else
        print("Jogador ou personagem n\195\163o encontrado para teletransporte.")
    end
end
vu415.CharacterAdded:Connect(function(_)
    if vu429 then
        vu453()
        pcall(function()
            SpectateToggleTab10:Set(false)
        end)
    end
end)
local vu469 = nil
local vu471 = v10:AddDropdown({
    Name = "Select Player",
    Description = "Select Player To Fling",
    Default = "",
    Multi = false,
    Options = vu443(),
    Flag = "player list",
    Callback = function(p470)
        vu469 = p470
        if p470 == "" or p470 == nil then
            vu416 = nil
            if vu419 or (vu417 or vu418) then
                vu419 = false
                vu417 = false
                vu418 = false
                if vu420 then
                    vu420:Disconnect()
                end
                if vu421 then
                    vu421:Disconnect()
                end
                if vu432 then
                    pcall(function()
                        vu432:Set(false)
                    end)
                end
            end
            if vu429 then
                vu453()
            end
        else
            vu416 = vu411:FindFirstChild(p470)
            if vu429 then
                vu453()
                vu452(p470)
            end
        end
    end
})
vu175 = function()
    local v472 = vu411
    local v473, v474, v475 = ipairs(v472:GetPlayers())
    local v476 = {}
    while true do
        local v477
        v475, v477 = v473(v474, v475)
        if v475 == nil then
            break
        end
        if v477.Name ~= vu415.Name then
            table.insert(v476, v477.Name)
        end
    end
    vu471:Set(v476)
end
v10:AddButton({
    "Refresh list",
    function()
        vu175()
    end
})
vu175()
v10:AddButton({
    Title = "Teleport To Selected Player",
    Desc = "",
    Callback = function()
        local v478 = vu469
        if v478 and v478 ~= "" then
            local v479, v480 = pcall(vu468, v478)
            if not v479 then
                warn("Erro ao teletransportar: " .. tostring(v480))
            end
        else
            print("Selecione um jogador antes de teletransportar.")
        end
    end
})
local vu482 = v10:AddToggle({
    Name = "View Selected Player",
    Description = "",
    Default = false,
    Callback = function(p481)
        if p481 then
            if vu416 then
                pcall(vu452, vu416.Name)
            else
                SpectateToggleTab10:Set(false)
            end
        else
            pcall(vu453)
        end
    end
})
vu411.PlayerRemoving:Connect(function(p483)
    vu448(vu471, vu482)
    if vu416 == p483 then
        vu416 = nil
        if vu429 then
            vu453()
        end
        if vu419 then
            vu419 = false
            if vu420 then
                vu420:Disconnect()
                vu420 = nil
            end
            if vu421 then
                vu421:Disconnect()
                vu421 = nil
            end
            if vu432 then
                vu432:Set(false)
            end
        end
        vu482:Set(false)
        vu471:Set("")
    end
end)
vu411.PlayerAdded:Connect(function()
    task.wait(1)
    vu448(vu471, vu482)
end)
vu448(vu471, vu482)
v10:AddSection({
    "Kill"
})
v10:AddDropdown({
    Name = "Select Method To (Pull/Kill)",
    Description = "",
    Options = {
        "Sofa",
        "Bus"
    },
    Callback = function(p484)
        vu425 = p484
    end
})
local function vu488()
    local v485 = vu415:WaitForChild("Backpack")
    local v486 = v485:FindFirstChild("Couch") or vu415.Character:FindFirstChild("Couch")
    if not v486 then
        local vu487 = {
            "PickingTools",
            "Couch"
        }
        if not pcall(function()
            vu414:WaitForChild("RE"):WaitForChild("1Too1l"):InvokeServer(unpack(vu487))
        end) then
            return false
        end
        repeat
            v486 = v485:FindFirstChild("Couch")
            task.wait()
        until v486 or task.wait(5)
        if not v486 then
            return false
        end
    end
    if v486.Parent ~= vu415.Character then
        v486.Parent = vu415.Character
    end
    return true
end
local function vu490(p489)
    if p489 and (p489.Character and vu415.Character) then
        if vu488() then
            vu417 = true
            vu422 = vu415.Character:FindFirstChild("HumanoidRootPart").Position
        end
    else
        return
    end
end
local function vu492(p491)
    if p491 and (p491.Character and vu415.Character) then
        if vu488() then
            vu418 = true
            vu422 = vu415.Character:FindFirstChild("HumanoidRootPart").Position
        end
    else
        return
    end
end
local function vu538(pu493)
    if pu493 and (pu493.Character and vu415.Character) then
        local vu494 = vu415.Character
        local vu495 = vu494:FindFirstChildOfClass("Humanoid")
        local vu496 = vu494:FindFirstChild("HumanoidRootPart")
        if vu495 and vu496 then
            vu423 = vu496.Position
            pcall(function()
                vu496.Anchored = true
                vu496.CFrame = CFrame.new(Vector3.new(1181.83, 76.08, - 1158.83))
                task.wait(0.2)
                vu496.Velocity = Vector3.zero
                vu496.RotVelocity = Vector3.zero
                vu496.Anchored = false
                if vu495 then
                    vu495:ChangeState(Enum.HumanoidStateType.GettingUp)
                end
            end)
            task.wait(0.5)
            vu436()
            local vu497 = {
                "DeleteAllVehicles"
            }
            pcall(function()
                vu414:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(vu497))
            end)
            vu497 = {
                "PickingCar",
                "SchoolBus"
            }
            pcall(function()
                vu414:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(vu497))
            end)
            task.wait(1)
            local v498 = vu412:FindFirstChild("Vehicles")
            if v498 then
                local vu499 = v498:FindFirstChild(vu415.Name .. "Car")
                if vu499 then
                    pcall(function()
                        vu496.Anchored = true
                        vu496.CFrame = CFrame.new(Vector3.new(1171.15, 79.45, - 1166.2))
                        task.wait(0.2)
                        vu496.Velocity = Vector3.zero
                        vu496.RotVelocity = Vector3.zero
                        vu496.Anchored = false
                        vu495:ChangeState(Enum.HumanoidStateType.Seated)
                    end)
                    local v500 = tick()
                    while true do
                        task.wait()
                        if tick() - v500 > 10 then
                            break
                        end
                        if vu495.Sit then
                            local v501, v502, v503 = ipairs(vu499:GetDescendants())
                            while true do
                                local v504, vu505 = v501(v502, v503)
                                if v504 == nil then
                                    break
                                end
                                v503 = v504
                                if vu505:IsA("BasePart") then
                                    vu505.CanCollide = false
                                    pcall(function()
                                        vu505:SetNetworkOwner(nil)
                                    end)
                                end
                            end
                            vu419 = true
                            vu420 = vu413.Stepped:Connect(function()
                                if vu419 then
                                    local v506 = vu494
                                    local v507, v508, v509 = ipairs(v506:GetDescendants())
                                    while true do
                                        local v510
                                        v509, v510 = v507(v508, v509)
                                        if v509 == nil then
                                            break
                                        end
                                        if v510:IsA("BasePart") then
                                            v510.CanCollide = false
                                        end
                                    end
                                end
                            end)
                            local vu511 = tick()
                            local vu512 = 0.05
                            local vu513 = tick()
                            vu421 = vu413.Heartbeat:Connect(function()
                                if not vu419 then
                                    return
                                end
                                local v514 = pu493.Character or pu493.CharacterAdded:Wait()
                                local vu515 = v514:FindFirstChild("HumanoidRootPart")
                                local v516 = v514:FindFirstChild("Humanoid")
                                if not (vu515 and v516) then
                                    return
                                end
                                if not (vu496 and vu495) then
                                    vu419 = false
                                    return
                                end
                                if tick() - vu511 < vu512 then
                                    return
                                end
                                vu511 = tick()
                                local vu517 = Vector3.new(math.random(- 10, 10), 0, math.random(- 10, 10))
                                pcall(function()
                                    local v518 = vu515.Position + vu517
                                    vu499:PivotTo(CFrame.new(v518) * CFrame.Angles(math.rad(vu412.DistributedGameTime * 12000), math.rad(vu412.DistributedGameTime * 15000), math.rad(vu412.DistributedGameTime * 18000)))
                                end)
                                local v519 = vu499
                                local v520, v521, v522 = ipairs(v519:GetDescendants())
                                local v523 = false
                                while true do
                                    local v524
                                    v522, v524 = v520(v521, v522)
                                    if v522 == nil then
                                        break
                                    end
                                    if (v524:IsA("Seat") or v524:IsA("VehicleSeat")) and (v524.Name ~= "VehicleSeat" and v524.Occupant == v516) then
                                        v523 = true
                                        break
                                    end
                                end
                                if v523 or tick() - vu513 > 10 then
                                    vu419 = false
                                    if vu420 then
                                        vu420:Disconnect()
                                        vu420 = nil
                                    end
                                    if vu421 then
                                        vu421:Disconnect()
                                        vu421 = nil
                                    end
                                    pcall(function()
                                        vu499:PivotTo(CFrame.new(Vector3.new(- 76.6, - 401.97, - 84.26)))
                                    end)
                                    task.wait(0.5)
                                    vu436()
                                    local vu525 = {
                                        "DeleteAllVehicles"
                                    }
                                    pcall(function()
                                        vu414:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(vu525))
                                    end)
                                    if vu494 then
                                        local vu526 = vu494:FindFirstChild("HumanoidRootPart")
                                        if vu526 and vu423 then
                                            pcall(function()
                                                vu526.Anchored = true
                                                vu526.CFrame = CFrame.new(vu423 + Vector3.new(0, 5, 0))
                                                task.wait(0.2)
                                                vu526.Velocity = Vector3.zero
                                                vu526.RotVelocity = Vector3.zero
                                                vu526.Anchored = false
                                                if vu495 then
                                                    vu495:ChangeState(Enum.HumanoidStateType.GettingUp)
                                                end
                                            end)
                                        end
                                    end
                                    if vu494 then
                                        local v527 = vu494
                                        local v528, v529, v530 = ipairs(v527:GetDescendants())
                                        while true do
                                            local v531
                                            v530, v531 = v528(v529, v530)
                                            if v530 == nil then
                                                break
                                            end
                                            if v531:IsA("BasePart") then
                                                v531.CanCollide = true
                                                v531.Velocity = Vector3.zero
                                                v531.RotVelocity = Vector3.zero
                                            end
                                        end
                                    end
                                    local v532 = vu494
                                    if v532 then
                                        v532 = vu494:FindFirstChild("Humanoid")
                                    end
                                    if v532 then
                                        v532:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                                    end
                                    local v533 = vu412
                                    local v534, v535, v536 = ipairs(v533:GetDescendants())
                                    while true do
                                        local v537
                                        v536, v537 = v534(v535, v536)
                                        if v536 == nil then
                                            break
                                        end
                                        if v537:IsA("Seat") or v537:IsA("VehicleSeat") then
                                            v537.Disabled = false
                                        end
                                    end
                                    pcall(function()
                                        vu414:WaitForChild("RE"):WaitForChild("1Clothe1s"):FireServer("CharacterSizeUp", 1)
                                    end)
                                end
                            end)
                            return
                        end
                    end
                end
            else
                return
            end
        else
            return
        end
    else
        return
    end
end
local v539 = nil
if v539 then
    v539:Disconnect()
end
vu413.Heartbeat:Connect(function()
    if (vu417 or vu418) and (vu416 and vu415.Character) and (vu415.Character:FindFirstChild("HumanoidRootPart") and vu416.Character and vu416.Character:FindFirstChild("HumanoidRootPart")) then
        pcall(function()
            local v540 = vu416.Character.HumanoidRootPart.Position
            vu415.Character:SetPrimaryPartCFrame(CFrame.new(v540) * CFrame.Angles(math.rad(vu412.DistributedGameTime * 12000), math.rad(vu412.DistributedGameTime * 15000), math.rad(vu412.DistributedGameTime * 18000)))
        end)
    end
end)
local v541 = nil
if v541 then
    v541:Disconnect()
end
vu413.Heartbeat:Connect(function()
    if (vu417 or vu418) and (vu416 and vu416.Character) and vu416.Character:FindFirstChild("Humanoid") then
        pcall(function()
            if vu416.Character.Humanoid.Sit then
                if vu417 and vu415.Character and vu415.Character:FindFirstChild("HumanoidRootPart") then
                    vu415.Character:SetPrimaryPartCFrame(CFrame.new(0, - 500, 0))
                    task.wait(0.5)
                    vu414:WaitForChild("RE"):WaitForChild("1Too1l"):InvokeServer("PickingTools", "Couch")
                    task.wait(1)
                end
                vu417 = false
                vu418 = false
                if vu415.Character and (vu415.Character:FindFirstChild("HumanoidRootPart") and vu422) then
                    local v542 = vu415.Character:FindFirstChild("HumanoidRootPart")
                    local v543 = vu415.Character:FindFirstChild("Humanoid")
                    if v542 then
                        v542.Anchored = true
                        v542.CFrame = CFrame.new(vu422 + Vector3.new(0, 5, 0))
                        task.wait(0.2)
                        v542.Velocity = Vector3.zero
                        v542.RotVelocity = Vector3.zero
                        v542.Anchored = false
                        if v543 then
                            v543:ChangeState(Enum.HumanoidStateType.GettingUp)
                        end
                    end
                    vu422 = nil
                end
            end
        end)
    end
end)
v10:AddButton({
    Name = "Start The Kill",
    Description = "",
    Callback = function()
        if vu417 or (vu418 or vu419) then
            return
        elseif vu416 and vu425 then
            if vu425 ~= "Sof\195\161" then
                if vu425 == "\239\191\189nibus" then
                    vu538(vu416)
                end
            else
                vu490(vu416)
            end
        end
    end
})
v10:AddButton({
    Name = "Pull",
    Description = "",
    Callback = function()
        if vu417 or (vu418 or vu419) then
            return
        elseif vu416 and (vu425 and vu425 == "Sof\195\161") then
            vu492(vu416)
        end
    end
})
v10:AddButton({
    Name = "Stop (Kill or Pull)",
    Description = "",
    Callback = function()
        vu417 = false
        vu418 = false
        local v544, v545, v546 = ipairs(vu415.Character:GetDescendants())
        while true do
            local v547
            v546, v547 = v544(v545, v546)
            if v546 == nil then
                break
            end
            if v547:IsA("BasePart") then
                v547.CanCollide = true
                v547.Velocity = Vector3.zero
                v547.RotVelocity = Vector3.zero
            end
        end
        local v548 = vu415.Character:FindFirstChild("Humanoid")
        if v548 then
            v548:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        end
        local v549 = vu412
        local v550, v551, v552 = ipairs(v549:GetDescendants())
        while true do
            local v553
            v552, v553 = v550(v551, v552)
            if v552 == nil then
                break
            end
            if v553:IsA("Seat") or v553:IsA("VehicleSeat") then
                v553.Disabled = false
            end
        end
        if vu422 then
            local v554 = vu415.Character:FindFirstChild("HumanoidRootPart")
            if v554 then
                v554.Anchored = true
                v554.CFrame = CFrame.new(vu422 + Vector3.new(0, 5, 0))
                task.wait(0.2)
                v554.Velocity = Vector3.zero
                v554.RotVelocity = Vector3.zero
                v554.Anchored = false
                if v548 then
                    v548:ChangeState(Enum.HumanoidStateType.GettingUp)
                end
            end
            vu422 = nil
        end
        vu436()
        local vu555 = {
            "DeleteAllVehicles"
        }
        pcall(function()
            vu414:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(vu555))
        end)
    end
})
v10:AddSection({
    " flings"
})
v10:AddDropdown({
    Name = "Select Metode Fling",
    Description = "",
    Options = {
        "Sofa",
        "Bus",
        "Ball",
        "Ball V2",
        "Ship",
        "Truck"
    },
    Callback = function(p556)
        vu426 = p556
    end
})
local function vu590(pu557)
    if not (pu557 and (pu557.Character and vu415.Character)) then
        return
    end
    local vu558 = vu415.Character or vu415.CharacterAdded:Wait()
    local vu559 = vu558:FindFirstChildOfClass("Humanoid")
    local vu560 = vu558:FindFirstChild("HumanoidRootPart")
    if not (vu559 and vu560) then
        return
    end
    vu423 = vu560.Position
    if not vu488() then
        return
    end
    task.wait(0.5)
    vu428 = vu558:FindFirstChild("Couch")
    if not vu428 then
        local v561 = vu412
        local v562, v563, v564 = ipairs(v561:GetDescendants())
        while true do
            local v565
            v564, v565 = v562(v563, v564)
            if v564 == nil then
                break
            end
            if (v565.Name == "Couch" or v565.Name == "Couch" .. vu415.Name) and (v565:IsA("BasePart") or v565:IsA("Tool")) then
                vu428 = v565
                break
            end
        end
    end
    if vu428 then
        if vu428:IsA("BasePart") then
            vu424 = {
                Anchored = vu428.Anchored,
                CanCollide = vu428.CanCollide,
                CanTouch = vu428.CanTouch
            }
            vu428.Anchored = false
            vu428.CanCollide = true
            vu428.CanTouch = true
            pcall(function()
                vu428:SetNetworkOwner(nil)
            end)
        end
        vu419 = true
        vu420 = vu413.Stepped:Connect(function()
            if vu419 then
                local v566 = vu558
                local v567, v568, v569 = ipairs(v566:GetDescendants())
                while true do
                    local v570
                    v569, v570 = v567(v568, v569)
                    if v569 == nil then
                        break
                    end
                    if v570:IsA("BasePart") then
                        v570.CanCollide = false
                    end
                end
            end
        end)
        local vu571 = tick()
        local vu572 = nil
        vu421 = vu413.Heartbeat:Connect(function()
            if vu419 then
                if pu557 and pu557.Character then
                    local vu573 = pu557.Character:FindFirstChild("HumanoidRootPart")
                    local v574 = pu557.Character:FindFirstChild("Humanoid")
                    if vu573 and v574 then
                        if vu560 and vu559 then
                            pcall(function()
                                local v575 = vu573.Position
                                vu558:SetPrimaryPartCFrame(CFrame.new(v575) * CFrame.Angles(math.rad(vu412.DistributedGameTime * 12000), math.rad(vu412.DistributedGameTime * 15000), math.rad(vu412.DistributedGameTime * 18000)))
                            end)
                            if v574.Sit or tick() - vu571 > 10 then
                                vu419 = false
                                vu421:Disconnect()
                                vu421 = nil
                                local v576 = vu558
                                local v577, v578, v579 = ipairs(v576:GetDescendants())
                                while true do
                                    local v580, vu581 = v577(v578, v579)
                                    if v580 == nil then
                                        break
                                    end
                                    v579 = v580
                                    if vu581:IsA("BasePart") then
                                        vu581.CanCollide = false
                                        pcall(function()
                                            vu581:SetNetworkOwner(nil)
                                        end)
                                    end
                                end
                                vu572 = Instance.new("BodyVelocity")
                                vu572.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                vu572.Velocity = Vector3.new(math.random(- 5, 5), 5, math.random(- 5, 5)).Unit * 1000000 + Vector3.new(0, 1000000, 0)
                                vu572.Parent = vu560
                                pcall(function()
                                    vu560.Anchored = true
                                    vu560.CFrame = CFrame.new(Vector3.new(- 59599.73, 2040070.5, - 293391.16))
                                    vu560.Anchored = false
                                end)
                                local vu582 = tick()
                                local vu583 = nil
                                vu583 = vu413.Heartbeat:Connect(function()
                                    if tick() - vu582 < 0.5 then
                                        pcall(function()
                                            vu558:SetPrimaryPartCFrame(vu560.CFrame * CFrame.Angles(math.rad(vu412.DistributedGameTime * 12000), math.rad(vu412.DistributedGameTime * 15000), math.rad(vu412.DistributedGameTime * 18000)))
                                        end)
                                    else
                                        vu583:Disconnect()
                                    end
                                end)
                                task.wait(0.5)
                                local vu584 = {
                                    "PlayerWantsToDeleteTool",
                                    "Couch"
                                }
                                pcall(function()
                                    vu414:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(vu584))
                                end)
                                pcall(function()
                                    vu560.Anchored = true
                                    vu560.CFrame = CFrame.new(vu423 + Vector3.new(0, 5, 0))
                                    task.wait(0.2)
                                    vu560.Velocity = Vector3.zero
                                    vu560.RotVelocity = Vector3.zero
                                    vu560.Anchored = false
                                    if vu559 then
                                        vu559:ChangeState(Enum.HumanoidStateType.GettingUp)
                                    end
                                end)
                                if vu572 then
                                    vu572:Destroy()
                                    local v585 = vu558
                                    local v586, v587, v588 = ipairs(v585:GetDescendants())
                                    while true do
                                        local v589
                                        v588, v589 = v586(v587, v588)
                                        if v588 == nil then
                                            break
                                        end
                                        if v589:IsA("BasePart") then
                                            v589.CanCollide = true
                                        end
                                    end
                                end
                                if vu432 then
                                    vu432:SetValue(false)
                                end
                            end
                        else
                            vu419 = false
                        end
                    else
                        vu419 = false
                        return
                    end
                else
                    vu419 = false
                    return
                end
            else
                return
            end
        end)
    end
end
local function vu594()
    local v591 = vu415:WaitForChild("Backpack")
    local v592 = v591:FindFirstChild("SoccerBall") or vu415.Character:FindFirstChild("SoccerBall")
    if not v592 then
        local vu593 = {
            "PickingTools",
            "SoccerBall"
        }
        if not pcall(function()
            vu414:WaitForChild("RE"):WaitForChild("1Too1l"):InvokeServer(unpack(vu593))
        end) then
            return false
        end
        repeat
            v592 = v591:FindFirstChild("SoccerBall")
            task.wait()
        until v592 or task.wait(5)
        if not v592 then
            return false
        end
    end
    if v592.Parent ~= vu415.Character then
        v592.Parent = vu415.Character
    end
    return true
end
local function vu630(pu595)
    if pu595 and pu595.Character then
        local v596 = vu415.Character or vu415.CharacterAdded:Wait()
        local v597 = v596:FindFirstChildOfClass("Humanoid")
        local v598 = v596:FindFirstChild("HumanoidRootPart")
        if v597 and v598 then
            if vu594() then
                task.wait(0.5)
                local vu599 = {
                    "PlayerWantsToDeleteTool",
                    "SoccerBall"
                }
                pcall(function()
                    vu414:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(vu599))
                end)
                local v600 = vu412:FindFirstChild("WorkspaceCom")
                if v600 then
                    local v601 = v600:FindFirstChild("001_SoccerBalls")
                    if v601 then
                        vu427 = v601:FindFirstChild("Soccer" .. vu415.Name)
                        if vu427 then
                            vu424 = {
                                Anchored = vu427.Anchored,
                                CanCollide = vu427.CanCollide,
                                CanTouch = vu427.CanTouch
                            }
                            vu427.Anchored = false
                            vu427.CanCollide = true
                            vu427.CanTouch = true
                            pcall(function()
                                vu427:SetNetworkOwner(nil)
                            end)
                            vu423 = v598.Position
                            local v602, v603, v604 = ipairs(v596:GetDescendants())
                            while true do
                                local v605
                                v604, v605 = v602(v603, v604)
                                if v604 == nil then
                                    break
                                end
                                if v605:IsA("BasePart") then
                                    v605.CanCollide = false
                                end
                            end
                            if v597 then
                                v597:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                                v597.Sit = false
                            end
                            local v606 = vu412
                            local v607, v608, v609 = ipairs(v606:GetDescendants())
                            while true do
                                local v610
                                v609, v610 = v607(v608, v609)
                                if v609 == nil then
                                    break
                                end
                                if v610:IsA("Seat") or v610:IsA("VehicleSeat") then
                                    v610.Disabled = true
                                end
                            end
                            pcall(function()
                                vu414:WaitForChild("RE"):WaitForChild("1Clothe1s"):FireServer("CharacterSizeDown", 4)
                            end)
                            vu419 = true
                            local vu611 = 0
                            vu420 = vu413.Heartbeat:Connect(function()
                                if vu419 and pu595.Character then
                                    local v612 = pu595.Character:FindFirstChild("HumanoidRootPart")
                                    local v613 = pu595.Character:FindFirstChild("Humanoid")
                                    local v614 = vu415.Character:FindFirstChild("HumanoidRootPart")
                                    if v612 and (v613 and v614) then
                                        local v615 = v613.MoveDirection
                                        local v616 = v615.Magnitude < 0.1
                                        if v613.Sit then
                                            local v617 = math.sin(tick() * 50) * 2
                                            vu427.CFrame = CFrame.new(v612.Position + Vector3.new(0, 0.75 + v617, 0))
                                        elseif v616 then
                                            local v618 = math.sin(tick() * 50) * 3
                                            vu427.CFrame = CFrame.new(v612.Position + Vector3.new(0, 0.75, v618))
                                        else
                                            local v619 = v615.Unit * math.clamp(v612.Velocity.Magnitude * 0.15, 5, 12)
                                            vu427.CFrame = CFrame.new(v612.Position + v619 + Vector3.new(0, 0.75, 0))
                                        end
                                        v614.CFrame = CFrame.new(vu427.Position + Vector3.new(0, 1, 0))
                                    end
                                else
                                    return
                                end
                            end)
                            vu421 = vu413.Heartbeat:Connect(function()
                                if vu419 and pu595.Character then
                                    local v620 = pu595.Character:FindFirstChild("HumanoidRootPart")
                                    if v620 then
                                        if (vu427.Position - v620.Position).Magnitude < 4 and tick() - vu611 > 0.4 then
                                            vu611 = tick()
                                            local v621, v622, v623 = ipairs(pu595.Character:GetDescendants())
                                            while true do
                                                local v624
                                                v623, v624 = v621(v622, v623)
                                                if v623 == nil then
                                                    break
                                                end
                                                if v624:IsA("BasePart") then
                                                    v624.CanCollide = false
                                                end
                                            end
                                            local vu625 = Instance.new("BodyVelocity")
                                            vu625.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                            vu625.Velocity = Vector3.new(math.random(- 5, 5), 5, math.random(- 5, 5)).Unit * 500000 + Vector3.new(0, 250000, 0)
                                            vu625.Parent = v620
                                            task.delay(0.3, function()
                                                vu625:Destroy()
                                                local v626, v627, v628 = ipairs(pu595.Character:GetDescendants())
                                                while true do
                                                    local v629
                                                    v628, v629 = v626(v627, v628)
                                                    if v628 == nil then
                                                        break
                                                    end
                                                    if v629:IsA("BasePart") then
                                                        v629.CanCollide = true
                                                    end
                                                end
                                            end)
                                        end
                                    end
                                else
                                    return
                                end
                            end)
                        end
                    else
                        return
                    end
                else
                    return
                end
            else
                return
            end
        else
            return
        end
    else
        return
    end
end
local function vu654(pu631)
    if pu631 and pu631.Character then
        local v632 = (vu415.Character or vu415.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
        if v632 then
            if vu594() then
                task.wait(0.5)
                local vu633 = {
                    "PlayerWantsToDeleteTool",
                    "SoccerBall"
                }
                pcall(function()
                    vu414:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(vu633))
                end)
                local v634 = vu412:FindFirstChild("WorkspaceCom")
                if v634 then
                    local v635 = v634:FindFirstChild("001_SoccerBalls")
                    if v635 then
                        vu427 = v635:FindFirstChild("Soccer" .. vu415.Name)
                        if vu427 then
                            vu424 = {
                                Anchored = vu427.Anchored,
                                CanCollide = vu427.CanCollide,
                                CanTouch = vu427.CanTouch
                            }
                            vu427.Anchored = false
                            vu427.CanCollide = true
                            vu427.CanTouch = true
                            pcall(function()
                                vu427:SetNetworkOwner(nil)
                            end)
                            vu423 = v632.Position
                            vu419 = true
                            local vu636 = 0
                            vu420 = vu413.Heartbeat:Connect(function()
                                if vu419 and pu631.Character then
                                    local vu637 = pu631.Character:FindFirstChild("HumanoidRootPart")
                                    local v638 = pu631.Character:FindFirstChild("Humanoid")
                                    if vu637 and v638 then
                                        local v639 = vu637.Velocity.Magnitude
                                        local vu640
                                        if v638.MoveDirection.Magnitude > 0.05 or v638:GetState() == Enum.HumanoidStateType.Jumping then
                                            local v641 = math.clamp(v639 / 1.5, 6, 15)
                                            vu640 = vu637.CFrame.LookVector * v641 + Vector3.new(0, 1, 0)
                                        else
                                            local v642 = math.sin(tick() * 25) * 4
                                            local v643 = math.cos(tick() * 20) * 1.5
                                            vu640 = Vector3.new(v643, 1, v642)
                                        end
                                        pcall(function()
                                            vu427.CFrame = CFrame.new(vu637.Position + vu640)
                                            vu427.AssemblyLinearVelocity = Vector3.new(9999, 9999, 9999)
                                        end)
                                    end
                                else
                                    return
                                end
                            end)
                            vu421 = vu413.Heartbeat:Connect(function()
                                if vu419 and pu631.Character then
                                    local v644 = pu631.Character:FindFirstChild("HumanoidRootPart")
                                    if v644 then
                                        if (vu427.Position - v644.Position).Magnitude < 4 and tick() - vu636 > 0.4 then
                                            vu636 = tick()
                                            local v645, v646, v647 = ipairs(pu631.Character:GetDescendants())
                                            while true do
                                                local v648
                                                v647, v648 = v645(v646, v647)
                                                if v647 == nil then
                                                    break
                                                end
                                                if v648:IsA("BasePart") then
                                                    v648.CanCollide = false
                                                end
                                            end
                                            local vu649 = Instance.new("BodyVelocity")
                                            vu649.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                            vu649.Velocity = Vector3.new(math.random(- 5, 5), 5, math.random(- 5, 5)).Unit * 500000 + Vector3.new(0, 250000, 0)
                                            vu649.Parent = v644
                                            task.delay(0.3, function()
                                                vu649:Destroy()
                                                local v650, v651, v652 = ipairs(pu631.Character:GetDescendants())
                                                while true do
                                                    local v653
                                                    v652, v653 = v650(v651, v652)
                                                    if v652 == nil then
                                                        break
                                                    end
                                                    if v653:IsA("BasePart") then
                                                        v653.CanCollide = true
                                                    end
                                                end
                                            end)
                                        end
                                    end
                                else
                                    return
                                end
                            end)
                        end
                    else
                        return
                    end
                else
                    return
                end
            else
                return
            end
        else
            return
        end
    else
        return
    end
end
local function vu690(pu655)
    if pu655 and (pu655.Character and vu415.Character) then
        local vu656 = vu415.Character or vu415.CharacterAdded:Wait()
        local vu657 = vu656:FindFirstChildOfClass("Humanoid")
        local vu658 = vu656:FindFirstChild("HumanoidRootPart")
        if vu657 and vu658 then
            vu423 = vu658.Position
            pcall(function()
                vu658.Anchored = true
                vu658.CFrame = CFrame.new(Vector3.new(1181.83, 76.08, - 1158.83))
                task.wait(0.2)
                vu658.Velocity = Vector3.zero
                vu658.RotVelocity = Vector3.zero
                vu658.Anchored = false
                if vu657 then
                    vu657:ChangeState(Enum.HumanoidStateType.GettingUp)
                end
            end)
            task.wait(0.5)
            vu436()
            local vu659 = {
                "DeleteAllVehicles"
            }
            pcall(function()
                vu414:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(vu659))
            end)
            vu659 = {
                "PickingCar",
                "SchoolBus"
            }
            pcall(function()
                vu414:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(vu659))
            end)
            task.wait(1)
            local v660 = vu412:FindFirstChild("Vehicles")
            if v660 then
                local vu661 = v660:FindFirstChild(vu415.Name .. "Car")
                if vu661 then
                    pcall(function()
                        vu658.Anchored = true
                        vu658.CFrame = CFrame.new(Vector3.new(1171.15, 79.45, - 1166.2))
                        task.wait(0.2)
                        vu658.Velocity = Vector3.zero
                        vu658.RotVelocity = Vector3.zero
                        vu658.Anchored = false
                        vu657:ChangeState(Enum.HumanoidStateType.Seated)
                    end)
                    local v662 = tick()
                    while true do
                        task.wait()
                        if tick() - v662 > 10 then
                            break
                        end
                        if vu657.Sit then
                            local v663, v664, v665 = ipairs(vu661:GetDescendants())
                            while true do
                                local vu666
                                v665, vu666 = v663(v664, v665)
                                if v665 == nil then
                                    break
                                end
                                if vu666:IsA("BasePart") then
                                    vu666.CanCollide = false
                                    pcall(function()
                                        vu666:SetNetworkOwner(nil)
                                    end)
                                end
                            end
                            vu419 = true
                            vu420 = vu413.Stepped:Connect(function()
                                if vu419 then
                                    local v667 = vu656
                                    local v668, v669, v670 = ipairs(v667:GetDescendants())
                                    while true do
                                        local v671
                                        v670, v671 = v668(v669, v670)
                                        if v670 == nil then
                                            break
                                        end
                                        if v671:IsA("BasePart") then
                                            v671.CanCollide = false
                                        end
                                    end
                                end
                            end)
                            local vu672 = tick()
                            local vu673 = nil
                            vu421 = vu413.Heartbeat:Connect(function()
                                if not vu419 then
                                    return
                                end
                                if not (pu655 and pu655.Character) then
                                    vu419 = false
                                    return
                                end
                                local vu674 = pu655.Character:FindFirstChild("HumanoidRootPart")
                                local v675 = pu655.Character:FindFirstChild("Humanoid")
                                if not (vu674 and v675) then
                                    vu419 = false
                                    return
                                end
                                if not (vu658 and vu657) then
                                    vu419 = false
                                    return
                                end
                                local vu676 = Vector3.new(math.random(- 10, 10), 0, math.random(- 10, 10))
                                pcall(function()
                                    local v677 = vu674.Position + vu676
                                    vu661:PivotTo(CFrame.new(v677) * CFrame.Angles(math.rad(vu412.DistributedGameTime * 12000), math.rad(vu412.DistributedGameTime * 15000), math.rad(vu412.DistributedGameTime * 18000)))
                                end)
                                local v678 = vu661
                                local v679, v680, v681 = ipairs(v678:GetDescendants())
                                local v682 = false
                                while true do
                                    local v683
                                    v681, v683 = v679(v680, v681)
                                    if v681 == nil then
                                        break
                                    end
                                    if (v683:IsA("Seat") or v683:IsA("VehicleSeat")) and (v683.Name ~= "VehicleSeat" and v683.Occupant == v675) then
                                        v682 = true
                                        break
                                    end
                                end
                                if v682 or tick() - vu672 > 10 then
                                    vu419 = false
                                    vu421:Disconnect()
                                    vu421 = nil
                                    pcall(function()
                                        vu661:PivotTo(CFrame.new(Vector3.new(- 59599.73, 2040070.5, - 293391.16)))
                                    end)
                                    vu673 = Instance.new("BodyVelocity")
                                    vu673.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                    vu673.Velocity = Vector3.new(math.random(- 5, 5), 5, math.random(- 5, 5)).Unit * 1000000 + Vector3.new(0, 1000000, 0)
                                    vu673.Parent = vu658
                                    task.wait(0.5)
                                    vu436()
                                    local vu684 = {
                                        "DeleteAllVehicles"
                                    }
                                    pcall(function()
                                        vu414:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(vu684))
                                    end)
                                    if vu673 then
                                        vu673:Destroy()
                                        local v685 = vu656
                                        local v686, v687, v688 = ipairs(v685:GetDescendants())
                                        while true do
                                            local v689
                                            v688, v689 = v686(v687, v688)
                                            if v688 == nil then
                                                break
                                            end
                                            if v689:IsA("BasePart") then
                                                v689.CanCollide = true
                                            end
                                        end
                                    end
                                    pcall(function()
                                        vu658.Anchored = true
                                        vu658.CFrame = CFrame.new(vu423 + Vector3.new(0, 5, 0))
                                        task.wait(0.2)
                                        vu658.Velocity = Vector3.zero
                                        vu658.RotVelocity = Vector3.zero
                                        vu658.Anchored = false
                                        if vu657 then
                                            vu657:ChangeState(Enum.HumanoidStateType.GettingUp)
                                        end
                                    end)
                                    if vu432 then
                                        vu432:Set(false)
                                    end
                                end
                            end)
                            return
                        end
                    end
                end
            else
                return
            end
        else
            return
        end
    else
        return
    end
end
local function vu732(pu691)
    if pu691 and (pu691.Character and vu415.Character) then
        local vu692 = vu415.Character or vu415.CharacterAdded:Wait()
        local vu693 = vu692:FindFirstChildOfClass("Humanoid")
        local vu694 = vu692:FindFirstChild("HumanoidRootPart")
        if vu693 and vu694 then
            vu423 = vu694.Position
            pcall(function()
                vu694.Anchored = true
                vu694.CFrame = CFrame.new(Vector3.new(- 3359.52, - 5.05, - 501.94))
                task.wait(0.2)
                vu694.Velocity = Vector3.zero
                vu694.RotVelocity = Vector3.zero
                vu694.Anchored = false
                if vu693 then
                    vu693:ChangeState(Enum.HumanoidStateType.GettingUp)
                end
            end)
            vu436()
            local vu695 = {
                "DeleteAllVehicles"
            }
            pcall(function()
                vu414:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(vu695))
            end)
            task.wait(0.4)
            vu695 = {
                "PickingBoat",
                "MilitaryBoatFree"
            }
            pcall(function()
                vu414:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(vu695))
            end)
            task.wait(1.5)
            local v696 = vu412:FindFirstChild("Vehicles")
            if v696 then
                local vu697 = v696:FindFirstChild(vu415.Name .. "Car")
                if vu697 then
                    pcall(function()
                        vu694.Anchored = true
                        vu694.CFrame = CFrame.new(Vector3.new(- 3358.85, 5.25, - 521.95))
                        task.wait(0.2)
                        vu694.Velocity = Vector3.zero
                        vu694.RotVelocity = Vector3.zero
                        vu694.Anchored = false
                        vu693:ChangeState(Enum.HumanoidStateType.Seated)
                    end)
                    local v698 = tick()
                    while true do
                        task.wait()
                        if tick() - v698 > 10 then
                            break
                        end
                        if vu693.Sit then
                            local v699, v700, v701 = ipairs(vu697:GetDescendants())
                            while true do
                                local vu702
                                v701, vu702 = v699(v700, v701)
                                if v701 == nil then
                                    break
                                end
                                if vu702:IsA("BasePart") then
                                    vu702.CanCollide = false
                                    pcall(function()
                                        vu702:SetNetworkOwner(nil)
                                    end)
                                end
                            end
                            vu419 = true
                            vu420 = vu413.Stepped:Connect(function()
                                if vu419 then
                                    local v703 = vu692
                                    local v704, v705, v706 = ipairs(v703:GetDescendants())
                                    while true do
                                        local v707
                                        v706, v707 = v704(v705, v706)
                                        if v706 == nil then
                                            break
                                        end
                                        if v707:IsA("BasePart") then
                                            v707.CanCollide = false
                                        end
                                    end
                                end
                            end)
                            local vu708 = tick()
                            vu421 = vu413.Heartbeat:Connect(function()
                                if not vu419 then
                                    return
                                end
                                if not (pu691 and pu691.Character) then
                                    vu419 = false
                                    return
                                end
                                local vu709 = pu691.Character:FindFirstChild("HumanoidRootPart")
                                local v710 = pu691.Character:FindFirstChild("Humanoid")
                                if not (vu709 and v710) then
                                    vu419 = false
                                    return
                                end
                                if not (vu694 and vu693) then
                                    vu419 = false
                                    return
                                end
                                local vu711 = Vector3.new(math.random(- 10, 10), 0, math.random(- 10, 10))
                                pcall(function()
                                    local v712 = vu709.Position + vu711
                                    vu697:PivotTo(CFrame.new(v712) * CFrame.Angles(math.rad(vu412.DistributedGameTime * 12000), math.rad(vu412.DistributedGameTime * 15000), math.rad(vu412.DistributedGameTime * 18000)))
                                end)
                                local v713 = vu697
                                local v714, v715, v716 = ipairs(v713:GetDescendants())
                                local v717 = false
                                while true do
                                    local v718
                                    v716, v718 = v714(v715, v716)
                                    if v716 == nil then
                                        break
                                    end
                                    if (v718:IsA("Seat") or v718:IsA("VehicleSeat")) and (v718.Name ~= "VehicleSeat" and v718.Occupant == v710) then
                                        v717 = true
                                        break
                                    end
                                end
                                if v717 or tick() - vu708 > 10 then
                                    vu419 = false
                                    if vu420 then
                                        vu420:Disconnect()
                                        vu420 = nil
                                    end
                                    if vu421 then
                                        vu421:Disconnect()
                                        vu421 = nil
                                    end
                                    pcall(function()
                                        vu697:PivotTo(CFrame.new(Vector3.new(- 76.6, - 401.97, - 84.26)))
                                    end)
                                    task.wait(0.5)
                                    vu436()
                                    local vu719 = {
                                        "DeleteAllVehicles"
                                    }
                                    pcall(function()
                                        vu414:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(vu719))
                                    end)
                                    if vu692 then
                                        local vu720 = vu692:FindFirstChild("HumanoidRootPart")
                                        if vu720 and vu423 then
                                            pcall(function()
                                                vu720.Anchored = true
                                                vu720.CFrame = CFrame.new(vu423 + Vector3.new(0, 5, 0))
                                                task.wait(0.2)
                                                vu720.Velocity = Vector3.zero
                                                vu720.RotVelocity = Vector3.zero
                                                vu720.Anchored = false
                                                if vu693 then
                                                    vu693:ChangeState(Enum.HumanoidStateType.GettingUp)
                                                end
                                            end)
                                        end
                                    end
                                    if vu692 then
                                        local v721 = vu692
                                        local v722, v723, v724 = ipairs(v721:GetDescendants())
                                        while true do
                                            local v725
                                            v724, v725 = v722(v723, v724)
                                            if v724 == nil then
                                                break
                                            end
                                            if v725:IsA("BasePart") then
                                                v725.CanCollide = true
                                                v725.Velocity = Vector3.zero
                                                v725.RotVelocity = Vector3.zero
                                            end
                                        end
                                    end
                                    local v726 = vu692
                                    if v726 then
                                        v726 = vu692:FindFirstChild("Humanoid")
                                    end
                                    if v726 then
                                        v726:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                                    end
                                    local v727 = vu412
                                    local v728, v729, v730 = ipairs(v727:GetDescendants())
                                    while true do
                                        local v731
                                        v730, v731 = v728(v729, v730)
                                        if v730 == nil then
                                            break
                                        end
                                        if v731:IsA("Seat") or v731:IsA("VehicleSeat") then
                                            v731.Disabled = false
                                        end
                                    end
                                    pcall(function()
                                        vu414:WaitForChild("RE"):WaitForChild("1Clothe1s"):FireServer("CharacterSizeUp", 1)
                                    end)
                                    if vu432 then
                                        vu432:Set(false)
                                    end
                                end
                            end)
                            return
                        end
                    end
                end
            else
                return
            end
        else
            return
        end
    else
        return
    end
end
local function vu786(pu733)
    if pu733 and (pu733.Character and vu415.Character) then
        local vu734 = vu415.Character or vu415.CharacterAdded:Wait()
        local vu735 = vu734:FindFirstChildOfClass("Humanoid")
        local vu736 = vu734:FindFirstChild("HumanoidRootPart")
        if vu735 and vu736 then
            vu423 = vu736.Position
            pcall(function()
                vu736.Anchored = true
                vu736.CFrame = CFrame.new(Vector3.new(1181.83, 76.08, - 1158.83))
                task.wait(0.2)
                vu736.Velocity = Vector3.zero
                vu736.RotVelocity = Vector3.zero
                vu736.Anchored = false
                if vu735 then
                    vu735:ChangeState(Enum.HumanoidStateType.GettingUp)
                end
            end)
            task.wait(0.5)
            vu436()
            local vu737 = {
                "DeleteAllVehicles"
            }
            pcall(function()
                vu414:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(vu737))
            end)
            vu737 = {
                "PickingCar",
                "Semi"
            }
            pcall(function()
                vu414:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(vu737))
            end)
            task.wait(1)
            local v738 = vu412:FindFirstChild("Vehicles")
            if v738 then
                local vu739 = v738:FindFirstChild(vu415.Name .. "Car")
                if vu739 then
                    pcall(function()
                        vu736.Anchored = true
                        vu736.CFrame = CFrame.new(Vector3.new(1176.56, 79.9, - 1166.65))
                        task.wait(0.2)
                        vu736.Velocity = Vector3.zero
                        vu736.RotVelocity = Vector3.zero
                        vu736.Anchored = false
                        vu735:ChangeState(Enum.HumanoidStateType.Seated)
                    end)
                    local v740 = tick()
                    while true do
                        task.wait()
                        if tick() - v740 > 10 then
                            break
                        end
                        if vu735.Sit then
                            local v741, v742, v743 = ipairs(vu739:GetDescendants())
                            while true do
                                local vu744
                                v743, vu744 = v741(v742, v743)
                                if v743 == nil then
                                    break
                                end
                                if vu744:IsA("BasePart") then
                                    vu744.CanCollide = false
                                    pcall(function()
                                        vu744:SetNetworkOwner(nil)
                                    end)
                                end
                            end
                            vu419 = true
                            vu420 = vu413.Stepped:Connect(function()
                                if vu419 then
                                    local v745 = vu734
                                    local v746, v747, v748 = ipairs(v745:GetDescendants())
                                    while true do
                                        local v749
                                        v748, v749 = v746(v747, v748)
                                        if v748 == nil then
                                            break
                                        end
                                        if v749:IsA("BasePart") then
                                            v749.CanCollide = false
                                        end
                                    end
                                end
                            end)
                            local vu750 = tick()
                            local vu751 = 0
                            vu421 = vu413.Heartbeat:Connect(function()
                                if not vu419 then
                                    return
                                end
                                if not (pu733 and pu733.Character) then
                                    vu419 = false
                                    return
                                end
                                local vu752 = pu733.Character:FindFirstChild("HumanoidRootPart")
                                local v753 = pu733.Character:FindFirstChild("Humanoid")
                                if not (vu752 and v753) then
                                    vu419 = false
                                    return
                                end
                                if not (vu736 and vu735) then
                                    vu419 = false
                                    return
                                end
                                local vu754 = vu739:FindFirstChild("Body")
                                if vu754 then
                                    vu754 = vu739.Body:FindFirstChild("Trailer")
                                end
                                if not vu754 then
                                    return
                                end
                                local vu755 = math.sin(tick() * 30) * 5
                                pcall(function()
                                    local v756 = vu752.Position + Vector3.new(0, vu755, 0)
                                    vu754:PivotTo(CFrame.new(v756))
                                end)
                                if (vu754.Position - vu752.Position).Magnitude < 5 and tick() - vu751 > 0.4 then
                                    vu751 = tick()
                                    local v757, v758, v759 = ipairs(pu733.Character:GetDescendants())
                                    while true do
                                        local v760, v761 = v757(v758, v759)
                                        if v760 == nil then
                                            break
                                        end
                                        v759 = v760
                                        if v761:IsA("BasePart") then
                                            v761.CanCollide = false
                                        end
                                    end
                                    local vu762 = Instance.new("BodyVelocity")
                                    vu762.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                    vu762.Velocity = Vector3.new(math.random(- 10, 10), 50, math.random(- 10, 10)).Unit * 10000000 + Vector3.new(0, 5000000, 0)
                                    vu762.Parent = vu752
                                    task.delay(0.5, function()
                                        vu762:Destroy()
                                        local v763, v764, v765 = ipairs(pu733.Character:GetDescendants())
                                        while true do
                                            local v766
                                            v765, v766 = v763(v764, v765)
                                            if v765 == nil then
                                                break
                                            end
                                            if v766:IsA("BasePart") then
                                                v766.CanCollide = true
                                            end
                                        end
                                    end)
                                end
                                local v767 = vu739
                                local v768, v769, v770 = ipairs(v767:GetDescendants())
                                local v771 = false
                                while true do
                                    local v772
                                    v770, v772 = v768(v769, v770)
                                    if v770 == nil then
                                        break
                                    end
                                    if (v772:IsA("Seat") or v772:IsA("VehicleSeat")) and (v772.Name ~= "VehicleSeat" and v772.Occupant == v753) then
                                        v771 = true
                                        break
                                    end
                                end
                                if v771 or tick() - vu750 > 10 then
                                    vu419 = false
                                    if vu420 then
                                        vu420:Disconnect()
                                        vu420 = nil
                                    end
                                    if vu421 then
                                        vu421:Disconnect()
                                        vu421 = nil
                                    end
                                    pcall(function()
                                        vu739:PivotTo(CFrame.new(Vector3.new(- 59599.73, 2040070.5, - 293391.16)))
                                    end)
                                    task.wait(0.5)
                                    vu436()
                                    local vu773 = {
                                        "DeleteAllVehicles"
                                    }
                                    pcall(function()
                                        vu414:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(vu773))
                                    end)
                                    if vu734 then
                                        local vu774 = vu734:FindFirstChild("HumanoidRootPart")
                                        if vu774 and vu423 then
                                            pcall(function()
                                                vu774.Anchored = true
                                                vu774.CFrame = CFrame.new(vu423 + Vector3.new(0, 5, 0))
                                                task.wait(0.2)
                                                vu774.Velocity = Vector3.zero
                                                vu774.RotVelocity = Vector3.zero
                                                vu774.Anchored = false
                                                if vu735 then
                                                    vu735:ChangeState(Enum.HumanoidStateType.GettingUp)
                                                end
                                            end)
                                        end
                                    end
                                    if vu734 then
                                        local v775 = vu734
                                        local v776, v777, v778 = ipairs(v775:GetDescendants())
                                        while true do
                                            local v779
                                            v778, v779 = v776(v777, v778)
                                            if v778 == nil then
                                                break
                                            end
                                            if v779:IsA("BasePart") then
                                                v779.CanCollide = true
                                                v779.Velocity = Vector3.zero
                                                v779.RotVelocity = Vector3.zero
                                            end
                                        end
                                    end
                                    local v780 = vu734
                                    if v780 then
                                        v780 = vu734:FindFirstChild("Humanoid")
                                    end
                                    if v780 then
                                        v780:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                                    end
                                    local v781 = vu412
                                    local v782, v783, v784 = ipairs(v781:GetDescendants())
                                    while true do
                                        local v785
                                        v784, v785 = v782(v783, v784)
                                        if v784 == nil then
                                            break
                                        end
                                        if v785:IsA("Seat") or v785:IsA("VehicleSeat") then
                                            v785.Disabled = false
                                        end
                                    end
                                    pcall(function()
                                        vu414:WaitForChild("RE"):WaitForChild("1Clothe1s"):FireServer("CharacterSizeUp", 1)
                                    end)
                                    if vu432 then
                                        vu432:Set(false)
                                    end
                                end
                            end)
                            return
                        end
                    end
                end
            else
                return
            end
        else
            return
        end
    else
        return
    end
end
local function vu799()
    vu419 = false
    if vu420 then
        vu420:Disconnect()
        vu420 = nil
    end
    if vu421 then
        vu421:Disconnect()
        vu421 = nil
    end
    if vu427 then
        vu427.Anchored = vu424.Anchored
        vu427.CanCollide = vu424.CanCollide
        vu427.CanTouch = vu424.CanTouch
    end
    if vu428 and vu428:IsA("BasePart") then
        vu428.Anchored = vu424.Anchored
        vu428.CanCollide = vu424.CanCollide
        vu428.CanTouch = vu424.CanTouch
    end
    vu436()
    local vu787 = {
        "DeleteAllVehicles"
    }
    pcall(function()
        vu414:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(vu787))
    end)
    task.wait(0.2)
    local vu788 = vu415.Character
    if vu788 then
        local v789, v790, v791 = ipairs(vu788:GetDescendants())
        while true do
            local v792
            v791, v792 = v789(v790, v791)
            if v791 == nil then
                break
            end
            if v792:IsA("BasePart") then
                v792.CanCollide = true
                v792.Velocity = Vector3.zero
                v792.RotVelocity = Vector3.zero
            end
        end
    end
    local vu793
    if vu788 then
        vu793 = vu788:FindFirstChild("Humanoid")
    else
        vu793 = vu788
    end
    if vu793 then
        vu793:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    end
    local v794 = vu412
    local v795, v796, v797 = ipairs(v794:GetDescendants())
    while true do
        local v798
        v797, v798 = v795(v796, v797)
        if v797 == nil then
            break
        end
        if v798:IsA("Seat") or v798:IsA("VehicleSeat") then
            v798.Disabled = false
        end
    end
    pcall(function()
        vu414:WaitForChild("RE"):WaitForChild("1Clothe1s"):FireServer("CharacterSizeUp", 1)
    end)
    if vu423 then
        if vu788 then
            vu788 = vu788:FindFirstChild("HumanoidRootPart")
        end
        if vu788 then
            pcall(function()
                vu788.Anchored = true
                vu788.CFrame = CFrame.new(vu423 + Vector3.new(0, 5, 0))
                task.wait(0.2)
                vu788.Velocity = Vector3.zero
                vu788.RotVelocity = Vector3.zero
                vu788.Anchored = false
                if vu793 then
                    vu793:ChangeState(Enum.HumanoidStateType.GettingUp)
                end
            end)
        end
    end
end
vu432 = v10:AddToggle({
    Name = "ActivateFling",
    Description = "",
    Default = false,
    Callback = function(p800)
        if p800 then
            if vu417 or (vu418 or vu419) then
                vu432:Set(false)
                return
            end
            if vu426 ~= "Sof\195\161" then
                if vu426 ~= "Bola" then
                    if vu426 ~= "Bola V2" then
                        if vu426 ~= "Barco" then
                            if vu426 ~= "Caminh\195\163o" then
                                if vu426 == "\239\191\189nibus" then
                                    vu690(vu416)
                                end
                            else
                                vu786(vu416)
                            end
                        else
                            vu732(vu416)
                        end
                    else
                        vu654(vu416)
                    end
                else
                    vu630(vu416)
                end
            else
                vu590(vu416)
            end
        else
            vu799()
        end
    end
})
v10:AddSection({
    "fling ALL and turn off RGB before use"
})
local vu801 = game:GetService("Players")
local vu802 = vu801.LocalPlayer
local vu803 = game:GetService("Workspace")
local vu804 = game:GetService("ReplicatedStorage")
local vu805 = game:GetService("RunService")
local vu806 = game:GetService("StarterGui")
orbitando = false
orbitConn = nil
allFling = false
allConn = nil
currentPlayerList = nil
currentPlayerIndex = nil
lastSwitchTime = nil
allFling2 = false
allConn2 = nil
local vu807 = nil
local vu808 = nil
excludedPlayers = {}
local function vu814(pu809)
    local vu810 = Enum.ThumbnailType.HeadShot
    local vu811 = Enum.ThumbnailSize.Size420x420
    local v812, v813 = pcall(function()
        return vu801:GetUserThumbnailAsync(pu809, vu810, vu811)
    end)
    if v812 then
        return v813
    end
    warn("Erro ao obter thumbnail: " .. tostring(v813))
    return nil
end
local function vu822(p815)
    local v816 = p815:lower()
    local v817 = vu801
    local v818, v819, v820 = ipairs(v817:GetPlayers())
    while true do
        local v821
        v820, v821 = v818(v819, v820)
        if v820 == nil then
            break
        end
        if v821.Name:lower():find(v816) then
            return v821
        end
    end
    return nil
end
local function vu826(pu823, pu824, pu825)
    pcall(function()
        vu806:SetCore("SendNotification", {
            Title = pu823,
            Text = pu824,
            Icon = pu825 or "",
            Duration = 5
        })
    end)
end
v10:AddTextBox({
    Name = "add player to waitelist",
    Description = "Enter Part Of The Player Name",
    PlaceholderText = "Ex.: (player123)",
    Callback = function(p827)
        if p827 == "" then
            vu826("Nenhuma A\195\167\195\163o", "Digite um nome para adicionar um jogador.", nil)
        else
            local v828 = vu822(p827)
            if v828 then
                local v829, v830, v831 = ipairs(excludedPlayers)
                while true do
                    local v832
                    v831, v832 = v829(v830, v831)
                    if v831 == nil then
                        break
                    end
                    if v832 == v828 then
                        vu826("Jogador J\195\161 esta na whaitelist", "Jogador " .. v828.Name .. " j\195\161 foi adicionado.", vu814(v828.UserId))
                        return
                    end
                end
                table.insert(excludedPlayers, v828)
                local v833 = vu814(v828.UserId)
                vu826("Jogador adicionado", "Jogador " .. v828.Name .. " foi removido dos flings.", v833)
            else
                vu826("Jogador N\195\163o Encontrado", "Nenhum jogador encontrado com \'" .. p827 .. "\'.", nil)
            end
        end
    end
})
v10:AddButton({
    "Verify",
    function()
        if # excludedPlayers ~= 0 then
            local v834, v835, v836 = ipairs(excludedPlayers)
            while true do
                local v837
                v836, v837 = v834(v835, v836)
                if v836 == nil then
                    break
                end
                local v838 = vu814(v837.UserId)
                vu826("Jogador adicionado " .. v836, "Jogador " .. v837.Name .. " est\195\161 removido dos flings.", v838)
                task.wait(0.5)
            end
        else
            vu826("Nenhum na whaitelist", "Nenhum jogador est\195\161 removido dos flings.", nil)
        end
    end
})
v10:AddButton({
    "Remove Verify",
    function()
        if # excludedPlayers ~= 0 then
            excludedPlayers = {}
            vu826("whaitelists Removidas", "Todos os jogadores foram removidos da whaitelist.", nil)
        else
            vu826("Nenhum removido", "Nenhum jogador para remover da whaitelist.", nil)
        end
    end
})
v10:AddButton({
    "Orbit Soccerball",
    function()
        if orbitando then
            return
        elseif vu594() then
            task.wait(0.5)
            local vu839 = vu802.Character or vu802.CharacterAdded:Wait()
            local vu840 = vu839:FindFirstChild("HumanoidRootPart")
            if vu840 then
                local v841 = vu803:FindFirstChild("WorkspaceCom")
                if v841 then
                    v841 = v841:FindFirstChild("001_SoccerBalls")
                end
                if v841 then
                    v841 = v841:FindFirstChild("Soccer" .. vu802.Name)
                end
                vu807 = v841
                if vu807 then
                    vu808 = {
                        Anchored = vu807.Anchored,
                        CanCollide = vu807.CanCollide,
                        CanTouch = vu807.CanTouch
                    }
                    vu807.Anchored = false
                    vu807.CanCollide = true
                    vu807.CanTouch = true
                    pcall(function()
                        vu807:SetNetworkOwner(nil)
                    end)
                    orbitando = true
                    orbitConn = vu805.Heartbeat:Connect(function()
                        if orbitando and (vu807 and (vu807.Parent and (vu840 and (vu840.Parent and (vu839 and vu839.Parent))))) then
                            local v842 = tick() * 10
                            local v843 = 3
                            local v844 = Vector3.new(math.cos(v842) * v843, - 1, math.sin(v842) * v843)
                            vu807.CFrame = CFrame.new(vu840.Position + v844)
                            vu807.AssemblyLinearVelocity = Vector3.new(9999, 9999, 9999)
                        else
                            if orbitConn then
                                orbitConn:Disconnect()
                                orbitConn = nil
                            end
                            orbitando = false
                            if vu807 and vu808 then
                                vu807.Anchored = vu808.Anchored
                                vu807.CanCollide = vu808.CanCollide
                                vu807.CanTouch = vu808.CanTouch
                            end
                            vu807 = nil
                            vu808 = nil
                        end
                    end)
                end
            else
                return
            end
        else
            return
        end
    end
})
v10:AddButton({
    "Fling ALL Soccerball V1",
    function()
        if allFling then
            return
        elseif vu594() then
            task.wait(0.5)
            local vu845 = {
                "PlayerWantsToDeleteTool",
                "SoccerBall"
            }
            pcall(function()
                vu804:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(vu845))
            end)
            local v846 = vu803:FindFirstChild("WorkspaceCom")
            if v846 then
                v846 = v846:FindFirstChild("001_SoccerBalls")
            end
            if v846 then
                v846 = v846:FindFirstChild("Soccer" .. vu802.Name)
            end
            vu807 = v846
            if vu807 then
                vu808 = {
                    Anchored = vu807.Anchored,
                    CanCollide = vu807.CanCollide,
                    CanTouch = vu807.CanTouch
                }
                vu807.Anchored = false
                vu807.CanCollide = true
                vu807.CanTouch = true
                pcall(function()
                    vu807:SetNetworkOwner(nil)
                end)
                allFling = true
                local function vu861()
                    local v847 = vu801
                    local v848, v849, v850 = ipairs(v847:GetPlayers())
                    local v851 = {}
                    while true do
                        local v852
                        v850, v852 = v848(v849, v850)
                        if v850 == nil then
                            for v853 = # v851, 2, - 1 do
                                local v854 = math.random(v853)
                                local v855 = v851[v854]
                                v851[v854] = v851[v853]
                                v851[v853] = v855
                            end
                            return v851
                        end
                        local v856, v857, v858 = ipairs(excludedPlayers)
                        local v859 = false
                        while true do
                            local v860
                            v858, v860 = v856(v857, v858)
                            if v858 == nil then
                                break
                            end
                            if v852 == v860 then
                                v859 = true
                                break
                            end
                        end
                        if v852 ~= vu802 and (not v859 and v852.Character) and v852.Character:FindFirstChild("HumanoidRootPart") then
                            table.insert(v851, v852)
                        end
                    end
                end
                allConn = vu805.Heartbeat:Connect(function()
                    if allFling and (vu807 and vu807.Parent) then
                        if not currentPlayerList or # currentPlayerList == 0 then
                            currentPlayerList = vu861()
                            currentPlayerIndex = 1
                            lastSwitchTime = tick()
                        end
                        if # currentPlayerList ~= 0 then
                            if tick() - lastSwitchTime >= 4 then
                                currentPlayerIndex = currentPlayerIndex + 1
                                if currentPlayerIndex > # currentPlayerList then
                                    currentPlayerList = vu861()
                                    currentPlayerIndex = 1
                                end
                                lastSwitchTime = tick()
                            end
                            local v862 = currentPlayerList[currentPlayerIndex]
                            if v862 and v862.Character then
                                local v863 = v862.Character
                                if v863 and (v863:FindFirstChild("HumanoidRootPart") and v863:FindFirstChild("Humanoid")) then
                                    local v864 = v863.HumanoidRootPart
                                    local v865 = v863.Humanoid
                                    local v866 = v864.Velocity.Magnitude
                                    local v867 = v865:GetState() == Enum.HumanoidStateType.Jumping
                                    local v868
                                    if v865.MoveDirection.Magnitude > 0.05 or v867 then
                                        v868 = v864.CFrame.LookVector * math.clamp(v866 / 1.5, 6, 18) + Vector3.new(0, 1, 0)
                                    else
                                        local v869 = math.sin(tick() * 25) * 4
                                        local v870 = math.cos(tick() * 20) * 1.5
                                        v868 = Vector3.new(v870, 1, v869)
                                    end
                                    vu807.CFrame = CFrame.new(v864.Position + v868)
                                    vu807.AssemblyLinearVelocity = Vector3.new(9999, 9999, 9999)
                                    if (vu807.Position - v864.Position).Magnitude < 4 then
                                        local vu871 = Instance.new("BodyVelocity")
                                        vu871.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                        vu871.Velocity = Vector3.new(math.random(- 5, 5), 5, math.random(- 5, 5)).Unit * 500000 + Vector3.new(0, 250000, 0)
                                        vu871.Parent = v864
                                        task.delay(0.3, function()
                                            vu871:Destroy()
                                        end)
                                    end
                                end
                            end
                        else
                            return
                        end
                    else
                        if allConn then
                            allConn:Disconnect()
                            allConn = nil
                        end
                        allFling = false
                        if vu807 and vu808 then
                            vu807.Anchored = vu808.Anchored
                            vu807.CanCollide = vu808.CanCollide
                            vu807.CanTouch = vu808.CanTouch
                        end
                        vu807 = nil
                        vu808 = nil
                        currentPlayerList = nil
                        currentPlayerIndex = nil
                        lastSwitchTime = nil
                        return
                    end
                end)
            end
        else
            return
        end
    end
})
v10:AddButton({
    "Fling ALL Soccerball V2",
    function()
        if allFling2 then
            return
        elseif vu594() then
            task.wait(0.5)
            local vu872 = {
                "PlayerWantsToDeleteTool",
                "SoccerBall"
            }
            pcall(function()
                vu804:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(vu872))
            end)
            local v873 = vu803:FindFirstChild("WorkspaceCom")
            if v873 then
                v873 = v873:FindFirstChild("001_SoccerBalls")
            end
            if v873 then
                v873 = v873:FindFirstChild("Soccer" .. vu802.Name)
            end
            vu807 = v873
            if vu807 then
                vu808 = {
                    Anchored = vu807.Anchored,
                    CanCollide = vu807.CanCollide,
                    CanTouch = vu807.CanTouch
                }
                vu807.Anchored = false
                vu807.CanCollide = true
                vu807.CanTouch = true
                pcall(function()
                    vu807:SetNetworkOwner(nil)
                end)
                allFling2 = true
                allConn2 = vu805.Heartbeat:Connect(function()
                    if not (allFling2 and (vu807 and vu807.Parent)) then
                        if allConn2 then
                            allConn2:Disconnect()
                            allConn2 = nil
                        end
                        allFling2 = false
                        if vu807 and vu808 then
                            vu807.Anchored = vu808.Anchored
                            vu807.CanCollide = vu808.CanCollide
                            vu807.CanTouch = vu808.CanTouch
                        end
                        vu807 = nil
                        vu808 = nil
                        return
                    end
                    local v874 = vu801
                    local v875, v876, v877 = ipairs(v874:GetPlayers())
                    local v878 = {}
                    while true do
                        local v879
                        v877, v879 = v875(v876, v877)
                        if v877 == nil then
                            for v880 = # v878, 2, - 1 do
                                local v881 = math.random(v880)
                                local v882 = v878[v881]
                                v878[v881] = v878[v880]
                                v878[v880] = v882
                            end
                            local v883, v884, v885 = ipairs(v878)
                            while true do
                                local v886
                                v885, v886 = v883(v884, v885)
                                if v885 == nil or not allFling2 then
                                    break
                                end
                                local v887 = v886.Character
                                if v887 and (v887:FindFirstChild("HumanoidRootPart") and v887:FindFirstChild("Humanoid")) then
                                    local v888 = v887.HumanoidRootPart
                                    local v889 = v887.Humanoid
                                    local v890 = v888.Velocity.Magnitude
                                    local v891 = v889:GetState() == Enum.HumanoidStateType.Jumping
                                    local v892
                                    if v889.MoveDirection.Magnitude > 0.05 or v891 then
                                        v892 = v888.CFrame.LookVector * math.clamp(v890 / 1.5, 6, 18) + Vector3.new(0, 1, 0)
                                    else
                                        local v893 = math.sin(tick() * 25) * 4
                                        local v894 = math.cos(tick() * 20) * 1.5
                                        v892 = Vector3.new(v894, 1, v893)
                                    end
                                    vu807.CFrame = CFrame.new(v888.Position + v892)
                                    vu807.AssemblyLinearVelocity = Vector3.new(9999, 9999, 9999)
                                    if (vu807.Position - v888.Position).Magnitude < 4 then
                                        local vu895 = Instance.new("BodyVelocity")
                                        vu895.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                        vu895.Velocity = Vector3.new(math.random(- 5, 5), 5, math.random(- 5, 5)).Unit * 1000000 + Vector3.new(0, 1000000, 0)
                                        vu895.Parent = v888
                                        task.delay(0.3, function()
                                            vu895:Destroy()
                                        end)
                                    end
                                end
                                task.wait(0.1)
                            end
                            return
                        end
                        local v896, v897, v898 = ipairs(excludedPlayers)
                        local v899 = false
                        while true do
                            local v900
                            v898, v900 = v896(v897, v898)
                            if v898 == nil then
                                break
                            end
                            if v879 == v900 then
                                v899 = true
                                break
                            end
                        end
                        if v879 ~= vu802 and (not v899 and v879.Character) and v879.Character:FindFirstChild("HumanoidRootPart") then
                            table.insert(v878, v879)
                        end
                    end
                end)
            end
        else
            return
        end
    end
})
v10:AddButton({
    "Stop All",
    function()
        orbitando = false
        if orbitConn then
            orbitConn:Disconnect()
            orbitConn = nil
        end
        allFling = false
        if allConn then
            allConn:Disconnect()
            allConn = nil
        end
        currentPlayerList = nil
        currentPlayerIndex = nil
        lastSwitchTime = nil
        allFling2 = false
        if allConn2 then
            allConn2:Disconnect()
            allConn2 = nil
        end
        if vu807 and vu808 then
            vu807.Anchored = vu808.Anchored
            vu807.CanCollide = vu808.CanCollide
            vu807.CanTouch = vu808.CanTouch
        end
        vu807 = nil
        vu808 = nil
        vu826("Tudo Parado", "Todas as fun\195\167\195\181es foram desativadas.", nil)
    end
})
v11:AddButton({
    Name = "LEO MENU HUB",
    Description = "Universal",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ExploitFin/AquaMatrix/refs/heads/AquaMatrix/AquaMatrix"))()
    end
})
v11:AddButton({
    Name = "FE HUGG",
    Description = "Universal",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JSFKGBASDJKHIOAFHDGHIUODSGBJKLFGDKSB/fe/refs/heads/main/FEHUGG"))()
    end
})
v11:AddButton({
    Name = "Black Hole",
    Description = "Universal",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/BringFlingPlayers"))("More Scripts: t.me/arceusxscripts")
    end
})
v11:AddSection({
    "System Broken Void Protector"
})
v11:AddButton({
    Name = "System Broken",
    Description = "Universal",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))()
    end
})
v11:AddButton({
    Name = "Rochips",
    Description = "Universal",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-rochips-universal-18294"))()
    end
})
v11:AddButton({
    Name = "Sander X",
    Description = "Somente para Brookhaven",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kigredns/SanderXV4.2.2/refs/heads/main/New.lua"))()
    end
})
v11:AddButton({
    Name = "Reverse",
    Description = "Universal",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/L"))()
    end
})
v11:AddButton({
    Name = "R4D",
    Description = "Somente para Brookhaven",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/M1ZZ001/BrookhavenR4D/main/Brookhaven%20R4D%20Script"))()
    end
})
local vu901 = game.Players.LocalPlayer
local vu902 = "Morro"
local vu903 = {
    idk = Vector3.new(- 348.64, 65.94, - 458.08),
    Square = Vector3.new(- 26.17, 3.48, - 0.93),
    idk = Vector3.new(1.99, 3.32, 236.65),
    Hospital = Vector3.new(- 303.2, 3.4, 13.74),
    ["City Hall"] = Vector3.new(- 354.65, 7.32, - 102.16),
    Farm = Vector3.new(- 766.41, 2.92, - 61.1),
    Market = Vector3.new(16.31, 3.32, - 107.07),
    Shopping = Vector3.new(151.05, 3.52, - 190.64),
    idk = Vector3.new(290.23, 4.32, 42.57),
    Hotel = Vector3.new(159.1, 3.32, 164.97),
    ["Seaside 1"] = Vector3.new(55.69, 2.94, - 1403.6),
    ["Seaside 2"] = Vector3.new(42.39, 2.94, 1336.14)
}
v12:AddDropdown({
    Name = "Locations On Brookhaven",
    Description = "Select Location To Teleport ",
    Default = vu902,
    Multi = false,
    Options = {
        "Morro",
        "Pra\195\167a",
        "Banco",
        "Hospital",
        "Prefeitura",
        "Fazenda",
        "Mercado",
        "Shopping",
        "Aeroporto",
        "Hotel",
        "Beira-mar 1",
        "Beira-mar 2"
    },
    Callback = function(p904)
        vu902 = p904
    end
})
v12:AddButton({
    Name = "Teleport",
    Description = "",
    Callback = function()
        if vu901.Character and vu901.Character:FindFirstChild("HumanoidRootPart") then
            local vu905 = vu901.Character.HumanoidRootPart
            local vu906 = vu901.Character:FindFirstChildOfClass("Humanoid")
            local vu907 = vu903[vu902]
            if vu907 then
                pcall(function()
                    if vu906 then
                        vu906:ChangeState(Enum.HumanoidStateType.Physics)
                        vu906.WalkSpeed = 0
                    end
                    vu905.Anchored = true
                    vu905.CFrame = CFrame.new(vu907)
                    task.wait(0.4)
                    vu905.Anchored = false
                    if vu906 then
                        vu906.WalkSpeed = 16
                        vu906:ChangeState(Enum.HumanoidStateType.Running)
                    end
                end)
            end
        end
    end
})