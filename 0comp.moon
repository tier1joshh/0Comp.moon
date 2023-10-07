 getgenv().Riot = {
        Main = {
            ['Enabled'] = true,
            ['Keybind'] = Enum.KeyCode.Q,
            ['HitPart'] = "UpperTorso", --Options: "Head", "UpperTorso", "HumanoidRootPart" or "LowerTorso" ~ Other: "Random Upper", "Random Lower" and "Crazy"
            ['AirShot_Function'] = true,
            ['Airshot_Part'] = "Head",
            ['Notifcation'] = true,
            ['Notifcation_Type'] = "Xaxa", -- Types: "Xaxa", "Kali" or "Roblox"
            ['Prediction'] = 0.13873,
        }, 
     
        Auto_Prediction_Section = {
            ['Auto_Prediction'] = false,
            ['Tick'] = 0.1, -- refresh rate   
            ['P10'] = 0.135,
            ['P20'] = 0.05,
            ['P30'] = 0.1,
            ['P40'] = 0.11,
            ['P50'] = 0.115234523545,
            ['P60'] = 0.117845379032,
            ['P70'] = 0.125,
            ['P80'] = 0.129,
            ['P90'] = 0.1295,
            ['P100'] = 0.13,
            ['P110'] = 0.1315,
            ['P120'] = 0.1344,
            ['P130'] = 0.1411,
            ['P140'] = 0.15,
            ['P150'] = 0.1555,
        },
        
        Resolver = {
            ['Detect_Desync'] = true,
            ['Detect_Desync_Keybind'] = Enum.KeyCode.V,
        },
     
        Checks = {
            ['WallChecked'] = true,
            ['KoCheck'] = true,
            ['CrewCheck'] = true,
        },
     
        Advanced_Settings = {
            ['Mouse_Position_Type'] = "UpdateMousePos", -- UpdateMousePos for da hood and other copys, MousePos For hood modded
        },
     
        Hit_Chams = {
            ['Enable'] = true,
            ['Wait_Time'] = 0.25,
     
            ['Material'] = "Neon",
            ['Color'] = Color3.fromRGB(105, 95, 245),
            ['Transparency'] = 0,
     
        },
     
        Box_Visual = {
            ['Visible'] = true,
            ['Color'] = Color3.fromRGB(105, 95, 245),
            ['Transparency'] = 0.3,
            ['Shape'] = "Box", -- Options: "Ball", "Box", "Cylinder"
            ['Size'] = "Medium",-- Options: "Small", "Medium", "Large"
            ['Material'] = "ForceField", -- Options: "ForceField", "SmoothPlastic", "Neon" or  "Glass"
        },
     
        Dot_Visual = {
            ['Visible'] = true,
            ['Color'] = Color3.fromRGB(255, 105, 180),
            ['Size'] = "Large", -- Options: "Small", "Medium", Large
        },    
     
        Fov_Visual = {
            ['Visible'] = false,
            ['Color'] = Color3.fromRGB(0, 0, 0),
            ['Filled'] = false,
            ['Radius'] = 120,
            ['Transparency'] = 0.7,
            ['NumSides'] = 0,
            ['Thickness'] = 0,
        },
     
        HighLight_Visual = {
     
            -- Target-Chams For Highlight
     
            ['Highlight_Target'] = true,
            ['Highlight_Color_Fill'] = Color3.fromRGB(0, 0, 0),
            ['Highlight_Color_OutLine'] = Color3.fromRGB(105, 95, 245),
     
            -- Hit-Chams For HighLight
     
            ['Highlight_Hit_Chams'] = true,
            ['Highlight_Hit_Fill'] = Color3.fromRGB(136, 0, 0),
            ['Highlight_Hit_OutLine'] = Color3.fromRGB(233, 0, 0),
     
        },
     
        Gun_Visuals = {
            ['Enable'] = true,
            ['GunMats'] = "Neon",
     
            ['GunColor'] = Color3.fromRGB(105, 95, 245),
            ['GunReflectance'] = 1,
            ['GunTransparency'] = 0,
            ['GunBeam'] = true,
            ['GunBeamColor'] = Color3.fromRGB(105, 95, 245),
     
            ['GunTexture'] = false,
            ['GunTextureId'] = "11516328794",
     
        },
     
        Cursor_Visuals = {
            ['Enable'] = true,
     
            ['Color'] = Color3.fromRGB(255, 255, 255),
            ['Border_Color'] = Color3.fromRGB(0, 0, 0),
     
     
            ['Custom_Crosshair'] = true,
            ['Custom_Crosshair_Id'] = "12732661801",
     
            ['Rotation'] = true,
            ['Rotation_Power'] = 30,
     
        },
     
        --// Other
     
        Options = {
            ['Headless'] = true,
            ['Korblox'] = false,
        },
        
        Fps_Unlocker = {
            ['Enabled'] = true,
            ['Cap'] = 360,
        },
     
     }
     
     
     
     --loadstring(game:HttpGet("https://raw.githubusercontent.com/zxwazcc/TES/main/TEST"))();
     --loadstring(game:HttpGet("https://raw.githubusercontent.com/zxwazcc/ad/main/wadwa"))();
     
     --------------------------------------------
     
     local notificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/xaxas-notification/src.lua"))();
     local notifications = notificationLibrary.new({            
        NotificationLifetime = 1.5, 
        NotificationPosition = "Middle",
        
        TextFont = Enum.Font.Code,
        TextColor = Color3.fromRGB(255, 255, 255),
        TextSize = 17,
        
        TextStrokeTransparency = 0, 
        TextStrokeColor = Color3.fromRGB(0, 0, 0)
     });
     
     --
     
     local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
     local Notify = NotifyLibrary.Notify
     
     
     --------------------------------------------
     
     
     
     repeat
        wait()
     until game:IsLoaded()
     
     --// Riot
     local placemarker = Instance.new("Part", game.Workspace)
     
     function makemarker(Parent, Adornee, Color, Size, Size2)
        local e = Instance.new("BillboardGui", Parent)
        e.Name = "haunts0001"
        e.Adornee = Adornee
        e.Size = UDim2.new(Size, Size2, Size, Size2)
        e.AlwaysOnTop = true
        local a = Instance.new("Frame", e)
        a.Size = UDim2.new(1, 0, 1, 0)
        a.BackgroundTransparency = 0
        a.BackgroundColor3 = Color
        local g = Instance.new("UICorner", a)
        g.CornerRadius = UDim.new(50, 50)
        return(e)
     end
     
     local data = game.Players:GetPlayers()
     
     function noob(player)
        local character
        repeat wait() until player.Character
        local handler = makemarker(guimain, player.Character:WaitForChild("HumanoidRootPart"), getgenv().Riot.Dot_Visual.Color, 0.3, 3)
        handler.Name = player.Name
        player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild("HumanoidRootPart") end)
     end
     
     for i = 1, #data do
        if data[i] ~= game.Players.LocalPlayer then
            noob(data[i])
        end
     end
     
     game.Players.PlayerAdded:connect(function(Player)
        noob(Player)
     end)
     
     spawn(function()
        placemarker.Anchored = true
        placemarker.CanCollide = false
        placemarker.Transparency = 1
        if getgenv().Riot.Dot_Visual.Visible then
        makemarker(placemarker, placemarker, getgenv().Riot.Dot_Visual.Color , 0.40, 0)
        end
     end)
     
     
     --// Box Misc
     local Tracer = Instance.new("Part", game.Workspace)
     Tracer.Name = "haunts0001"	
     Tracer.Anchored = true		
     Tracer.CanCollide = false
     Tracer.Transparency = getgenv().Riot.Box_Visual.Transparency
     Tracer.Parent = game.Workspace	
     Tracer.Color = getgenv().Riot.Box_Visual.Color
     Tracer.Material = getgenv().Riot.Box_Visual.Material
     
     if getgenv().Riot.Box_Visual.Shape == "Ball" then
        Tracer.Shape = Enum.PartType.Ball
     elseif getgenv().Riot.Box_Visual.Shape == "Box" then
        Tracer.Shape = Enum.PartType.Block
     elseif getgenv().Riot.Box_Visual.Shape == "Cylinder" then
        Tracer.Shape = Enum.PartType.Cylinder
     end
     
     
     if getgenv().Riot.Box_Visual.Size == "Small" then
        Tracer.Size = Vector3.new(4, 4, 4)
     elseif getgenv().Riot.Box_Visual.Size == "Medium" then
        Tracer.Size = Vector3.new(7, 7, 7)
     elseif getgenv().Riot.Box_Visual.Size == "Large" then
        Tracer.Size = Vector3.new(12, 12, 12)
     end
     
        
     --// Circle
     local plry = game.Players.LocalPlayer
     local mouse = plry:GetMouse()
     local Runserv = game:GetService("RunService")
     
     circle = Drawing.new("Circle")
     circle.Color = getgenv().Riot.Fov_Visual.Color
     circle.Thickness = getgenv().Riot.Fov_Visual.Thickness 
     circle.NumSides = getgenv().Riot.Fov_Visual.NumSides
     circle.Radius = getgenv().Riot.Fov_Visual.Radius
     circle.Thickness = getgenv().Riot.Fov_Visual.Thickness
     circle.Transparency = getgenv().Riot.Fov_Visual.Transparency
     circle.Visible = getgenv().Riot.Fov_Visual.Visible
     circle.Filled = getgenv().Riot.Fov_Visual.Filled
     
     Runserv.RenderStepped:Connect(function()
        circle.Position = Vector2.new(mouse.X,mouse.Y+35)
     end)
        
     local guimain = Instance.new("Folder", game.CoreGui)
     local CC = game:GetService("Workspace").CurrentCamera
     local LocalMouse = game.Players.LocalPlayer:GetMouse()
     local Locking = false
        
            
        --
        if getgenv().CheckIfScriptLoaded == true then
            game.StarterGui:SetCore("SendNotification", {
            Title = "0Comp.lua",
            Text = "Camlock is loaded please rejoin",
            Duration = 4,
            Icon = "rbxassetid://12990104891"
            })
            return
        end
        
     getgenv().CheckIfScriptLoaded = false
        
     local UserInputService = game:GetService("UserInputService")
     local LocalHL = Instance.new("Highlight")
     
     UserInputService.InputBegan:Connect(function(keygo,ok)
        if (not ok) then
            if (keygo.KeyCode == getgenv().Riot.Main.Keybind) then
                if getgenv().Riot.Main.Enabled == true then
                   Locking = not Locking
                   
                   if Locking then
     
                        Plr =  getClosestPlayerToCursor()
     
                        --// Hit Chams [High-Light]
     
                        if getgenv().Riot.HighLight_Visual.Highlight_Hit_Chams == true then
                            local oldHealth = Plr.Character.Humanoid.Health
                            Plr.Character.Humanoid.HealthChanged:Connect(function(newHealth)
                                local healthDifference = newHealth - oldHealth
                                    if newHealth < oldHealth then 
                                        LocalHL.Parent = Plr.Character
                                        LocalHL.FillColor =  getgenv().Riot.HighLight_Visual.Highlight_Hit_Fill
                                        LocalHL.OutlineColor = getgenv().Riot.HighLight_Visual.Highlight_Hit_OutLine
                                        wait(0.50)
                                        LocalHL.FillColor = getgenv().Riot.HighLight_Visual.Highlight_Color_Fill
                                        LocalHL.OutlineColor = getgenv().Riot.HighLight_Visual.Highlight_Color_OutLine
     
                                        if newHealth > oldHealth then 
                                            LocalHL.Parent = game.CoreGui
                                        end
                                    end
     
                                    if Plr.Character.BodyEffects.KO == true and Plr.Character.BodyEffects.Dead == true then
                                        LocalHL.Parent = game.CoreGui
                                    end
                                oldHealth = newHealth 
                            end)
                        end
     
                        --// Test
     
                        
                        local oldHealt = Plr.Character.Humanoid.Health
                        
                        if getgenv().Riot.Hit_Chams.Enable == true then
                           
                            Plr.Character.Humanoid.HealthChanged:Connect(function(neHealth)
     
                                local Clone = Plr.Character:Clone()
     
                                if neHealth > oldHealt then 
                                    Clone:Destroy()
                                end
     
                                if Plr.Character.Humanoid.Health < 0 then
                                    Clone:Destroy()
                                end
     
                                if neHealth < oldHealt then 
                                        
                                    
                                        -- Main Hit-Chams --
     
                                    Plr.Character.Archivable = true
                                    for _,Obj in next, Clone:GetDescendants() do
                                        if Obj.Name == "HumanoidRootPart" or Obj:IsA("Humanoid") or Obj:IsA("LocalScript") or Obj:IsA("Script") or Obj:IsA("Decal") then
                                            Obj:Destroy()
                                        elseif Obj:IsA("BasePart") or Obj:IsA("Meshpart") or Obj:IsA("Part") then
                                            Obj.CanCollide = false
                                            Obj.Anchored = true
                                            Obj.Material = getgenv().Riot.Hit_Chams.Material
                                            Obj.Color = getgenv().Riot.Hit_Chams.Color
                                            Obj.Transparency = getgenv().Riot.Hit_Chams.Transparency
                                            Obj.Size = Obj.Size + Vector3.new(0.03, 0.03, 0.03)
                                        end
                                        
                                        -- Destroys All Part Of Chams -- 
                                        
                                        if Obj:IsA("Accessory") then
                                            Obj:Destroy()
                                        end
                                        if Obj:IsA("Shirt") then
                                            Obj:Destroy()
                                        end
                                        if Obj:IsA("Pants") then
                                            Obj:Destroy()
                                        end
                                        if Obj:IsA("Tool") then
                                            Obj:Destroy()
                                        end
                                        pcall(function()
                                            Obj.CanCollide = false
                                        end) 
     
                                    end
     
                                    -- Makes The Chams When Player Is Target --
     
                                    Clone.Parent = game.Workspace
                                    wait(getgenv().Riot.Hit_Chams.Wait_Time)
                                    Clone:Destroy()
                                end
                                oldHealt = neHealth 
                            end)
                        end
     
     
                        --// All Notifcations
     
                        if getgenv().Riot.HighLight_Visual.Highlight_Target == true then
                            LocalHL.Parent = Plr.Character
                            LocalHL.FillColor = getgenv().Riot.HighLight_Visual.Highlight_Color_Fill
                            LocalHL.OutlineColor = getgenv().Riot.HighLight_Visual.Highlight_Color_OutLine
                        else
                            LocalHL.Parent = game.CoreGui
                        end
     
                        if getgenv().Riot.Main.Notifcation == true and getgenv().Riot.Main.Notifcation_Type == "Roblox" then
                            game.StarterGui:SetCore("SendNotification", {
                            Title = "0Comp.lua";
                            Text = "Locked to: "..tostring(Plr.Character.Humanoid.DisplayName);
                            Icon = "rbxassetid://14954527939"
                            })
                        elseif getgenv().Riot.Main.Notifcation == true and getgenv().Riot.Main.Notifcation_Type == "Xaxa" then
                            notifications:BuildNotificationUI();
                            notifications:Notify("Locked to: " .. Plr.Character.Humanoid.DisplayName);
                        elseif getgenv().Riot.Main.Notifcation == true and getgenv().Riot.Main.Notifcation_Type == "Kali" then
                            Notify({
                                Title = "0Comp.lua",
                                Description = "Locked to: " .. Plr.Character.Humanoid.DisplayName,
                                Duration = 4
                            })
                        end
     
                
                    elseif not Locking then
     
                        if getgenv().Riot.Hit_Chams.Enable == true then
                            if Plr.Character.Humanoid.Health < 0 and Plr.Character.BodyEffects.KO.Value == true then
                                Clone:Destroy()
                            elseif Plr.Character.BodyEffects.Dead.Value == true then
                                Clone:Destroy()
                            end
                        end
     
                        if getgenv().Riot.HighLight_Visual.Highlight_Target == true then
                            LocalHL.Parent = game.CoreGui
                        end
        
                        if getgenv().Riot.HighLight_Visual.Highlight_Hit_Chams == true then
                            LocalHL.Parent = game.CoreGui
                        end
     
                        if getgenv().Riot.Main.Notifcation == true and getgenv().Riot.Main.Notifcation_Type == "Roblox" then
                            game.StarterGui:SetCore("SendNotification", {
                            Title = "0Comp.lua";
                            Text = "Unlocked";
                            Icon = "rbxassetid://14954527939"
                            })
                        elseif getgenv().Riot.Main.Notifcation == true and getgenv().Riot.Main.Notifcation_Type == "Xaxa" then
                            notifications:BuildNotificationUI();
                            notifications:Notify("Unlocked");
                        elseif getgenv().Riot.Main.Notifcation == true and getgenv().Riot.Main.Notifcation_Type == "Kali" then
                            Notify({
                                Title = "0Comp.lua",
                                Description = "Unlocked",
                                Duration = 4
                            })
                        elseif getgenv().Riot.Main.Enabled == false then
                            game.StarterGui:SetCore("SendNotification", {
                            Title = "0Comp.lua",
                            Text = "Target isn't enabled",
                            Duration = 5,
                            Icon = "rbxassetid://14954527939"
                    
                            })
                        end
                    end
                end
            end
        end
     end)
     
     --
     
     function getClosestPlayerToCursor()
         local closestPlayer
         local shortestDistance = circle.Radius
     
         for i, v in pairs(game.Players:GetPlayers()) do
             if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
                 local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                 local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
                 if magnitude < shortestDistance then
                     closestPlayer = v
                     shortestDistance = magnitude
                 end
             end
         end
         return closestPlayer
     end
     
     --
     
     if getgenv().Riot.Box_Visual.Visible then
         game:GetService("RunService").RenderStepped:connect(function()
             if Locking and Plr.Character:FindFirstChild("HumanoidRootPart") then
                 Tracer.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position + (Plr.Character.HumanoidRootPart.Velocity * getgenv().Riot.Main.Prediction))
             else
                 Tracer.CFrame = CFrame.new(0, 9999, 0)
             end
         end)
     end
     
     if getgenv().Riot.Dot_Visual.Visible then
        game:GetService("RunService").RenderStepped:connect(function()
             if Locking and Plr.Character:FindFirstChild("HumanoidRootPart") then
                placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position + (Plr.Character.HumanoidRootPart.Velocity * getgenv().Riot.Main.Prediction))
             else
                placemarker.CFrame = CFrame.new(0, 9999, 0)
             end
         end)
     end
       
     --
     
     local rawmetatable = getrawmetatable(game)
     local old = rawmetatable.__namecall
     setreadonly(rawmetatable, false)
     rawmetatable.__namecall = newcclosure(function(...)
         local args = {...}
         if Locking and getnamecallmethod() == "FireServer" and args[2] == getgenv().Riot.Advanced_Settings.Mouse_Position_Type then
             args[3] = Plr.Character[getgenv().Riot.Main.HitPart].Position+(Plr.Character[getgenv().Riot.Main.HitPart].Velocity * getgenv().Riot.Main.Prediction)
             return old(unpack(args))
         end
         return old(...)
     end)
     
     local WallCheck = function(destination, ignore)
        if getgenv().Riot.Checks.WallChecked then
            local Origin = Camera.CFrame.p
            local CheckRay = Ray.new(Origin, destination - Origin)
            local Hit = game.workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
            return Hit == nil
        else
            return true
        end
     end
     
     --// Resolver
     
     if getgenv().Riot.Resolver.Detect_Desync == true then
        local RunService = game:GetService("RunService")
     
        local function zeroOutYVelocity(hrp)
            hrp.Velocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)
            hrp.AssemblyLinearVelocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)
        end
     
        local function onPlayerAdded(player)
            player.CharacterAdded:Connect(function(character)
                local hrp = character:WaitForChild("HumanoidRootPart")
                zeroOutYVelocity(hrp)
            end)
        end
     
     
     
        game.Players.PlayerAdded:Connect(onPlayerAdded)
        game.Players.PlayerRemoving:Connect(onPlayerRemoving)
     
        RunService.Heartbeat:Connect(function()
            pcall(function()
                for i, player in pairs(game.Players:GetChildren()) do
                    if player.Name ~= game.Players.LocalPlayer.Name then
                        local hrp = player.Character.HumanoidRootPart
                        zeroOutYVelocity(hrp)
                    end
                end
            end)
        end)
     end
     
     
     
     
     
     local networtserviceping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
     local networthmax = string.split(networtserviceping,'(')
     local P = tonumber(networthmax[1])
     
     if getgenv().Riot.Auto_Prediction_Section.Auto_Prediction == true then
        if P < 150 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P150
        elseif P < 140 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P140
        elseif P < 130 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P130
        elseif P < 120 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P120
        elseif P < 110 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P110
        elseif P < 100 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P100
        elseif P < 90 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P90
        elseif P < 80 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P80
        elseif P < 70 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P70
        elseif P < 60 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P60
        elseif P < 50 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P50
        elseif P < 40 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P40
        elseif P < 30 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P30
        elseif P < 20 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P20
        elseif P < 10 then
            getgenv().Riot.Main.Prediction = getgenv().Riot.Auto_Prediction_Section.P10
        end
       wait(getgenv().Riot.Auto_Prediction_Section.Tick)
     end
     
     --// Resolver
     
     
     --
     
     game:GetService("RunService").RenderStepped:Connect(function()
        if getgenv().Riot.Gun_Visuals.GunBeam == true then
            for _,v in pairs(game.Workspace.Ignored:GetChildren()) do
                if v.Name == "BULLET_RAYS" then
                    for _,f in pairs(v:GetChildren()) do
                        if f.Name == "GunBeam" then
                            --
                            f.Brightness = 10
                            f.TextureSpeed = 1
                            f.TextureLength = 10
                            f.LightInfluence = -1
                            f.Width0 = 0.1
                            f.Width1 = 0.1
                            f.LightEmission = 1
                            f.Texture = "9150663556"
                            f.Segments = 0
                            f.FaceCamera = true
                            --
                            f.Color = ColorSequence.new{
                                ColorSequenceKeypoint.new(0, getgenv().Riot.Gun_Visuals.GunBeamColor),
                                ColorSequenceKeypoint.new(1, Color3.fromRGB(105, 95, 245)),
                                ColorSequenceKeypoint.new(1, getgenv().Riot.Gun_Visuals.GunBeamColor)
                            }
                            --
                        end
                    end
                end
            end
        end
     end)
     
     
     while true do
        wait(0.5)
     
        -- Untitled Hood --
     
        if game.PlaceId == 9183932460 then
     
            local lp = game:GetService("Players").LocalPlayer
            local lpn = game:GetService("Players").LocalPlayer.Name
     
            local dbcheck = lp.Backpack:FindFirstChild("[Double-Barrel SG]") or lp.Character:FindFirstChild("[Double-Barrel SG]")
            local revcheck = lp.Backpack:FindFirstChild("[Revolver]") or lp.Character:FindFirstChild("[Revolver]")
            local smgcheck = lp.Backpack:FindFirstChild("[SMG]") or lp.Character:FindFirstChild("[SMG]")
     
            
            if getgenv().Riot.Gun_Visuals.Enable == true then
            
                if dbcheck and not lp:FindFirstChildOfClass("[Double-Barrel SG]") then
            
                    dbcheck.Default.Material = getgenv().Riot.Gun_Visuals.GunMats
                    
                    dbcheck.Default.Color = getgenv().Riot.Gun_Visuals.GunColor
                    
                    dbcheck.Default.Reflectance = getgenv().Riot.Gun_Visuals.GunReflectance
                    
                    dbcheck.Default.Transparency = getgenv().Riot.Gun_Visuals.GunTransparency
                    
                    dbcheck.Default.TextureID = ''
            
                    if getgenv().Riot.Gun_Visuals.GunTexture == true then
                        dbcheck.Default.TextureID = getgenv().Riot.Gun_Visuals.GunTextureId
                    else 
                        dbcheck.Default.TextureID = ''
                    end
                end
     
                if revcheck and not lp:FindFirstChildOfClass("[Revolver]") then
                            
                    revcheck.Default.Material = getgenv().Riot.Gun_Visuals.GunMats
                    
                    revcheck.Default.Color = getgenv().Riot.Gun_Visuals.GunColor
                    
                    revcheck.Default.Reflectance = getgenv().Riot.Gun_Visuals.GunReflectance
                    
                    revcheck.Default.Transparency = getgenv().Riot.Gun_Visuals.GunTransparency
                    
                    revcheck.Default.TextureID = ''
     
                    if getgenv().Riot.Gun_Visuals.GunTexture == true then
                        revcheck.Default.TextureID = getgenv().Riot.Gun_Visuals.GunTextureId
                    else 
                        revcheck.Default.TextureID = ''
                    end
                end
            
                if smgcheck and not lp:FindFirstChildOfClass("[SMG]") then
            
                    smgcheck.Default.Material = getgenv().Riot.Gun_Visuals.GunMats
                    
                    smgcheck.Default.Color = getgenv().Riot.Gun_Visuals.GunColor
                    
                    smgcheck.Default.Reflectance = getgenv().Riot.Gun_Visuals.GunReflectance
                    
                    smgcheck.Default.Transparency = getgenv().Riot.Gun_Visuals.GunTransparency
                    
                    smgcheck.Default.TextureID = ''
     
                    if getgenv().Riot.Gun_Visuals.GunTexture == true then
                        smgcheck.Default.TextureID = getgenv().Riot.Gun_Visuals.GunTextureId
                    else 
                        smgcheck.Default.TextureID = ''
                    end
     
                end
            end
        end
     
        if game.PlaceId == 7242996350 then
     
            local lp = game:GetService("Players").LocalPlayer
            local lpn = game:GetService("Players").LocalPlayer.Name
     
     
            local dbcheck11 = lp.Backpack:FindFirstChild("[Double-Barrel SG]") or lp.Character:FindFirstChild("[Double-Barrel SG]")
            local revcheck11 = lp.Backpack:FindFirstChild("[Revolver]") or lp.Character:FindFirstChild("[Revolver]")
     
     
            if getgenv().Riot.Gun_Visuals.Enable == true then
                
     
                if dbcheck11 and not lp:FindFirstChildOfClass("[Double-Barrel SG]") then
     
                    dbcheck11.Handle.Material = getgenv().Riot.Gun_Visuals.GunMats
                    
                    dbcheck11.Handle.Color = getgenv().Riot.Gun_Visuals.GunColor
                    
                    dbcheck11.Handle.Reflectance = getgenv().Riot.Gun_Visuals.GunReflectance
                    
                    dbcheck11.Handle.Transparency = getgenv().Riot.Gun_Visuals.GunTransparency
                    
                    dbcheck11.Handle.TextureID = ''
     
                    if getgenv().Riot.Gun_Visuals.GunTexture == true then
                        dbcheck11.Handle.TextureID = getgenv().Riot.Gun_Visuals.GunTextureId
                    else 
                        dbcheck11.Handle.TextureID = ''
                    end
     
                end
     
                if revcheck11 and not lp:FindFirstChildOfClass("[Revolver]") then
                                
                    revcheck11.Handle.Material = getgenv().Riot.Gun_Visuals.GunMats
                    
                    revcheck11.Handle.Color = getgenv().Riot.Gun_Visuals.GunColor
                    
                    revcheck11.Handle.Reflectance = getgenv().Riot.Gun_Visuals.GunReflectance
                    
                    revcheck11.Handle.Transparency = getgenv().Riot.Gun_Visuals.GunTransparency
                    
                    revcheck11.Handle.TextureID = ''
     
                    if getgenv().Riot.Gun_Visuals.GunTexture == true then
                        revcheck11.Handle.TextureID = getgenv().Riot.Gun_Visuals.GunTextureId
                    else 
                        revcheck11.Handle.TextureID = ''
                    end
     
                end
            end
        end
     
     
     -- Hood Customs --
     
        if game.PlaceId == 9825515356 then
     
     
            local lp = game:GetService("Players").LocalPlayer
            local lpn = game:GetService("Players").LocalPlayer.Name
            local Wk = game:GetService("Workspace")
     
     
            local dbcheck22 = lp.Backpack:FindFirstChild("[DoubleBarrel]") or lp.Character:FindFirstChild("[DoubleBarrel]") 
            local revcheck22 = lp.Backpack:FindFirstChild("[Revolver]") or lp.Character:FindFirstChild("[Revolver]")
            local smgggcheck22 = lp.Backpack:FindFirstChild("[SMG]") or lp.Character:FindFirstChild("[SMG]")
     
     
            if getgenv().Riot.Gun_Visuals.Enable == true then
                    
                if dbcheck22 and not lp:FindFirstChildOfClass("[DoubleBarrel]") then
     
                    dbcheck22.Handle.Material = getgenv().Riot.Gun_Visuals.GunMats
                    
                    dbcheck22.Handle.Color = getgenv().Riot.Gun_Visuals.GunColor
                    
                    dbcheck22.Handle.Reflectance = getgenv().Riot.Gun_Visuals.GunReflectance
                    
                    dbcheck22.Handle.Transparency = getgenv().Riot.Gun_Visuals.GunTransparency
                    
                    dbcheck22.Handle.TextureID = ''
     
                    if getgenv().Riot.Gun_Visuals.GunTexture == true then
                        dbcheck22.Default.TextureID = getgenv().Riot.Gun_Visuals.GunTextureId
                    else 
                        dbcheck22.Default.TextureID = ''
                    end
     
                end
     
                if revcheck22 and not lp:FindFirstChildOfClass("[Revolver]") then
     
                    revcheck22.Handle.Material = getgenv().Riot.Gun_Visuals.GunMats
                    
                    revcheck22.Handle.Color = getgenv().Riot.Gun_Visuals.GunColor
                    
                    revcheck22.Handle.Reflectance = getgenv().Riot.Gun_Visuals.GunReflectance
                    
                    revcheck22.Handle.Transparency = getgenv().Riot.Gun_Visuals.GunTransparency
                    
                    revcheck22.Handle.TextureID = ''
     
                    if getgenv().Riot.Gun_Visuals.GunTexture == true then
                        revcheck22.Default.TextureID = getgenv().Riot.Gun_Visuals.GunTextureId
                    else 
                        revcheck22.Default.TextureID = ''
                    end
                end
     
                if smgggcheck22 and not lp:FindFirstChildOfClass("[SMG]") then
     
                    smgggcheck22.Handle.Material = getgenv().Riot.Gun_Visuals.GunMats
                    
                    smgggcheck22.Handle.Color = getgenv().Riot.Gun_Visuals.GunColor
                    
                    smgggcheck22.Handle.Reflectance = getgenv().Riot.Gun_Visuals.GunReflectance
                    
                    smgggcheck22.Handle.Transparency = getgenv().Riot.Gun_Visuals.GunTransparency
                    
                    smgggcheck22.Handle.TextureID = ''
     
                    if getgenv().Riot.Gun_Visuals.GunTexture == true then
                        smgcheck22.Default.TextureID = getgenv().Riot.Gun_Visuals.GunTextureId
                    else 
                        smgcheck22.Default.TextureID = ''
                    end
     
                end
            end
        end
     
     -- Da hood --
     
        if game.PlaceId == 2788229376 then
     
            local lp = game:GetService("Players").LocalPlayer
            local lpn = game:GetService("Players").LocalPlayer.Name
            local Wk = game:GetService("Workspace")
     
     
            local dbcheck33 = lp.Backpack:FindFirstChild("[Double-Barrel SG]") or lp.Character:FindFirstChild("[Double-Barrel SG]") 
            local revcheck33 = lp.Backpack:FindFirstChild("[Revolver]") or lp.Character:FindFirstChild("[Revolver]")
            local smgggcheck33 = lp.Backpack:FindFirstChild("[SMG]") or lp.Character:FindFirstChild("[SMG]")
     
            if getgenv().Riot.Gun_Visuals.Enable == true then
                    
                if dbcheck33 and not lp:FindFirstChildOfClass("[Double-Barrel SG]") then
     
                    dbcheck33.Default.Material = getgenv().Riot.Gun_Visuals.GunMats
                    
                    dbcheck33.Default.Color = getgenv().Riot.Gun_Visuals.GunColor
                    
                    dbcheck33.Default.Reflectance = getgenv().Riot.Gun_Visuals.GunReflectance
                    
                    dbcheck33.Default.Transparency = getgenv().Riot.Gun_Visuals.GunTransparency
                    
                    dbcheck33.Default.TextureID = ''
     
                    if getgenv().Riot.Gun_Visuals.GunTexture == true then
                        dbcheck33.Default.TextureID = getgenv().Riot.Gun_Visuals.GunTextureId
                    else 
                        dbcheck33.Default.TextureID = ''
                    end
                end
     
                if revcheck33 and not lp:FindFirstChildOfClass("[Revolver]") then
     
                    revcheck33.Default.Material = getgenv().Riot.Gun_Visuals.GunMats
                    
                    revcheck33.Default.Color = getgenv().Riot.Gun_Visuals.GunColor
                    
                    revcheck33.Default.Reflectance = getgenv().Riot.Gun_Visuals.GunReflectance
                    
                    revcheck33.Default.Transparency = getgenv().Riot.Gun_Visuals.GunTransparency
                    
                    revcheck33.Default.TextureID = ''
     
                    if getgenv().Riot.Gun_Visuals.GunTexture == true then
                        revcheck33.Default.TextureID = getgenv().Riot.Gun_Visuals.GunTextureId
                    else 
                        revcheck33.Default.TextureID = ''
                    end
     
                end
     
                if smgggcheck33 and not lp:FindFirstChildOfClass("[SMG]") then
     
                   smgggcheck33.Default.Material = getgenv().Riot.Gun_Visuals.GunMats
                    
                   smgggcheck33.Default.Color = getgenv().Riot.Gun_Visuals.GunColor
                    
                   smgggcheck33.Default.Reflectance = getgenv().Riot.Gun_Visuals.GunReflectance
                    
                   smgggcheck33.Default.Transparency = getgenv().Riot.Gun_Visuals.GunTransparency
                    
                   smgggcheck33.Default.TextureID = ''
     
                    if getgenv().Riot.Gun_Visuals.GunTexture == true then
                        smgcheck33.Default.TextureID = getgenv().Riot.Gun_Visuals.GunTextureId
                    else 
                        smgcheck33.Default.TextureID = ''
                    end
     
                end
            end
        end
     wait(30)
     end
     
     RS.Heartbeat:Connect(function()
        if getgenv().Riot.Main.AirShot_Function == true and Plr.Character:FindFirstChild("Humanoid") then
            if Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air and Plr.Character.Humanoid.Jump == true then
                getgenv().Riot.Main.HitPart = getgenv().Riot.Main.Airshot_Part
            else
                getgenv().Riot.Main.HitPart = getgenv().Riot.Main.HitPart
            end
        end
     end)
     
     if getgenv().Riot.Checks.CrewCheck == true then
        while true do
            local newPlayer = game.Players.PlayerAdded:wait()
            if player:IsInGroup(newPlayer.Group) then
                table.insert(Ignored.Players, newPlayer)
            end
        end
     end
     
     --
     
     if getgenv().Riot.Cursor_Visuals.Enable == true then
        local lpww = game.Players.LocalPlayer.Name
        local plrgui = game:GetService("Players").lpww.PlayerGui.MainScreenGui
     
        local top = plrgui.Aim.Top
        local bot = plrgui.Aim.Bottom
        local rig = plrgui.Aim.Right
        local leg = plrgui.Aim.Left
        local Crs = plrgui.Aim.CursorImage
     
        top.BorderColor3 = Color3.fromRGB(getgenv().Riot.Cursor_Visuals.Border_Color)
        top.BorderSizePixel = 1
        bot.BorderColor3 = Color3.fromRGB(getgenv().Riot.Cursor_Visuals.Border_Color)
        bot.BorderSizePixel = 1
        rig.BorderColor3 = Color3.fromRGB(getgenv().Riot.Cursor_Visuals.Border_Color)
        rig.BorderSizePixel = 1
        leg.BorderColor3 = Color3.fromRGB(getgenv().Riot.Cursor_Visuals.Border_Color)
        leg.BorderSizePixel = 1
        
        top.Color = Color3.fromRGB(getgenv().Riot.Cursor_Visuals.Color)
        bot.Color = Color3.fromRGB(getgenv().Riot.Cursor_Visuals.Color)
        rig.Color = Color3.fromRGB(getgenv().Riot.Cursor_Visuals.Color)
        leg.Color = Color3.fromRGB(getgenv().Riot.Cursor_Visuals.Color)
     
     end
     
     if getgenv().Riot.Cursor_Visuals.Custom_Crosshair == true then
        Crs.Texture = getgenv().Riot.Cursor_Visuals.Custom_Crosshair_Id
     end
     
     if getgenv().Riot.Cursor_Visuals.Rotation == true then
        while wait() do
            top.Rotation = top.Rotation + getgenv().Riot.Cursor_Visuals.Rotation_Power
            bot.Rotation = bot.Rotation + getgenv().Riot.Cursor_Visuals.Rotation_Power
            rig.Rotation = rig.Rotation - getgenv().Riot.Cursor_Visuals.Rotation_Power
            leg.Rotation = leg.Rotation - getgenv().Riot.Cursor_Visuals.Rotation_Power
        end
     end
     --
     
     game:GetService("RunService").Heartbeat:Connect(function()
     
        if getgenv().Riot.Options.Headless == true then
            game.Players.LocalPlayer.Character.Head.Transparency = 1
            for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
                if (v:IsA("Decal")) then
                    v.Transparency = 1
                end
            end
        end
     
        if getgenv().Riot.Options.Korblox == true then
            local ply = game.Players.LocalPlayer
            local chr = ply.Character
            chr.RightLowerLeg.MeshId = "902942093"
            chr.RightLowerLeg.Transparency = "1"
            chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
            chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
            chr.RightFoot.MeshId = "902942089"
            chr.RightFoot.Transparency = "1"
            game.Players.LocalPlayer.Character.Humanoid.Jump = false
            wait(1)
        end
     end)
     
     if getgenv().Riot.Fps_Unlocker.Enabled == true then
        setfpscap(getgenv().Riot.Fps_Unlocker.Cap)
     else 
        setfpscap(240)
     end
end
