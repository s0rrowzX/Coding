local ScriptLaunched, ScriptError = pcall(function()
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/nexeralt/Die-Of-Death/refs/heads/main/main.lua"))()

--[[

Function List Begins NOW!

]]--

-- assets manager


if makefolder and isfolder and writefile and isfile then
if not isfolder("dodnexerhub") then
makefolder("dodnexerhub")
end
if not isfolder("dodnexerhub/music") then
makefolder("dodnexerhub/music")
end
if not isfile("dodnexerhub/music/subject.mp3") then
writefile("dodnexerhub/music/subject.mp3", game:HttpGet("https://raw.githubusercontent.com/nexeralt/Die-Of-Death/refs/heads/main/Assets/ChaseThemes/lost_rift(subject).mp3"))
end
if not isfile("dodnexerhub/music/idiotware.mp3") then
writefile("dodnexerhub/music/idiotware.mp3", game:HttpGet("https://raw.githubusercontent.com/nexeralt/Die-Of-Death/refs/heads/main/Assets/ChaseThemes/Idiotware.mp3"))
end
if not isfile("dodnexerhub/music/lmssubject.mp3") then
writefile("dodnexerhub/music/lmssubject.mp3", game:HttpGet("https://raw.githubusercontent.com/nexeralt/Die-Of-Death/refs/heads/main/Assets/LMS/subjectlms.mp3"))
end
if not isfile("dodnexerhub/music/snowie_new.mp3") then
writefile("dodnexerhub/music/snowie_new.mp3", game:HttpGet("https://raw.githubusercontent.com/nexeralt/Die-Of-Death/refs/heads/main/Assets/ChaseThemes/Unknown%20Theme%20-%20Die%20of%20Death%20UST.mp3"))
end
if not isfile("dodnexerhub/music/mequot.mp3") then
writefile("dodnexerhub/music/mequot.mp3", game:HttpGet("https://raw.githubusercontent.com/nexeralt/Die-Of-Death/refs/heads/main/Assets/ChaseThemes/Insanely%20(MeQuot's%20Theme)%20-%20Bubswest%20Remix.mp3"))
end
end

function getplrspeed(plr)
local target = plr
local speed = 0
local character = target.Character or target.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local hrp = character:WaitForChild("HumanoidRootPart")
if not target or not hrp or not humanoid then
return speed
end
local velocity = hrp.Velocity
local horizontalvelocity = Vector3.new(velocity.X,0,velocity.Z)
speed = horizontalvelocity.Magnitude
return speed
end

function predict(plr)
local target = plr
repeat task.wait() until target.Character and target.Character:FindFirstChild("HumanoidRootPart") and target.Character:FindFirstChildOfClass("Humanoid")
local speed = math.round(Vector3.new(target.Character:WaitForChild("HumanoidRootPart").Velocity.X, 0, target.Character:WaitForChild("HumanoidRootPart").Velocity.Z).Magnitude)
local predicted_vector = target.Character:FindFirstChild("HumanoidRootPart").Position + target.Character:FindFirstChildOfClass("Humanoid").MoveDirection * speed
return (predicted_vector + Vector3.new(0,1.1,math.random(-1,1)))
end

-- Group Checker by Nexer1234

function ReturnURL(which, cursor)
local qqz = which or 1
local zzx = (cursor and "&cursor="..cursor.."") or "&cursor="
if qqz == 1 then
return "https://groups.roblox.com/v1/groups/35649714/roles/286030025/users?sortOrder=Des&limit=100"..zzx
else
return "https://groups.roproxy.com/v1/groups/35649714/roles/286030025/users?sortOrder=Des&limit=100"..zzx
end
end

function CheckIfUserInGroup()
if game:GetService("Players").LocalPlayer:IsInGroup(35649714) then
return true
end
ft = {}
Decode = nil
repeat
if Decode == nil then
Decode = game:GetService("HttpService"):JSONDecode(game:HttpGet(ReturnURL(1))) or game:GetService("HttpService"):JSONDecode(game:HttpGet(ReturnURL("backup")))
end
if not Decode["data"] or Decode["errors"] then return true end
for i,v in pairs(Decode["data"]) do
if v ~= nil and v["username"] then
table.insert(ft, v["username"])
end
end
if Decode["nextPageCursor"] ~= nil then
Decode = nil
Decode = game:GetService("HttpService"):JSONDecode(game:HttpGet(ReturnURL(1, Decode["nextPageCursor"]))) or game:GetService("HttpService"):JSONDecode(game:HttpGet(ReturnURL("backup", Decode["nextPageCursor"])))
end
until Decode["nextPageCursor"] == nil
if table.find(ft,tostring(game:GetService("Players").LocalPlayer.Name)) then
return true
end
return false
end

function TableFirstElementToString(tbl)
if type(tbl) == "table" then
for _,element in ipairs(tbl) do
return tostring(element)
end
else
return tostring(tbl)
end
end

pcall(function()
Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua"))()
end)

pcall(function()
Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
end)

function Notify(title, content, time, mode)
time = time or 10
mode = mode or false
if mode == true then
img = 136186846844342
elseif mode == false then
img = 71508738660632
end
Rayfield:Notify({
	Title = title,
	Content = content,
	Duration = time,
	Image = img,
	Actions = {},
})
end

function ErrorRequire()
Notify("Error!", "Your executor doesn't support ''require'' function which is being used in this feature!")
end

function ErrorSignal()
Notify("Error!", "Your executor doesn't support ''firesignal'' function which is being used in this feature!")
end

pcall(function()
WebHandler = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pro666Pro/CustomFunctions/refs/heads/main/funcs.txt"))()
end)

pcall(function()
game:GetService("CoreGui")
end)

if not game:FindService("CoreGui") then
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error!",Text = "Your executor don't have access to core gui which is being used for UI library! Script stopped loading.",Icon = "rbxassetid://125704683916878",Duration = 36000,Button1 = "Ok!"})
return nil
end

function TestFireSignal()
if firesignal then
return true
end
return false
--[[
local suc, err = pcall(function()
Instance.new("RemoteEvent", game:GetService("LogService")).Name = "TestRemote"
local source = 

game:GetService("LogService"):WaitForChild("TestRemote").OnClientEvent:Connect(function()
Instance.new("Folder", game:GetService("LogService")).Name = "TestFolder"
end)

loadstring(source)()
task.wait(1)
pcall(function()
firesignal(game:GetService("LogService"):WaitForChild("TestRemote").OnClientEvent)
task.wait(1)
end)
end)
if game:GetService("LogService"):FindFirstChild("TestFolder") and suc then
if game:GetService("LogService"):FindFirstChild("TestRemote") then game:GetService("LogService"):FindFirstChild("TestRemote"):Destroy() end
if game:GetService("LogService"):FindFirstChild("TestFolder") then game:GetService("LogService"):FindFirstChild("TestFolder"):Destroy() end
return true
end
if game:GetService("LogService"):FindFirstChild("TestRemote") then game:GetService("LogService"):FindFirstChild("TestRemote"):Destroy() end
if game:GetService("LogService"):FindFirstChild("TestFolder") then game:GetService("LogService"):FindFirstChild("TestFolder"):Destroy() end
return false
]]--
end

function TestRequire()
if require then
return true
end
return false
end

pcall(function()
game = game or workspace.Parent or Ugc or _game or __game
end)
Players = game:GetService("Players")
LP = Players.LocalPlayer
local Char = LP.Character or LP.CharacterAdded:Wait()
HRP = LP.Character:WaitForChild("HumanoidRootPart")

function HaveAtt(att)
local attribute = tostring(att)
local Char = LP.Character or LP.CharacterAdded:Wait()
if Char:GetAttribute(tostring(attribute)) then
return true
else
return false
end
end

function GetAtt(att)
local Char = LP.Character or LP.CharacterAdded:Wait()
local attribute = Char:GetAttribute(tostring(att))
return attribute
end

function SetAtt(att, val)
local attribute = tostring(att)
local value = val
local Char = LP.Character or LP.CharacterAdded:Wait()
Char:SetAttribute(tostring(attribute), value)
end

Window = Rayfield:CreateWindow({
   Name = "Nexer Hub - DoD",
   Icon = 0,    
   LoadingTitle = "Nexer Hub",
   LoadingSubtitle = "by nexer",
   Theme = "Ocean",
   DisableRayfieldPrompts = true,
   DisableBuildWarnings = true,

   ConfigurationSaving = {
      Enabled = false,
      FolderName = "DoD:NH",
      FileName = "DoD:NH_Configuration"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = false,
   KeySettings = {
      Title = "WARNING ⚠️",
      Subtitle = "While this script may be the best one, please note that any form of exploiting is always bannable.",
      Note = "If you accept the risk, you can continue. The key is ''nexer1234''",
      FileName = "Key",
      SaveKey = false,
      GrabKeyFromSite = false,
      Key = {"nexer1234","NEXER1234","Nexer1234"}
   }
})

if TestRequire() ~= true then
Notify("Warning!", "Your executor don't support require function, which is being used in most of the features!", 8, false)
end

if TestFireSignal() ~= true then
Notify("Warning!", "Your executor don't support firesignal function, which is being used in some of the features!", 8, false)
end

--[[ 


  _________ __                  __               
 /   _____//  |______    _____ |__| ____ _____   
 \_____  \\   __\__  \  /     \|  |/    \\__  \  
 /        \|  |  / __ \|  Y Y  \  |   |  \/ __ \_
/_______  /|__| (____  /__|_|  /__|___|  (____  /
        \/           \/      \/        \/     \/ 

Stamina Management


]]--

pcall(function()
MovementModule = require(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("Client"):WaitForChild("Modules"):WaitForChild("Movement"))
end)
local Stamina = Window:CreateTab("Stamina Management",9525535512)
Stamina:CreateSection("Quick Changes (★‿★)")

Stamina:CreateButton({Name = "Infinity Stamina"; Callback = function()
pcall(function()
MovementModule["Stamina"] = (math and math.huge) or 9e9
end)
SetAtt("MaxStamina", (math and math.huge) or 9e9)
Notify("Success!", "Now your stamina is infinite!", 4, true)
end; })

Stamina:CreateButton({Name = "Fast Sprint"; Callback = function()
SetAtt("SprintSpeed", 80)
Notify("Success!", "Now you'll be fast when sprinting!", 4, true)
end; })

Stamina:CreateButton({Name = "2x Stamina Modifier"; Callback = function()
SetAtt("WalkSpeedModifier", 2)
SetAtt("StaminaModifier", 2)
Notify("Success!", "Your sprint modifier is now 2x!", 4, true)
end; })

Stamina:CreateSection("Quick Toggles (╯▽╰ )")

Stamina:CreateToggle({Name = "Can Jump?"; CurrentValue = false; Callback = function(Value)
CanJump = Value
if CanJump == true then
repeat task.wait() until game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = 50
Notify("Success!", "You can jump now! Very ''useful'' thing.", 6, true)
elseif CanJump == false then
repeat task.wait() until game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = 0
end
end; })

Stamina:CreateToggle({Name = "No Stamina Loss"; CurrentValue = false; Callback = function(Value)
if TestRequire() ~= true then
ErrorRequire()
return nil
end
StaminaLoss = Value
if StaminaLoss == true then
repeat task.wait(0.005)
if HaveAtt("MaxStamina") == true then
MovementModule["Stamina"] = GetAtt("MaxStamina")
end
until StaminaLoss == false
end
end; })

Stamina:CreateToggle({Name = "No Fatigue"; CurrentValue = false; Callback = function(Value)
if TestRequire() ~= true then
ErrorRequire()
return nil
end
NoFatigue = Value
if NoFatigue == true then
repeat task.wait(0.005)
if HaveAtt("Fatigue") == true then
SetAtt("Fatigue", false)
end
until NoFatigue == false
end
end; })

Stamina:CreateSection("Advanced ◑﹏◐")

Stamina:CreateToggle({Name = "Auto-Fill Stamina After Changing Max Stamina"; CurrentValue = true; Callback = function(Value)
AutoFillStamina = Value
end; })
AutoFillStamina = true

Stamina:CreateInput({Name = "Max Stamina"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = true; Callback = function(Value)
SetAtt("MaxStamina", tonumber(Value))
if TestRequire() ~= true and AutoFillStamina == true then
ErrorRequire()
elseif TestRequire() == true and AutoFillStamina == true then
MovementModule["Stamina"] = tonumber(Value)
end
end; })

Stamina:CreateInput({Name = "Sprint Speed"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = true; Callback = function(Value)
SetAtt("SprintSpeed", tonumber(Value))
end; })

Stamina:CreateInput({Name = "Walk Speed"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = true; Callback = function(Value)
SetAtt("WalkSpeed", tonumber(Value))
end; })

Stamina:CreateInput({Name = "Walk Speed Modifier"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = true; Callback = function(Value)
SetAtt("WalkSpeedModifier", tonumber(Value))
end; })

Stamina:CreateInput({Name = "Stamina Modifier"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = true; Callback = function(Value)
SetAtt("StaminaModifier", tonumber(Value))
end; })

Stamina:CreateSection("Auto-Injection ￣へ￣")

Stamina:CreateToggle({Name = "Auto-Inject"; CurrentValue = false; Callback = function(Value)
AutoInjectStamina = Value
if Value == true then
Notify("Success!", "Stamina settings will automatically apply to your character at the start of the round!", 7, true)
end
end; })
AutoInjectStamina = false

Stamina:CreateInput({Name = "Max Stamina"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = false; Callback = function(Value)
_G.MaxStaminaInjection = tonumber(Value)
end; })

Stamina:CreateInput({Name = "Sprint Speed"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = false; Callback = function(Value)
_G.SprintSpeedInjection = tonumber(Value)
end; })

Stamina:CreateInput({Name = "Walk Speed"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = false; Callback = function(Value)
_G.WalkSpeedInjection = tonumber(Value)
end; })

Stamina:CreateInput({Name = "Walk Speed Modifier"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = false; Callback = function(Value)
_G.WalkSpeedModifierInjection = tonumber(Value)
end; })

Stamina:CreateInput({Name = "Stamina Modifier"; PlaceholderText = "Type Here!"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = true; Callback = function(Value)
_G.StaminaModifierInjection = tonumber(Value)
end; })

game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams").DescendantAdded:Connect(function(descendant)
if descendant and descendant.Name == ""..LP.Name.."" and not descendant.Parent.Name == "Ghost" and AutoInjectStamina == true then
task.wait(21.5)
pcall(function()
SetAtt("MaxStamina", _G.MaxStaminaInjection)
if TestRequire() == true then
MovementModule["Stamina"] = _G.MaxStaminaInjection
end
end)
pcall(function()
SetAtt("SprintSpeed", _G.SprintSpeedInjection)
end)
pcall(function()
SetAtt("WalkSpeed", _G.WalkSpeedInjection)
end)
pcall(function()
SetAtt("WalkSpeedModifier", _G.WalkSpeedModifierInjection)
end)
pcall(function()
SetAtt("StaminaModifier", _G.StaminaModifierInjection)
end)
end
end)

--[[ 


___________               __                 
\_   _____/ _____   _____/  |_  ____   ______
 |    __)_ /     \ /  _ \   __\/ __ \ /  ___/
 |        \  Y Y  (  <_> )  | \  ___/ \___ \ 
/_______  /__|_|  /\____/|__|  \___  >____  >
        \/      \/                 \/     \/ 

Emotes Management


]]--
local Emotes_Table = {
[1] = "Dance";
[2] = "Squingle";
[3] = "MyEmoteIdea";
}
function GetRandomEmote()
return Emotes_Table[math.random(1, #Emotes_Table)]
end
pcall(function()
EmotesModule = require(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("Client"):WaitForChild("Modules"):WaitForChild("Ability"))
end)
local Dance = Window:CreateTab("Emotes Management",9006890331)
Dance:CreateSection("Dance o(*^▽^*)┛")

Dance:CreateButton({Name = "Open Emote Selection"; Callback = function()
game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("EmoteSelection").Visible = true
game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("EmoteSelection").Active = true
end; })

Dance:CreateButton({Name = "Override-Use Dance"; Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("Emote"):FireServer("Dance")
end; })

Dance:CreateButton({Name = "Override-Use Squingle"; Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("Emote"):FireServer("Squingle")
end; })

Dance:CreateButton({Name = "Override-Use Gangnam Style"; Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("Emote"):FireServer("Gangnam Style")
end; })

Dance:CreateButton({Name = "Override-Use PBJ"; Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("Emote"):FireServer("PBJ")
end; })

Dance:CreateButton({Name = "Override-Use Tornado"; Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("Emote"):FireServer("Tornado")
end; })



--[[ 


__________       __        __    ___________                     
\______   \____ |__| _____/  |_  \_   _____/____ _______  _____  
 |     ___/  _ \|  |/    \   __\  |    __) \__  \\_  __ \/     \ 
 |    |  (  <_> )  |   |  \  |    |     \   / __ \|  | \/  Y Y  \
 |____|   \____/|__|___|  /__|    \___  /  (____  /__|  |__|_|  /
                        \/            \/        \/            \/ 

Point Farm


]]--

function IsThereKiller()
if game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model") and game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model").Name ~= game:GetService("Players").LocalPlayer.Name then
return true
end
return false
end

function GetMoneyViaAbility(ability)
if IsThereKiller() ~= true then return nil end
local OldHRPCF = LP.Character:WaitForChild("HumanoidRootPart").CFrame
local function ReturnToOldSpot()
local time = tick()
while tick() - time < 1.5 do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v and v:IsA("BasePart") then
v.Velocity = Vector3.new(0,0,0)
v.RotVelocity = Vector3.new(0,0,0)
end
end
LP.Character:WaitForChild("HumanoidRootPart").CFrame = OldHRPCF
task.wait()
end
end

--[[ If/Elseif starts here ]]--

if ability == "Cloak" then
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection"):FireServer(unpack({{tostring(ability)}}))
local time = tick()
while tick() - time < 1.25 do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v and v:IsA("BasePart") then
v.Velocity = Vector3.new(0,0,0)
v.RotVelocity = Vector3.new(0,0,0)
end
end
LP.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model"):WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,10,0)
task.wait()
end
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunctions"):WaitForChild("UseAbility"):InvokeServer(unpack({tostring(ability)}))
local time = tick()
while tick() - time < 0.75 do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v and v:IsA("BasePart") then
v.Velocity = Vector3.new(0,0,0)
v.RotVelocity = Vector3.new(0,0,0)
end
end
LP.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model"):WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,10,0)
task.wait()
end
--[[ skibidi void ]]--
local time = tick()
while tick() - time < 8 do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v and v:IsA("BasePart") then
v.Velocity = Vector3.new(0,0,0)
v.RotVelocity = Vector3.new(0,0,0)
end
end
LP.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(0,-450,0)
task.wait()
end
ReturnToOldSpot()

elseif ability == "Adrenaline" then
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection"):FireServer(unpack({{tostring(ability)}}))
local time = tick()
while tick() - time < 1.25 do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v and v:IsA("BasePart") then
v.Velocity = Vector3.new(0,0,0)
v.RotVelocity = Vector3.new(0,0,0)
end
end
LP.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model"):WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,10,0)
task.wait()
end
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunctions"):WaitForChild("UseAbility"):InvokeServer(unpack({tostring(ability)}))
local time = tick()
while tick() - time < 0.75 do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v and v:IsA("BasePart") then
v.Velocity = Vector3.new(0,0,0)
v.RotVelocity = Vector3.new(0,0,0)
end
end
LP.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model"):WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,10,0)
task.wait()
end
--[[ skibidi void ]]--
local time = tick()
while tick() - time < 6 do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v and v:IsA("BasePart") then
v.Velocity = Vector3.new(0,0,0)
v.RotVelocity = Vector3.new(0,0,0)
end
end
LP.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(0,-450,0)
task.wait()
end
ReturnToOldSpot()

elseif ability == "Punch" then
local time = tick()
while tick() - time < 3 do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v and v:IsA("BasePart") then
v.Velocity = Vector3.new(0,0,0)
v.RotVelocity = Vector3.new(0,0,0)
end
end
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection"):FireServer(unpack({{tostring(ability)}}))
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunctions"):WaitForChild("UseAbility"):InvokeServer(unpack({tostring(ability)}))
LP.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model"):WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,0,2)
task.wait()
end
ReturnToOldSpot()

elseif ability == "Taunt" then
local time = tick()
while tick() - time < 3 do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v and v:IsA("BasePart") then
v.Velocity = Vector3.new(0,0,0)
v.RotVelocity = Vector3.new(0,0,0)
end
end
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection"):FireServer(unpack({{tostring(ability)}}))
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunctions"):WaitForChild("UseAbility"):InvokeServer(unpack({tostring(ability)}))
LP.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model"):WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,0,2)
task.wait()
end
ReturnToOldSpot()


elseif ability == "Revolver" then
local time = tick()
while tick() - time < 3 do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v and v:IsA("BasePart") then
v.Velocity = Vector3.new(0,0,0)
v.RotVelocity = Vector3.new(0,0,0)
end
end
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection"):FireServer(unpack({{tostring(ability)}}))
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunctions"):WaitForChild("UseAbility"):InvokeServer(unpack({tostring(ability)}))
LP.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model"):WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,0,2)
task.wait()
end
ReturnToOldSpot()

end
end

local PointFarm = Window:CreateTab("Point Farm",107624957891469)

PointFarm:CreateLabel("Before farming money make sure to disable shiftlock! ヾ(•ω•`)o")

ability_tofarm = "Cloak"
PointFarm:CreateDropdown({Name = "Ability"; Options = {"Cloak","Punch","Taunt","Revolver","Adrenaline"}; CurrentOption = "Cloak"; MultiSelection = false; Callback = function(Value)
ability_tofarm = TableFirstElementToString(Value)
end; })

local CloakLabel = PointFarm:CreateLabel("Cloak Cooldown: 0")
local PunchLabel = PointFarm:CreateLabel("Punch Cooldown: 0")
local TauntLabel = PointFarm:CreateLabel("Taunt Cooldown: 0")
local RevolverLabel = PointFarm:CreateLabel("Revolver Cooldown: 0")
local AdrenalineLabel = PointFarm:CreateLabel("Adrenaline Cooldown: 0")

local CloakDebounce = false
local PunchDebounce = false
local TauntDebounce = false
local RevolverDebounce = false
local AdrenalineDebounce = false

PointFarm:CreateButton({Name = "Get Money with Ability"; Callback = function()
--[[ cooldown thingy ]]--
task.delay(0,function()
task.spawn(function()
if ability_tofarm == "Cloak" then
if CloakDebounce then
Notify("Error!", "Cloak ability is in cooldown. Please wait!", 5, false)
return nil
end
CloakDebounce = true
for i = 50, 1, -1 do
CloakLabel:Set("Cloak Cooldown: "..i)
wait(1)
end
CloakLabel:Set("Cloak Cooldown: 0")
CloakDebounce = false
elseif ability_tofarm == "Punch" then
if PunchDebounce then
Notify("Error!", "Punch ability is in cooldown. Please wait!", 5, false)
return nil
end
PunchDebounce = true
for i = 40, 1, -1 do
PunchLabel:Set("Punch Cooldown: "..i)
wait(1)
end
PunchLabel:Set("Punch Cooldown: 0")
PunchDebounce = false
elseif ability_tofarm == "Taunt" then
if TauntDebounce then
Notify("Error!", "Taunt ability is in cooldown. Please wait!", 5, false)
return nil
end
TauntDebounce = true
for i = 25, 1, -1 do
TauntLabel:Set("Taunt Cooldown: "..i)
wait(1)
end
TauntLabel:Set("Taunt Cooldown: 0")
TauntDebounce = false
elseif ability_tofarm == "Revolver" then
if RevolverDebounce then
Notify("Error!", "Revolver ability is in cooldown. Please wait!", 5, false)
return nil
end
RevolverDebounce = true
for i = 15, 1, -1 do
RevolverLabel:Set("Revolver Cooldown: "..i)
wait(1)
end
RevolverLabel:Set("Revolver Cooldown: 0")
RevolverDebounce = false
elseif ability_tofarm == "Adrenaline" then
if AdrenalineDebounce then
Notify("Error!", "Adrenaline ability is in cooldown. Please wait!", 5, false)
return nil
end
AdrenalineDebounce = true
for i = 35, 1, -1 do
AdrenalineLabel:Set("Adrenaline Cooldown: "..i)
wait(1)
end
AdrenalineLabel:Set("Adrenaline Cooldown: 0")
AdrenalineDebounce = false
end
end)
end)
--[[ get money ]]--
task.spawn(function()
GetMoneyViaAbility(tostring(ability_tofarm))
end)
Notify("Success!", "Getting points via "..tostring(ability_tofarm).." ability! Please wait.", 4, true)
end; })

--[[ 


   _____ ___     __ __   __  __   __               
  /  _  \\_ |__ |__|  | |__|/  |_|__| ____   ______
 /  /_\  \| __ \|  |  | |  \   __\  |/ __ \ /  ___/
/    |    \ \_\ \  |  |_|  ||  | |  \  ___/ \___ \ 
\____|__  /___  /__|____/__||__| |__|\___  >____  >
        \/    \/                         \/     \/ 

Abilities Management


]]--

local Abilities_Table = {
	[1] = "Cloak",
	[2] = "Punch",
	[3] = "Taunt",
	[4] = "BonusPad",
	[5] = "Block",
	[6] = "Caretaker",
	[7] = "Dash",
	[8] = "Hotdog",
	[9] = "Revolver",
	[10] = "Adrenaline"
}
function GetRandomAbility()
return Abilities_Table[math.random(1, #Abilities_Table)]
end

AbilityData = {

--\\ Civilians Abilities //--
["Adrenaline"] = {Name = "Adrenaline",InputShown = "",Tip = "Get a temporary speed boost for 6 seconds, highlighting you to your teamates and slowing you down after it\'s over.",Cooldown = 35,Icon = "rbxassetid://116399911657417",DisplayName = "Adrenaline"};
["Punch"] = {Name = "Punch",InputShown = "",Tip = "Swing foward stunning any killers hit for 3 seconds, if missed you\'ll get severe endlag.",Cooldown = 40,Icon = "rbxassetid://97428323453639",DisplayName = "Punch"};
["Caretaker"] = {Name = "Caretaker",InputShown = "",Tip = "Splash a potion infront of you, any survivors hit will heal 20 HP in total. Having this ability makes you lose 75 max health though!",Cooldown = 30,Icon = "rbxassetid://90712805517714",DisplayName = "Caretaker"};
["Cloak"] = {Name = "Cloak",InputShown = "",Tip = "Becoming heavily slowed but invisible for a short amount of time, Killers can still hit you though!",Cooldown = 50,Icon = "rbxassetid://90476367580326",DisplayName = "Cloak"};
["Block"] = {Name = "Block",InputShown = "",Tip = "Try blocking any form of damage, if successful heal 10 HP, get a speed boost and negate all the damage.",Cooldown = 40,Icon = "rbxassetid://120929805037270",DisplayName = "Block"};
["Dash"] = {Name = "Dash",InputShown = "",Tip = "Dash foward, after you will get fatigue for 2 seconds which slows stamina regeneration and makes it drain faster.",Cooldown = 20,Icon = "rbxassetid://73777691791017",DisplayName = "Dash"};
["BonusPad"] = {Name = "BonusPad",InputShown = "",Tip = "Build a temporary speed pad that speeds up any survivor who steps on it. Having this ability makes you lose 10 max health though!",Cooldown = 70,Icon = "rbxassetid://86775625332300",DisplayName = "BonusPad"};
["Hotdog"] = {Name = "Hotdog",InputShown = "",Tip = "Eat a hotdog, healing 15 HP at the cost of 10 stamina.",Cooldown = 15,Icon = "rbxassetid://134322360499381",DisplayName = "Hotdog"};
["Revolver"] = {Name = "Revolver",InputShown = "",Tip = "Shoot with your revolver stunning any killers hit for 2 seconds, you\'ll have to reload after. Having this ability makes you lose 20 max stamina though!",Cooldown = 15,Icon = "rbxassetid://107624957891469",DisplayName = "Revolver"};
["Taunt"] = {Name = "Taunt",InputShown = "",Tip = "Taunt the killer gaining a forcefield, highlighting the killer, and slowing them down for 5 seconds or until you\'re hit for the duration of the effect (1.25x damage).",Cooldown = 25,Icon = "rbxassetid://85436299122876",DisplayName = "Taunt"};
["Banana"] = {Name = "Banana",InputShown = "",Tip = "Toss a banana onto the floor, if the killer or the civilian who made it touch the banana, they will slip and be briefly stunned, the banana will naturally decay over time.",Cooldown = 20,Icon = "rbxassetid://96202444819611",DisplayName = "Banana Peel"};

--\\ Killers M1 //--
["Swing"] = {Name = "Swing",InputShown = "M1",Tip = "Swing forward to deal damage.",Cooldown = 1,Icon = "rbxassetid://13754070639",DisplayName = "Swing"}; -- Template
["PursuerSwing"] = {Name = "Swing",InputShown = "M1",Tip = "Swing forward to deal damage.",Cooldown = 1,Icon = "rbxassetid://86297288069487",DisplayName = "Swing"}; -- Pursuer
["ArtfulSwing"] = {Name = "Swing",InputShown = "M1",Tip = "Swing forward to deal damage.",Cooldown = 1,Icon = "rbxassetid://95828395635772",DisplayName = "Swing"}; -- Fartful
["HarkenSwing"] = {Name = "Swing",InputShown = "M1",Tip = "Swing forward to deal damage.",Cooldown = 1,Icon = "rbxassetid://79789896606805",DisplayName = "Swing"}; -- Harken
["BadwareSwing"] = {Name = "Swing",InputShown = "M1",Tip = "Swing forward to deal damage.",Cooldown = 1,Icon = "rbxassetid://91900292604311",DisplayName = "Swing"}; -- Badware
["Eject"] = {Name = "Eject",InputShown = "M1",Tip = "Shoot a missile forward to deal damage.",Cooldown = 2.5,Icon = "rbxassetid://104399918505448",DisplayName = "Eject"}; -- Killdroid

--\\ Killer Abilities //--
["Cleave"] = {Name = "Cleave",InputShown = "",Tip = "Lunge forward and deal 20 damage and 10 bleed, long endlag and highlights the victim.",Cooldown = 20,Icon = "rbxassetid://92447235780730",DisplayName = "Cleave"};
["Howl"] = {Name = "Howl",InputShown = "",Tip = "Scream and slow everyone on the map for 6s.",Cooldown = 35,Icon = "rbxassetid://121485044324107",DisplayName = "Howl"};
["Stalk"] = {Name = "Stalk",InputShown = "",Tip = "Turn invisible and gain a lot of speed, cant use abilities and a long endlag after.",Cooldown = 10,Icon = "rbxassetid://92577246919936",DisplayName = "Stalk"};

["FirewallBypass"] = {Name = "FirewallBypass",InputShown = "",Tip = "Place a computer that speeds you up when your near it, +5 damage for the bolt ability and civilians can destroy them.",Cooldown = 15,Icon = "rbxassetid://128815994656979",DisplayName = "Firewall Bypass"};
["Bolt"] = {Name = "Bolt",InputShown = "",Tip = "Charge forward dealing a set amount of damage but knockbacks and ragdolls a civilian and you.",Cooldown = 20,Icon = "rbxassetid://72545932076875",DisplayName = "Bolt"};
["Rift"] = {Name = "Rift",InputShown = "",Tip = "Teleport to the nearest computer to the nearest survivor destroying it and gaining a lot of speed, civilians take 10 damage overtime nearby it.",Cooldown = 25,Icon = "rbxassetid://127133544413220",DisplayName = "Rift"};

["Implement"] = {Name = "Implement",InputShown = "",Tip = "Place down a temporary wall, decays 1 HP per second and going through them damages it by 5.",Cooldown = 15,Icon = "rbxassetid://136267634030688",DisplayName = "Implement"};
["Copywrite"] = {Name = "Copywrite",InputShown = "",Tip = "Place down a music box that slows survivors and highlights them.",Cooldown = 35,Icon = "rbxassetid://135215798929697",DisplayName = "Copywrite"};
["Repurpose"] = {Name = "Repurpose",InputShown = "",Tip = "Reach in front of you and ''Pocket'' whatever you hit, this move changes functionality upon hitting a Wall, Music Box, or Civilian.",Cooldown = 5,Icon = "rbxassetid://109187183475737",DisplayName = "Repurpose"};

["Flight"] = {Name = "Flight",InputShown = "",Tip = "Fly up high and gain aimbot for the duration, come back down after a while with endlag.",Cooldown = 20,Icon = "rbxassetid://119091263099069",DisplayName = "Flight"};
["Deploy"] = {Name = "Deploy",InputShown = "",Tip = "Places a killbot that if survivors come near, it can highlight and beep 5 times before exploding.",Cooldown = 15,Icon = "rbxassetid://96669704702337",DisplayName = "Deploy"};
["Detonate"] = {Name = "Detonate",InputShown = "",Tip = "Stop in place and begin a count down, gain a massive speed boost, but lose the ability to regain stamina for its duration, upon the countdown finishing, explode dealing 25 damage in a large radius, deals self damage.",Cooldown = 35,Icon = "rbxassetid://132441884278500",DisplayName = "Detonate"};

["Repress"] = {Name = "Repress",InputShown = "",Tip = "Give every survivor a red light green light mini game which makes noise and blinds them, particles on them means it's active.",Cooldown = 60,Icon = "rbxassetid://119980024420991",DisplayName = "Repress"};
["Tangle"] = {Name = "Tangle",InputShown = "",Tip = "Throw a light spear that reels and heals the survivor, but any damage crits them and breaking the chain makes noise.",Cooldown = 25,Icon = "rbxassetid://136216951578398",DisplayName = "Tangle"};
["Immolate"] = {Name = "Immolate",InputShown = "",Tip = "Sacrifice 100 Health in total to add 15 noise to the meter and get a temporary speedboost.",Cooldown = 35,Icon = "rbxassetid://86152452436996",DisplayName = "Immolate"};

--\\ Test/Unreleased/Scrapped/Admin Abilities //--
["Whack"] = {Name = "Whack",InputShown = "M1",Tip = "Swing forward to deal damage.",Cooldown = 0.5,Icon = "rbxassetid://13771861804",DisplayName = "Whack"};
["Alter"] = {Name = "Alter",InputShown = "",Tip = "?",Cooldown = 30,Icon = "rbxassetid://82116081649912",DisplayName = "Alter"};
["Slam"] = {Name = "Slam",InputShown = "",Tip = "?",Cooldown = 15,Icon = "rbxassetid://82116081649912",DisplayName = "Slam"};
["Thunderstorm"] = {Name = "Thunderstorm",InputShown = "",Tip = "?",Cooldown = 15,Icon = "rbxassetid://82116081649912",DisplayName = "Thunderstorm"};
["SwordSwitch"] = {Name = "SwordSwitch",InputShown = "",Tip = "?",Cooldown = 10,Icon = "rbxassetid://82116081649912",DisplayName = "Sword Switch"};
["Oil Drum"] = {Name = "Oil Drum",InputShown = "",Tip = "?",Cooldown = 10,Icon = "rbxassetid://82116081649912",DisplayName = "Oil Drum"};
["Flamethrower"] = {Name = "Flamethrower",InputShown = "",Tip = "?",Cooldown = 10,Icon = "rbxassetid://82116081649912",DisplayName = "Flamethrower"};
["Oil Spill"] = {Name = "Oil Spill",InputShown = "",Tip = "?",Cooldown = 10,Icon = "rbxassetid://82116081649912",DisplayName = "Oil Spill"};
	
}

function ReturnAbilityData(ability)
return AbilityData[ability]
end
pcall(function()
AbilityModule = require(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("Client"):WaitForChild("Modules"):WaitForChild("Ability"))
end)
pcall(function()
UIModule = require(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("Client"):WaitForChild("Modules"):WaitForChild("UI"))
end)
local Ability = Window:CreateTab("Abilities Management",85436299122876)

Ability:CreateSection("Give Abilities ~(￣▽￣)~")

preferedability = "Block"
Ability:CreateDropdown({Name = "Ability"; Options = {"Cloak","Punch","Taunt","BonusPad","Block","Caretaker","Dash","Hotdog","Revolver","Adrenaline","Banana","Swing","Eject","Cleave","Howl","Stalk","FirewallBypass","Bolt","Rift","Implement","Copywrite","Repurpose","Flight","Deploy","Detonate","Repress","Tangle","Immolate","Flamethrower","Oil Spill","Oil Drum","Slam","Thunderstorm","Alter","Whack","SwordSwitch"}; CurrentOption = "Block"; MultiSelection = false; Callback = function(Value)
preferedability = TableFirstElementToString(Value)
end; })

Ability:CreateButton({Name = "Give Ability"; Callback = function()
if TestRequire() ~= true then
ErrorRequire()
return nil
end
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection"):FireServer(unpack({{tostring(preferedability);}}))
AbilityModule["CreateAbility"](ReturnAbilityData(tostring(preferedability)))
if not table.find(Abilities_Table, tostring(preferedability)) then
Notify("Success!", "Gave choosen ability! This ability is not civilian ability, so it may not work!", 6, true)
else
Notify("Success!", "Gave choosen ability!", 4, true)
end
end; })

Ability:CreateButton({Name = "Give All Abilities"; Callback = function()
if TestRequire() ~= true then
ErrorRequire()
return nil
end
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection"):FireServer(unpack({{tostring("Adrenaline");tostring("Adrenaline");}}))
for _,ability in pairs(Abilities_Table) do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection"):FireServer(unpack({{tostring(ability);}}))
AbilityModule["CreateAbility"](ReturnAbilityData(tostring(ability)))
end
Notify("Success!", "Unlocked all abilities!", 4, true)
end; })

Ability:CreateSection("Summon Cards ( •̀ ω •́ )✧")

local preferedability_1_incard_1,preferedability_2_incard_1,preferedability_1_incard_2,preferedability_2_incard_2,preferedability_1_incard_3,preferedability_2_incard_3 = "Revolver","Caretaker","BonusPad","Caretaker","Revolver","Punch"

Ability:CreateToggle({Name = "Auto-Inject"; CurrentValue = false; Callback = function(Value)
if TestRequire() ~= true then
ErrorRequire()
return nil
end
AutoInjectCards = Value
if Value == true then
Notify("Success!", "Choosen cards will automatically appear at the start of the round!", 6, true)
end
end; })

game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams").DescendantAdded:Connect(function(descendant)
if descendant and descendant.Name == ""..LP.Name.."" and descendant.Parent.Name == "Survivor" and AutoInjectCards == true then
task.wait(8)
UIModule["AbilitySelection"]({preferedability_1_incard_1,preferedability_2_incard_1},{preferedability_1_incard_2,preferedability_2_incard_2},{preferedability_1_incard_3,preferedability_2_incard_3})
end
end)

Ability:CreateLabel("First Card Settings")
Ability:CreateDropdown({Name = "First Ability"; Options = {"Cloak","Punch","Taunt","BonusPad","Block","Caretaker","Dash","Hotdog","Revolver","Adrenaline","Banana","Swing","Eject","Cleave","Howl","Stalk","FirewallBypass","Bolt","Rift","Implement","Copywrite","Repurpose","Flight","Deploy","Detonate","Repress","Tangle","Immolate","Flamethrower","Oil Spill","Oil Drum","Slam","Thunderstorm","Alter","Whack","SwordSwitch"}; CurrentOption = "Revolver"; MultiSelection = false; Callback = function(Value)
preferedability_1_incard_1 = TableFirstElementToString(Value)
end; })
Ability:CreateDropdown({Name = "Second Ability"; Options = {"Cloak","Punch","Taunt","BonusPad","Block","Caretaker","Dash","Hotdog","Revolver","Adrenaline","Banana","Swing","Eject","Cleave","Howl","Stalk","FirewallBypass","Bolt","Rift","Implement","Copywrite","Repurpose","Flight","Deploy","Detonate","Repress","Tangle","Immolate","Flamethrower","Oil Spill","Oil Drum","Slam","Thunderstorm","Alter","Whack","SwordSwitch"}; CurrentOption = "Caretaker"; MultiSelection = false; Callback = function(Value)
preferedability_2_incard_1 = TableFirstElementToString(Value)
end; })

Ability:CreateLabel("Second Card Settings")
Ability:CreateDropdown({Name = "First Ability"; Options = {"Cloak","Punch","Taunt","BonusPad","Block","Caretaker","Dash","Hotdog","Revolver","Adrenaline","Banana","Swing","Eject","Cleave","Howl","Stalk","FirewallBypass","Bolt","Rift","Implement","Copywrite","Repurpose","Flight","Deploy","Detonate","Repress","Tangle","Immolate","Flamethrower","Oil Spill","Oil Drum","Slam","Thunderstorm","Alter","Whack","SwordSwitch"}; CurrentOption = "BonusPad"; MultiSelection = false; Callback = function(Value)
preferedability_1_incard_2 = TableFirstElementToString(Value)
end; })
Ability:CreateDropdown({Name = "Second Ability"; Options = {"Cloak","Punch","Taunt","BonusPad","Block","Caretaker","Dash","Hotdog","Revolver","Adrenaline","Banana","Swing","Eject","Cleave","Howl","Stalk","FirewallBypass","Bolt","Rift","Implement","Copywrite","Repurpose","Flight","Deploy","Detonate","Repress","Tangle","Immolate","Flamethrower","Oil Spill","Oil Drum","Slam","Thunderstorm","Alter","Whack","SwordSwitch"}; CurrentOption = "Caretaker"; MultiSelection = false; Callback = function(Value)
preferedability_2_incard_2 = TableFirstElementToString(Value)
end; })

Ability:CreateLabel("Third Card Settings")
Ability:CreateDropdown({Name = "First Ability"; Options = {"Cloak","Punch","Taunt","BonusPad","Block","Caretaker","Dash","Hotdog","Revolver","Adrenaline","Banana","Swing","Eject","Cleave","Howl","Stalk","FirewallBypass","Bolt","Rift","Implement","Copywrite","Repurpose","Flight","Deploy","Detonate","Repress","Tangle","Immolate","Flamethrower","Oil Spill","Oil Drum","Slam","Thunderstorm","Alter","Whack","SwordSwitch"}; CurrentOption = "Revolver"; MultiSelection = false; Callback = function(Value)
preferedability_1_incard_3 = TableFirstElementToString(Value)
end; })
Ability:CreateDropdown({Name = "Second Ability"; Options = {"Cloak","Punch","Taunt","BonusPad","Block","Caretaker","Dash","Hotdog","Revolver","Adrenaline","Banana","Swing","Eject","Cleave","Howl","Stalk","FirewallBypass","Bolt","Rift","Implement","Copywrite","Repurpose","Flight","Deploy","Detonate","Repress","Tangle","Immolate","Flamethrower","Oil Spill","Oil Drum","Slam","Thunderstorm","Alter","Whack","SwordSwitch"}; CurrentOption = "Punch"; MultiSelection = false; Callback = function(Value)
preferedability_2_incard_3 = TableFirstElementToString(Value)
end; })

Ability:CreateButton({Name = "Summon Choosen Cards"; Callback = function()
if TestRequire() ~= true then
ErrorRequire()
return nil
end
UIModule["AbilitySelection"]({preferedability_1_incard_1,preferedability_2_incard_1},{preferedability_1_incard_2,preferedability_2_incard_2},{preferedability_1_incard_3,preferedability_2_incard_3})
end; })


Ability:CreateSection("Ability Spam ╰（‵□′）╯")

preferedabilitytospam = "Hotdog"
Ability:CreateDropdown({Name = "Ability to Spam"; Options = {"Cloak","Punch","Taunt","BonusPad","Block","Caretaker","Dash","Hotdog","Revolver","Adrenaline","Banana","Swing","Eject","Cleave","Howl","Stalk","FirewallBypass","Bolt","Rift","Implement","Copywrite","Repurpose","Flight","Deploy","Detonate","Repress","Tangle","Immolate","Flamethrower","Oil Spill","Oil Drum","Slam","Thunderstorm","Alter","Whack","SwordSwitch"}; CurrentOption = "Hotdog"; MultiSelection = false; Callback = function(Value)
preferedabilitytospam = TableFirstElementToString(Value)
end; })

Ability:CreateToggle({Name = "Auto-Spam Ability"; CurrentValue = false; Callback = function(Value)
AutoSpamAbility = Value
if AutoSpamAbility == true then
repeat task.wait(0.15)
pcall(function()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection"):FireServer(unpack({{tostring(preferedabilitytospam)}}))
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunctions"):WaitForChild("UseAbility"):InvokeServer(unpack({tostring(preferedabilitytospam)}))
end)
until AutoSpamAbility == false
end
end; })

--[[ 


____   ____ __                     __          
\   \ /   /|__| ________ _______  |  |   ______
 \   Y   / |  |/  ___/  |  \__  \ |  |  /  ___/
  \     /  |  |\___ \|  |  // __ \|  |__\___ \ 
   \___/   |__/____  >____/(____  /____/____  >
                   \/           \/          \/ 

Visuals Management


]]--

if not game:GetService("CoreGui"):FindFirstChild("DOD_ESP_HANDLER") then
Instance.new("Folder", game:GetService("CoreGui")).Name = "DOD_ESP_HANDLER"
end

_G.ESPenabledHandler = false
_G.ESPtransHandler = 0.3

function CreateHighlight(plr)
task.spawn(function()
for i,v in pairs(game:GetService("CoreGui"):FindFirstChild("DOD_ESP_HANDLER"):GetChildren()) do
if v and v.Name == ("sillyfolder_"..plr.Name) then
v:Destroy()
end
end
repeat task.wait() until game:GetService("CoreGui"):WaitForChild("DOD_ESP_HANDLER"):FindFirstChild("sillyfolder_"..plr.Name) == nil
local esp_folder = Instance.new("Folder")
esp_folder.Name = "sillyfolder_"..plr.Name
esp_folder.Parent = game:GetService("CoreGui"):FindFirstChild("DOD_ESP_HANDLER")
      
repeat task.wait() until plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChildOfClass("Humanoid")
local plr_char = plr.Character or plr.CharacterAdded:Wait()
for i,v in pairs(plr_char:GetChildren()) do
if v and v:IsA("BasePart") and (v.Name == "Left Leg" or v.Name == "Left Arm" or v.Name == "Right Leg" or v.Name == "Right Arm" or v.Name == "Torso" or v.Name == "Head") then
local esp = Instance.new("BoxHandleAdornment")
esp.Name = "sillygirl_"..plr.Name
esp.Adornee = v
esp.AlwaysOnTop = true
esp.ZIndex = 10 or 1
esp.Size = v.Size
esp.Transparency = (plr_char.Parent.Name == "Workspace" and 1) or tonumber(_G.ESPtransHandler)
esp.Color = (plr_char.Parent.Name == "Killer" and BrickColor.new("Bright red")) or (plr_char.Parent.Name == "Ghost" and BrickColor.new("White")) or BrickColor.new("Bright green")
esp.Parent = game:GetService("CoreGui"):WaitForChild("DOD_ESP_HANDLER"):FindFirstChild("sillyfolder_"..plr.Name)
end
end


      
local char_connection, team_connection, dstr_connection
char_connection = plr.CharacterAdded:Connect(function()
if game:GetService("CoreGui"):WaitForChild("DOD_ESP_HANDLER"):FindFirstChild("sillyfolder_"..plr.Name) then
game:GetService("CoreGui"):WaitForChild("DOD_ESP_HANDLER"):FindFirstChild("sillyfolder_"..plr.Name):Destroy()
end
dstr_connection:Disconnect()
team_connection:Disconnect()
repeat task.wait(1.25) until plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChildOfClass("Humanoid")
CreateHighlight(plr)
char_connection:Disconnect()
end)

team_connection = plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
if game:GetService("CoreGui"):WaitForChild("DOD_ESP_HANDLER"):FindFirstChild("sillyfolder_"..plr.Name) then
game:GetService("CoreGui"):WaitForChild("DOD_ESP_HANDLER"):FindFirstChild("sillyfolder_"..plr.Name):Destroy()
end
dstr_connection:Disconnect()
char_connection:Disconnect()
repeat task.wait(1.25) until plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChildOfClass("Humanoid")
CreateHighlight(plr)
team_connection:Disconnect()
end)

dstr_connection = game:GetService("CoreGui").ChildRemoved:Connect(function(child)
if child.Name == "DOD_ESP_HANDLER" then
Instance.new("Folder", game:GetService("CoreGui")).Name = "DOD_ESP_HANDLER"
team_connection:Disconnect()
char_connection:Disconnect()
dstr_connection:Disconnect()
end      
end)


      
end)
end

function ChangeTransparency(trans)
for i,v in pairs(game:GetService("CoreGui"):FindFirstChild("DOD_ESP_HANDLER"):GetDescendants()) do
if v and v:IsA("BoxHandleAdornment") then
v.Transparency = trans
end
end
end

local Visual = Window:CreateTab("Visuals Management",90476367580326)

Visual:CreateSection("Players ESP （︶^︶）")

Visual:CreateLabel("Main Settings")

Visual:CreateSlider({Name = "ESP Transparency (in %)"; Range = {0, 100}; Increment = 5; Suffix = "%"; CurrentValue = 30; Callback = function(Value)
_G.ESPtransHandler = (tonumber(Value) / 100)
ChangeTransparency(tonumber(_G.ESPtransHandler))
end; })

plradded_esp = nil
plrremoved_esp = nil
Visual:CreateToggle({Name = "Turn On/Off ESP"; CurrentValue = false; Callback = function(Value)
_G.ESPenabledHandler = Value
if _G.ESPenabledHandler == true then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v and v ~= game:GetService("Players").LocalPlayer then
CreateHighlight(v)
end
end
plradded_esp = game:GetService("Players").PlayerAdded:Connect(function(plr)
CreateHighlight(plr)
end)
plrremoved_esp = game:GetService("Players").PlayerRemoving:Connect(function(plr)
if game:GetService("CoreGui"):WaitForChild("DOD_ESP_HANDLER"):FindFirstChild("sillyfolder_"..plr.Name) then
game:GetService("CoreGui"):WaitForChild("DOD_ESP_HANDLER"):FindFirstChild("sillyfolder_"..plr.Name):Destroy()
end
end)
Notify("Success!", "Enabled!", 4, true)
elseif _G.ESPenabledHandler == false then
game:GetService("CoreGui"):FindFirstChild("DOD_ESP_HANDLER"):Destroy()
if plradded_esp ~= nil then
plradded_esp:Disconnect()
plradded_esp = nil
end
if plrremoved_esp ~= nil then
plrremoved_esp:Disconnect()
plrremoved_esp = nil
end
Notify("Success!", "Disabled!", 4, true)
end
end; })

Visual:CreateSection("Gui Management ε=( o｀ω′)ノ")

Visual:CreateButton({Name = "Disable ''Harken Eye Game'' Effect [ Use Before Harken Use It ]"; Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("HarkenMove"):Destroy()
Notify("Success!", "Disabled!", 4, true)
end; })
Visual:CreateButton({Name = "Disable ''Evil Scary'' Jumpscare"; Callback = function()
game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("EvilScary"):Destroy()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("EvilScary"):Destroy()
Notify("Success!", "Disabled!", 4, true)
end; })
Visual:CreateButton({Name = "Open Shop"; Callback = function()
UIModule["OpenShop"]()
end; })
Visual:CreateButton({Name = "Disable Custom-Skins"; Callback = function()
task.spawn(function()
FartfulVisLeaderboard:Disconnect()
FartfulTextLeaderboard:Disconnect()
SubjectVisLeaderboard:Disconnect()
SubjectTextLeaderboard:Disconnect()
FartfulMusicBoxHandler:Disconnect()
FartfulWallHandler:Disconnect()
BioAndTitleHandlers:Disconnect()
IconAndTitleHandlers:Disconnect()
MapSpawnKillerHandler:Disconnect()
IdiotVisLeaderboard:Disconnect()
IdiotTextLeaderboard:Disconnect()
BaddiedroidVisLeaderboard:Disconnect()
BaddiedroidTextLeaderboard:Disconnect()
BaddieQUOTVisLeaderboard:Disconnect()
BaddieQUOTTextLeaderboard:Disconnect()
SNOWIEVisLeaderboard:Disconnect()
SNOWIETextLeaderboard:Disconnect()
end)
end; })
Visual:CreateToggle({Name = "Teammate Death Effect Enabled"; CurrentValue = true; Callback = function(Value)
if TestRequire() ~= true then
ErrorRequire()
return nil
end
DeathEffectEnabled = Value
if DeathEffectEnabled == true then
UIModule["TeamateDeathEffect"] = function()
	game:GetService("Lighting").TeamateDeathEffect.Enabled = true
	game:GetService("Lighting").TeamateDeathEffect.Contrast = 0
	game:GetService("Lighting").TeamateDeathEffect.TintColor = Color3.fromRGB(255, 255, 255)
	game:GetService("TweenService"):Create(game:GetService("Lighting").TeamateDeathEffect, TweenInfo.new(0.5), {
		["Contrast"] = 1
	}):Play()
	game:GetService("TweenService"):Create(game:GetService("Lighting").TeamateDeathEffect, TweenInfo.new(0.5), {
		["TintColor"] = Color3.fromRGB(255, 52, 52)
	}):Play()
	task.wait(0.5)
	game:GetService("TweenService"):Create(game:GetService("Lighting").TeamateDeathEffect, TweenInfo.new(2), {
		["Contrast"] = 0
	}):Play()
	game:GetService("TweenService"):Create(game:GetService("Lighting").TeamateDeathEffect, TweenInfo.new(2), {
		["TintColor"] = Color3.fromRGB(255, 255, 255)
	}):Play()
end
Notify("Success!", "Enabled!", 4, true)
elseif DeathEffectEnabled == false then
UIModule["TeamateDeathEffect"] = function() return nil end
Notify("Success!", "Disabled!", 4, true)
end
end; })

Visual:CreateSection("Money Giver (⁠｡⁠♡⁠‿⁠♡⁠｡⁠)")

function AwardPoints(points, reason)
	local Template = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("Client"):WaitForChild("Modules"):WaitForChild("UI"):WaitForChild("PlayerPoints"):Clone()
	Template.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui").PlayerPoints
	Template.Frame.Title.Text = "<font color=\'rgb(255, 64, 67)\'>"..tostring(points).." Points</font> Awarded "..tostring(reason)
	Template.Frame.Title.TextTransparency = 1
	Template.Frame.Title.UIStroke.Transparency = 1
	Template.Frame.Cash.ImageTransparency = 1
	game:GetService("Debris"):AddItem(Template, 10)
	game:GetService("TweenService"):Create(Template.Frame.Cash, TweenInfo.new(10, Enum.EasingStyle.Linear), {
		["Rotation"] = 360
	}):Play()
	pcall(function()
		for _ = 0,5 do
			task.wait(0.2)
			local Title = Template.Frame.Title
			Title.TextTransparency = Title.TextTransparency - 0.2
			local Stroke = Template.Frame.Title.UIStroke
			Stroke.Transparency = Stroke.Transparency - 0.2
			local Cash = Template.Frame.Cash
			Cash.ImageTransparency = Cash.ImageTransparency - 0.2
		end
		task.wait(6)
		for _ = 0,5 do
			task.wait(0.5)
			local Title = Template.Frame.Title
			Title.TextTransparency = Title.TextTransparency + 0.2
			local Stroke = Template.Frame.Title.UIStroke
			Stroke.Transparency = Stroke.Transparency + 0.2
			local Cash = Template.Frame.Cash
			Cash.ImageTransparency = Cash.ImageTransparency + 0.2
		end
	end)
end
MoneyToGet = 10
ReasonForMoney = "for surviving for atleast 60 seconds."

Visual:CreateInput({Name = "Money amount"; PlaceholderText = "10"; NumbersOnly = true; OnEnter = true; RemoveTextAfterFocusLost = false; Callback = function(Value)
MoneyToGet = tonumber(Value)
end; })

Visual:CreateInput({Name = "Reason for getting money"; PlaceholderText = "for surviving for atleast 60 seconds."; NumbersOnly = false; OnEnter = true; RemoveTextAfterFocusLost = false; Callback = function(Value)
ReasonForMoney = tostring(Value)
end; })

Visual:CreateButton({Name = "Give Money"; Callback = function()
AwardPoints(MoneyToGet, ReasonForMoney)
end; })

Visual:CreateSection("Intro / Special Round Starter (╬▔皿▔)╯")

Visual:CreateLabel("Won't work if your executor isn't KRNL !!!")

killerintro = "Pursuer"
Visual:CreateDropdown({Name = "Killer Intro"; Options = {"Pursuer","Artful","Badware","Killdroid","Harken"}; CurrentOption = "Pursuer"; MultiSelection = false; Callback = function(Value)
killerintro = TableFirstElementToString(Value)
end; })

Visual:CreateButton({Name = "Start Intro"; Callback = function()
if TestFireSignal() ~= true then
ErrorSignal()
return nil
end
firesignal(game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("KillerIntro").OnClientEvent, game:GetService("Players").LocalPlayer,killerintro,killerintro,"Default",1)
end; })


specialroundevent = "Double Trouble"
Visual:CreateDropdown({Name = "Special Round Event"; Options = {"Double Trouble","Evil Scary","One Bounce","Gunslinger"}; CurrentOption = "Double Trouble"; MultiSelection = false; Callback = function(Value)
specialroundevent = TableFirstElementToString(Value)
end; })

Visual:CreateButton({Name = "Start Special Round Event"; Callback = function()
if TestFireSignal() ~= true then
ErrorSignal()
return nil
end
firesignal(game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("GamemodeUI").OnClientEvent, specialroundevent)
end; })


--[[


   _____          __   __ 
  /  _  \   _____/  |_|__|
 /  /_\  \ /    \   __\  |
/    |    \   |  \  | |  |
\____|__  /___|  /__| |__|
        \/     \/         

Anti


]]--


local AntiThings = Window:CreateTab("Anti / Immunities",120929805037270)


local AntiWalls
AntiWalls = false
AntiThings:CreateToggle({Name = "Anti-Fartful Walls"; CurrentValue = false; Callback = function(Value)
AntiWalls = Value
if AntiWalls == true then
for i,v in pairs(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Other"):GetDescendants()) do
if v and v.Name == "HumanoidRootPart" and v.Anchored == true then
v.CanCollide = false
v.CanTouch = false
v.Transparency = 0.5
end
end
end
end; })
game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Other").DescendantAdded:Connect(function(descendant)
if descendant and descendant.Name == "HumanoidRootPart" and descendant.Anchored == true and AntiWalls == true then
descendant.CanCollide = false
descendant.CanTouch = false
descendant.Transparency = 0.5
end
end)

local AntiComputer
AntiComputer = false
AntiThings:CreateToggle({Name = "Auto-Disable Cooldown in Badware Computer Prompts [ Break computers by yourself ]"; CurrentValue = false; Callback = function(Value)
AntiComputer = Value
if AntiComputer == true then
for _,descendant in pairs(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Debris"):WaitForChild("Cleanable"):GetDescendants()) do
if descendant and descendant:IsA("ProximityPrompt") and descendant.Parent and descendant.Parent.Name == "Primary" then
pcall(function()
descendant.HoldDuration = 0
descendant.RequiresLineOfSight = false
descendant.Enabled = true
end)
end
end
end
end; })
game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Debris"):WaitForChild("Cleanable").DescendantAdded:Connect(function(descendant)
if descendant and descendant:IsA("ProximityPrompt") and descendant.Parent and descendant.Parent.Name == "Primary" and AntiComputer == true then
pcall(function()
descendant.HoldDuration = 0
descendant.RequiresLineOfSight = false
descendant.Enabled = true
end)
end
end)

local AntiKillerOnly
AntiKillerOnly = false
AntiThings:CreateToggle({Name = "Anti-Killer Only Walls"; CurrentValue = false; Callback = function(Value)
AntiKillerOnly = Value
if AntiKillerOnly == true then
for _,descendant in pairs(game:GetService("Workspace"):WaitForChild("GameAssets"):GetChildren()) do
if descendant and descendant.Name == "Map" and AntiKillerOnly == true then
for _,q in pairs(descendant:GetChildren()) do
if q and q.Name == "Config" and AntiKillerOnly == true then
for _,portals in pairs(q:WaitForChild("KillerOnly"):GetDescendants()) do
if portals and portals.CanCollide == true and AntiKillerOnly == true then
portals.CanCollide = false
portals.CanTouch = false
end
end
end
end
end
end
end
end; })
game:GetService("Workspace"):WaitForChild("GameAssets").ChildAdded:Connect(function(descendant)
if descendant and descendant.Name == "Map" and AntiKillerOnly == true then
for _,q in pairs(descendant:GetChildren()) do
if q and q.Name == "Config" and AntiKillerOnly == true then
for _,portals in pairs(q:WaitForChild("KillerOnly"):GetDescendants()) do
if portals and portals.CanCollide == true and AntiKillerOnly == true then
portals.CanCollide = false
portals.CanTouch = false
end
end
end
end
end
end)

local AntiBarriers
AntiBarriers = false
AntiThings:CreateToggle({Name = "Anti-Barriers"; CurrentValue = false; Callback = function(Value)
AntiBarriers = Value
if AntiBarriers == true then
for _,descendant in pairs(game:GetService("Workspace"):WaitForChild("GameAssets"):GetChildren()) do
if descendant and descendant.Name == "Map" and AntiBarriers == true then
for _,q in pairs(descendant:GetChildren()) do
if q and q.Name == "Build" and q:FindFirstChild("Barriers") and AntiBarriers == true then
for _,portals in pairs(q:FindFirstChild("Barriers"):GetDescendants()) do
if portals and portals.CanCollide == true and AntiBarriers == true then
portals.CanCollide = false
portals.CanTouch = false
end
end
end
end
end
end
end
end; })
game:GetService("Workspace"):WaitForChild("GameAssets").ChildAdded:Connect(function(descendant)
if descendant and descendant.Name == "Map" and AntiBarriers == true then
for _,q in pairs(descendant:GetChildren()) do
if q and q.Name == "Build" and q:FindFirstChild("Barriers") and AntiBarriers == true then
for _,portals in pairs(q:FindFirstChild("Barriers"):GetDescendants()) do
if portals and portals.CanCollide == true and AntiBarriers == true then
portals.CanCollide = false
portals.CanTouch = false
end
end
end
end
end
end)


local AntiEvilScary
AntiEvilScary = false
AntiThings:CreateToggle({Name = "Anti Evil Scary"; CurrentValue = false; Callback = function(Value)
AntiEvilScary = Value
if AntiEvilScary == true then
for i,v in pairs(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Debris"):WaitForChild("Cleanable"):GetChildren()) do
if v and v.Name == "EvilScary" then
for _,trans in pairs(v:GetChildren()) do
if trans and trans:IsA("TouchTransmitter") then
trans:Destroy()
end
end
for _,part in pairs(v:GetChildren()) do
if part and part:IsA("BasePart") then
part.CanCollide = false
part.CanTouch = false
pcall(function()
part.CanQuery = false
end)
part:Destroy()
end
end
v.CanCollide = false
v.CanTouch = false
pcall(function()
v.CanQuery = false
end)
v:Destroy()
end
end
end
end; })
game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Debris"):WaitForChild("Cleanable").ChildAdded:Connect(function(child)
if child and child.Name == "EvilScary" and AntiEvilScary == true then
for _,trans in pairs(child:GetChildren()) do
if trans and trans:IsA("TouchTransmitter") then
trans:Destroy()
end
end
for _,part in pairs(child:GetChildren()) do
if part and part:IsA("BasePart") then
part.CanCollide = false
part.CanTouch = false
pcall(function()
part.CanQuery = false
end)
part:Destroy()
end
end
child.CanCollide = false
child.CanTouch = false
pcall(function()
child.CanQuery = false
end)
child :Destroy()
end
end)

--[[ 


___________    .__                               __   
\__    ___/___ |  |   ____ ______   ____________/  |_ 
  |    |_/ __ \|  | _/ __ \\____ \ /  _ \_  __ \   __\
  |    |\  ___/|  |_\  ___/|  |_> >  <_> )  | \/|  |  
  |____| \___  >____/\___  >   __/ \____/|__|   |__|  
             \/          \/|__|                       

Teleport


]]--

local TeleportFeatures = Window:CreateTab("Teleport",127133544413220)

function SafeTeleport(model)
pcall(function()
local time = tick()
while tick() - time < 1 do
for i,v in pairs(LP.Character:GetDescendants()) do
if v and v:IsA("BasePart") then
v.Velocity = Vector3.new(0,0,0)
v.RotVelocity = Vector3.new(0,0,0)
end
end
LP.Character:WaitForChild("HumanoidRootPart").CFrame = model.CFrame
task.wait()
end
end)
end

function GetChildNames(model)
local coolbalt = {}
for i,v in pairs(model:GetChildren()) do
if v then
table.insert(coolbalt, tostring(v.Name))
end
end
return coolbalt
end

TeleportFeatures:CreateSection("Team Teleport (⓿_⓿)")

ChoosenKillerTarget = nil
ChoosenSurvivorTarget = nil
ChoosenGhostTarget = nil
local TeleportToKillerDropdown = TeleportFeatures:CreateDropdown({Name = "Target Killer"; Options = GetChildNames(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer")); CurrentOption = ""; MultiSelection = false; Callback = function(Value)
ChoosenKillerTarget = TableFirstElementToString(Value)
end; })
TeleportFeatures:CreateButton({Name = "Teleport to Killer"; Callback = function()
if not game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model") then
Notify("Error!", "There are no killers!", 3, false)
return nil
end
if ChoosenKillerTarget == nil or ChoosenKillerTarget == "" or not ChoosenKillerTarget then
Notify("Error!", "Choose your target!", 3, false)
return nil
end
SafeTeleport(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChild(ChoosenKillerTarget):WaitForChild("HumanoidRootPart"))
end; })
game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer").ChildAdded:Connect(function(child)
pcall(function()
TeleportToKillerDropdown:Refresh(GetChildNames(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer")))
end)
end)
game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer").ChildRemoved:Connect(function(child)
pcall(function()
TeleportToKillerDropdown:Refresh(GetChildNames(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer")))
end)
end)

local TeleportToSurvivorDropdown = TeleportFeatures:CreateDropdown({Name = "Target Survivor"; Options = GetChildNames(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor")); CurrentOption = ""; MultiSelection = false; Callback = function(Value)
ChoosenSurvivorTarget = TableFirstElementToString(Value)
end; })
TeleportFeatures:CreateButton({Name = "Teleport to Survivor"; Callback = function()
if not game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor"):FindFirstChildOfClass("Model") then
Notify("Error!", "There are no survivors!", 3, false)
return nil
end
if ChoosenSurvivorTarget == nil or ChoosenSurvivorTarget == "" or not ChoosenSurvivorTarget then
Notify("Error!", "Choose your target!", 3, false)
return nil
end
SafeTeleport(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor"):FindFirstChild(ChoosenSurvivorTarget):WaitForChild("HumanoidRootPart"))
end; })
game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor").ChildAdded:Connect(function(child)
pcall(function()
TeleportToSurvivorDropdown:Refresh(GetChildNames(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor")))
end)
end)
game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor").ChildRemoved:Connect(function(child)
pcall(function()
TeleportToSurvivorDropdown:Refresh(GetChildNames(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor")))
end)
end)

local TeleportToGhostDropdown = TeleportFeatures:CreateDropdown({Name = "Target Ghost"; Options = GetChildNames(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Ghost")); CurrentOption = ""; MultiSelection = false; Callback = function(Value)
ChoosenGhostTarget = TableFirstElementToString(Value)
end; })
TeleportFeatures:CreateButton({Name = "Teleport to Ghost"; Callback = function()
if not game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Ghost"):FindFirstChildOfClass("Model") then
Notify("Error!", "There are no ghosts!", 3, false)
return nil
end
if ChoosenGhostTarget == nil or ChoosenGhostTarget == "" or not ChoosenGhostTarget then
Notify("Error!", "Choose your target!", 3, false)
return nil
end
SafeTeleport(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Ghost"):FindFirstChild(ChoosenGhostTarget):WaitForChild("HumanoidRootPart"))
end; })
game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Ghost").ChildAdded:Connect(function(child)
pcall(function()
TeleportToGhostDropdown:Refresh(GetChildNames(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Ghost")))
end)
end)
game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Ghost").ChildRemoved:Connect(function(child)
pcall(function()
TeleportToGhostDropdown:Refresh(GetChildNames(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Ghost")))
end)
end)

TeleportFeatures:CreateSection("Specific Teleports ლ(╹◡╹ლ)")

TeleportFeatures:CreateButton({Name = "Teleport to Survivor with caretaker"; Callback = function()
if not game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor"):FindFirstChildOfClass("Model") then
Notify("Error!", "There are no caretakers!", 3, false)
return nil
end
local plrwithcaretaker = nil
for i,v in pairs(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor"):GetChildren()) do
if v and v.Parent and (v:WaitForChild("Vanities"):WaitForChild("Caretaker").Transparency ~= 1 or v:WaitForChild("Vanities"):WaitForChild("Aussie Slouch"):WaitForChild("Mesh").TextureId == "rbxassetid://130388665159057") then
plrwithcaretaker = v
end
end
if plrwithcaretaker then
SafeTeleport(plrwithcaretaker:WaitForChild("HumanoidRootPart"))
else
Notify("Error!", "There are no caretakers!", 3, false)
end
end; })

TeleportFeatures:CreateButton({Name = "Teleport to Injured survivor"; Callback = function()
local injuredplr = nil
for i,v in pairs(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor"):GetChildren()) do
if v and v.Parent and (v:WaitForChild("Humanoid").Health < tonumber(v:WaitForChild("Humanoid").MaxHealth)) then
injuredplr = v
end
end
if injuredplr then
SafeTeleport(injuredplr:WaitForChild("HumanoidRootPart"))
else
Notify("Error!", "There are no injured players!", 3, false)
end
end; })

TeleportFeatures:CreateButton({Name = "Teleport to Bonus Pad"; Callback = function()
if not game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Debris"):WaitForChild("Cleanable"):FindFirstChild("BonusPad") then
Notify("Error!", "There are no bonus pads!", 3, false)
return nil
end
SafeTeleport(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Debris"):WaitForChild("Cleanable"):WaitForChild("BonusPad"):WaitForChild("Pad"))
end; })

TeleportFeatures:CreateButton({Name = "Teleport to Badware Computer"; Callback = function()
if not game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Debris"):WaitForChild("Cleanable"):FindFirstChild("Computer") then
Notify("Error!", "There are no badware computers!", 3, false)
return nil
end
SafeTeleport(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Debris"):WaitForChild("Cleanable"):WaitForChild("Computer"):WaitForChild("Primary"))
end; })

--[[ 


__________                         __               
\______   \_______   ____   _____ |__|__ __  _____  
 |     ___/\_  __ \_/ __ \ /     \|  |  |  \/     \ 
 |    |     |  | \/\  ___/|  Y Y  \  |  |  /  Y Y  \
 |____|     |__|    \___  >__|_|  /__|____/|__|_|  /
                        \/      \/               \/  

Premium


]]--

local PremiumFeatures = Window:CreateTab("Premium",97428323453639)

-- Get Price { regional price }
function GetPrice(assetid)
local product_id = tonumber(assetid) or assettid
local product_info = game:GetService("MarketplaceService"):GetProductInfo(product_id)
local product_price = product_info.PriceInRobux
return tostring(product_price)
end

function HavePremium()
if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game:GetService("Players").LocalPlayer.UserId, 1264479709) or CheckIfUserInGroup() == true or getgenv().dodnhPremium == true then
return true
end
return false
end

function OpenLink(link)
local url = tostring(link)
local function copylink()
setclipboard(url)
Notify("Success!", "Copied Link!", 10, true)
end
if openweb then
local suc, err = pcall(function() openweb(url) end) if not suc then copylink() end
elseif WebHandler then
local suc, err = pcall(function() WebHandler:OpenWeb(url) end) if not suc then copylink() end
else
copylink()
end
end

function ErrorPremium()
Notify("Error!", "You don't have premium!")
end

local pprice = pcall(GetPrice(1264479709)) or 39

PremiumFeatures:CreateLabel("There's currently 2 ways to get unlock premium features")

PremiumFeatures:CreateLabel("")

PremiumFeatures:CreateLabel("Buy gamepass to unlock premium features! [ Cost "..pprice.." robux ]")

PremiumFeatures:CreateButton({Name = "Open Gamepass Link"; Callback = function()
if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game:GetService("Players").LocalPlayer.UserId, 1264479709) then
    Notify("Error!", "Arleady have gamepass!", 4)
else
    OpenLink("https://www.roblox.com/game-pass/1264479709")
end
end; })

PremiumFeatures:CreateButton({Name = "Copy Gamepass Link"; Callback = function()
if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game:GetService("Players").LocalPlayer.UserId, 1264479709) then
    Notify("Error!", "Arleady have gamepass!", 4)
else
    setclipboard(tostring("https://www.roblox.com/game-pass/1264479709"))
    Notify("Success!", "Copied Link!", 10, true)
end
end; })

PremiumFeatures:CreateLabel("or join our roblox group to unlock premium features!")

PremiumFeatures:CreateButton({Name = "Open Group Link"; Callback = function()
if CheckIfUserInGroup() == true then
    Notify("Error!", "Arleady joined group!", 4)
else
    OpenLink("https://www.roblox.com/communities/35649714/my-group-nexer1234#!/about")
end
end; })

PremiumFeatures:CreateButton({Name = "Copy Group Link"; Callback = function()
if CheckIfUserInGroup() == true then
    Notify("Error!", "Arleady joined group!", 4)
else
    setclipboard(tostring("https://www.roblox.com/communities/35649714/my-group-nexer1234#!/about"))
    Notify("Success!", "Copied Link!", 10, true)
end
end; })

PremiumFeatures:CreateLabel("")

PremiumFeatures:CreateSection("Killing / Flinging Killers ::>_<::")

PremiumFeatures:CreateLabel("Important note: YOU HAVE TO BE IN ROUND AS CIVILIAN TO KILL KILLER!\nalso it is recommended to activate invisibility before using fling!")

preferedkillingmethod = "Predict"
PremiumFeatures:CreateDropdown({Name = "Insta-Kill Method"; Options = {"RNG","Predict"}; CurrentOption = "RNG"; MultiSelection = false; Callback = function(Value)
preferedkillingmethod = TableFirstElementToString(Value)
end; })

PremiumFeatures:CreateButton({Name = "Insta-Kill Killer"; Callback = function()
if HavePremium() ~= true then
ErrorPremium()
return nil
end

local function checkifgotflingedlol(hrp)
    local velocity = hrp.Velocity
    local speed = velocity.Magnitude
    if speed > 200 then
        local verticalsp = math.abs(velocity.Y)
        if verticalsp > 50 and verticalsp > math.abs(velocity.X) and verticalsp > math.abs(velocity.Z) then
            return true
        end
    end
    return false
end
while not (game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Parent and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Parent) do
game:GetService("RunService").Heartbeat:Wait()
end
local OldCF = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
if game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model") and game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model").Name ~= game:GetService("Players").LocalPlayer.Name then
local Killer = game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model")
local Flinged = checkifgotflingedlol(Killer:WaitForChild("HumanoidRootPart"))
while Killer and Killer ~= nil and Killer:FindFirstChild("HumanoidRootPart") and Killer:FindFirstChild("Humanoid") and Flinged ~= true and Killer:WaitForChild("Humanoid").Health ~= 0 and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and game:GetService("Players").LocalPlayer.Character.Humanoid.Health ~= 0 and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") and game:GetService("RunService").Heartbeat:Wait() do 
Flinged = checkifgotflingedlol(Killer:WaitForChild("HumanoidRootPart"))
local vel, movel = nil, 0.1
while not (game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Parent and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Parent) do
game:GetService("RunService").Heartbeat:Wait()
end

if preferedkillingmethod == "RNG" then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Killer:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,1.1,math.random(-20, -0.6))
elseif preferedkillingmethod == "Predict" then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position = predict(game:GetService("Players"):GetPlayerFromCharacter(Killer))
else
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Killer:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,1.1,math.random(-20, -0.6))
end

vel = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
game:GetService("RunService").RenderStepped:Wait()
if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Parent and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Parent then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = vel
end
game:GetService("RunService").Stepped:Wait()
if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Parent and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Parent then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = vel + Vector3.new(0, movel, 0)
movel = movel * -1
end
end
local time = tick()
while tick() - time < 2 do
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
if v and v:IsA("BasePart") then
v.Velocity = Vector3.new(0,0,0)
v.RotVelocity = Vector3.new(0,0,0)
end
end
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = OldCF * CFrame.new(0,0.4,0)
task.wait()
end
else
Notify("Error!", "Killer not found! ( or you are the killer )")
end

end; })

function GhostMorph()
    local a = game:GetService("ReplicatedStorage").Characters.Other.Ghost:Clone()
    a.Name = LP.Name
    a.Parent = game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Ghost")
    pcall(function()
    a:WaitForChild("Humanoid").DisplayDistanceType = "None"
    end)
    a:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model"):WaitForChild("HumanoidRootPart").CFrame
pcall(function()
	for _, v39 in pairs(a:GetDescendants()) do
		if (v39:IsA("BasePart") or v39:IsA("Decal")) and (v39.Name ~= "HumanoidRootPart" and (not v39:FindFirstChild("Face") and v39.Name ~= "Hurtbox")) then
			v39.Transparency = 0.5
		end
        end
end)
    wait(1)
    LP.Character = a
    wait(1)
end

PremiumFeatures:CreateToggle({Name = "Auto-Kill Killer On Match Start [ BETA ]"; CurrentValue = false; Callback = function(Value)
if HavePremium() ~= true then
ErrorPremium()
return nil
end
AutoKillKillaKilla = Value
end; })

game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer").ChildAdded:Connect(function(Killer)
if AutoKillKillaKilla == true and Killer and Killer.Parent then
local gothisassflinged = false
local function checkifgotflingedlol(hrp)
    local velocity = hrp.Velocity
    local speed = velocity.Magnitude
    if speed > 200 then
        local verticalsp = math.abs(velocity.Y)
        if verticalsp > 50 and verticalsp > math.abs(velocity.X) and verticalsp > math.abs(velocity.Z) then
            return true
        end
    end
    return false
end
wait(1)
repeat task.wait()
gothisassflinged = checkifgotflingedlol(Killer:WaitForChild("HumanoidRootPart"))
local vel, movel = nil, 0.1
if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Parent and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Parent then
LP.Character.HumanoidRootPart.CFrame = Killer:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,1.1,0)
end
if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Parent and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Parent then
vel = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
game:GetService("RunService").RenderStepped:Wait()
end
if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Parent and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Parent then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = vel
game:GetService("RunService").Stepped:Wait()
end
if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Parent and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Parent then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = vel + Vector3.new(0, movel, 0)
movel = movel * -1
end
until gothisassflinged == true or not Killer or Killer == nil or not Killer:FindFirstChild("HumanoidRootPart") or AutoKillKillaKilla == false or not Killer:FindFirstChild("Head") or (game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0)
end
end)

--PremiumFeatures:CreateSection("Server Break / Crasher / Destroyer ⊙﹏⊙∥")

--PremiumFeatures:CreateParagraph({Title = "Info [ Crash Server ]", Content = "Breaks whole server.\nTimer will just stop, and round will never start.\n( Which makes server unable to play on )"})

--PremiumFeatures:CreateParagraph({Title = "How To Use [ Crash Server ]", Content = "Activate when match started ( you should be survivor, AKA civilian ),\nthen wait until everyone dies ( when lms starts between you and killer ).\nAfter this you'll automatically rejoin this server and ta-daa!\nServer will break."})

PremiumFeatures:CreateSection("Server Glitcher ⊙﹏⊙∥")

PremiumFeatures:CreateParagraph({Title = "Info [ Server Glitcher ]", Content = "Server Glitcher can only glitch those killers:\n\n1. Harken ( + survivors if she's the killer )\nSoftlocks harken if she uses either immolate or tangle. And if current round killer is harken, all survivor abilities will softlock them too.\n\n2. Badware\nSoftlocks badware if he uses rift ability.\n\n3. Killdroid\nSoftlocks his deploys.\n\nYou may wonder, why are they even softlocking? It's cuz saucefy ain't checking for body parts or using any pcalls lol they really should hire me for anticheat frfr ( and i know this will get patched soon )"})

PremiumFeatures:CreateParagraph({Title = "How To Use [ Server Glitcher ]", Content = "Activate when match started ( you should be survivor, AKA civilian )\nWARNING! You will become ghost upon activating this feature."})

autoresetwhenlms = false
PremiumFeatures:CreateToggle({Name = "Auto-Rejoin when LMS starts."; CurrentValue = false; Callback = function(Value)
if HavePremium() ~= true then
ErrorPremium()
return nil
end
autoresetwhenlms = Value
end; })

PremiumFeatures:CreateButton({Name = "Server Glitcher [ OP + FE ]"; Callback = function()
if HavePremium() ~= true then
ErrorPremium()
return nil
end

if LP.Character:WaitForChild("HumanoidRootPart").Anchored == true then
Notify("Error!", "You just spawned! Wait a bit")
return nil
end

--[[
if #game:GetService("Players"):GetPlayers() < 3 then
Notify("Error!", "There's not enough players! ( Need atleast 3 )")
return nil
end

if #game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor"):GetChildren() < 2 then
Notify("Error!", "There's not enough survivors/civilians! ( Need atleast 2 )")
return nil
end
]]--
			
if not game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor"):FindFirstChild(""..LP.Name.."") then
Notify("Error!", "You're not survivor!")
return nil
end

local function CheckHowManySurvivorsLeft()
local survivorsamount = 0
for i,v in pairs(game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor"):GetChildren()) do
if v and v:FindFirstChildOfClass("Humanoid") then
survivorsamount = survivorsamount + 1
end
end
return survivorsamount
end
			
local time = tick()
while tick() - time < 2 do
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v and v:IsA("BasePart") then
v.Velocity = Vector3.new(0,0,0)
v.RotVelocity = Vector3.new(0,0,0)
end
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,-490,0)
task.wait()
end

GhostMorph()

--Notify("Success!", "Now wait until lms starts or killer fails to kill everyone!", 10, true)

Notify("Success!", "I really hope the current killer is harken, bcuz it the most funniest.", 5, true)

if autoresetwhenlms == true then	
repeat task.wait() until (CheckHowManySurvivorsLeft() == 1 and game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor"):GetChildren()[1].Name == ""..LP.Name.."") or game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChildOfClass("Model") == nil
Notify("Success!", "Trying to rejoin...", 10, true)
if game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor"):FindFirstChildOfClass("Model") and game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Survivor"):GetChildren()[1].Name == ""..LP.Name.."" then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end
else			
LP.CharacterAdded:Wait()
if game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Ghost"):FindFirstChild(tostring(LP.Name)) then
game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Ghost"):FindFirstChild(tostring(LP.Name)):Destroy()
end			
end
end; })

PremiumFeatures:CreateSection("Advanced Anti (｡･∀･)ﾉﾞ")

PremiumFeatures:CreateToggle({Name = "Anti-Stun"; CurrentValue = false; Callback = function(Value)
if HavePremium() ~= true then
ErrorPremium()
return nil
end
AntiStun = Value
if AntiStun == true then
Notify("Success!", "Anti-Stun is now enabled!", 4, true)
repeat task.wait()
if HaveAtt("WalkSpeedModifier") and GetAtt("WalkSpeedModifier") ~= 0 then
SetAtt("WalkSpeedModifier", 0)
end
if HaveAtt("StaminaModifier") and GetAtt("StaminaModifier") ~= 0 then
SetAtt("StaminaModifier", 0)
end
until AntiStun == false
end
end; })

function StudsIntoPower(studs)
return (studs * 6)
end

PremiumFeatures:CreateSection("Hitbox Extender °^°")

PremiumFeatures:CreateToggle({Name = "Extend Hitbox"; CurrentValue = false; Callback = function(Value)
if HavePremium() ~= true then
ErrorPremium()
return nil
end
ExtendHitbox = Value
if ExtendHitbox == true then
local distance = StudsIntoPower(33)
repeat game:GetService("RunService").Heartbeat:Wait()
local vel, movel = nil, 0.1
while not (game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Parent and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Parent) do
game:GetService("RunService").Heartbeat:Wait()
end
vel = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = vel * distance + (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * distance)
game:GetService("RunService").RenderStepped:Wait()
if (game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Parent and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Parent) then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = vel
end
until ExtendHitbox == false
end
end; })

PremiumFeatures:CreateSection("Silly animations UwU")

local preferedanimat
preferedanimat = "laying on floor like uhh mequot"
PremiumFeatures:CreateDropdown({Name = "Animation"; Options = {"laying on floor like uhh mequot","360 SPIN","Put yo hands up!","TOWER SPIN TTT","killdroid intro","meditation","minecraft glitch or smth","pretence summon"}; CurrentOption = "laying on floor like uhh mequot"; MultiSelection = false; Callback = function(Value)
preferedanimat = TableFirstElementToString(Value)
end; })

local function PlayAnim(id)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..id
local loadedanim = LP.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Anim)
repeat task.wait() until loadedanim.Length > 0	
loadedanim:Play()
repeat task.wait() until loadedanim.IsPlaying
end

PremiumFeatures:CreateButton({Name = "Play Choosen Anim"; Callback = function()
if HavePremium() ~= true then
ErrorPremium()
return nil
end
if preferedanimat == "laying on floor like uhh mequot" then
PlayAnim(tostring(139854803244662))
elseif preferedanimat == "360 SPIN" then
PlayAnim(tostring(107995217692659))
elseif preferedanimat == "Put yo hands up!" then
PlayAnim(tostring(70951232403682))
elseif preferedanimat == "TOWER SPIN TTT" then
PlayAnim(tostring(121553057496251))
elseif preferedanimat == "killdroid intro" then
PlayAnim(tostring(114518892856920))
elseif preferedanimat == "meditation" then
PlayAnim(tostring(114803562028172))
elseif preferedanimat == "minecraft glitch or smth" then
PlayAnim(tostring(127615305496836))
elseif preferedanimat == "pretence summon" then
PlayAnim(tostring(125993877416671))
end
Notify("Success!", "Activated animation!", 4, true)
end; })


--[[

LP = game.Players.LocalPlayer
function nocollision()
for i,v in pairs(LP.Character:GetDescendants()) do
if v and v:IsA("BasePart") and v.CanCollide == true then
v.CanCollide = false
end
end
if LP.Character:FindFirstChild("HumanoidRootPart") then
LP.Character:FindFirstChild("HumanoidRootPart").CanCollide = true
end
end
Noclipping = RunService.Stepped:Connect(nocollision)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://90444351114401"
local loadedanim = LP.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Anim)
loadedanim.Priority = Enum.AnimationPriority.Action4
repeat task.wait() until loadedanim.Length > 0	
loadedanim:Play()
repeat task.wait() until loadedanim.IsPlaying
loadedanim:AdjustSpeed(tonumber(0))
loadedanim.TimePosition = 2.2

]]--

function StopAllAnims()
task.spawn(function()
local stopper = LP.Character:FindFirstChildOfClass("Humanoid") or LP.Character:FindFirstChildOfClass("AnimationController") 
for i,v in next, stopper:GetPlayingAnimationTracks() do
v.Priority = Enum.AnimationPriority.Core
v:AdjustSpeed(tonumber(0))
v:Stop(tonumber(0))
end
end)
end
-- .TimePosition :AdjustSpeed()
PremiumFeatures:CreateButton({Name = "Stop All Anims"; Callback = function()
if HavePremium() ~= true then
ErrorPremium()
return nil
end
StopAllAnims()
Notify("Success!", "Stopped all animations!", 4, true)
end; })



local plate_name = tostring(math.random(1,99999999999))
function InvisibilityMode(mode)
if workspace:FindFirstChild(tostring(plate_name)) == nil then
local S = Instance.new("Part")
S.Name = tostring(plate_name)
S.Anchored = true
S.CanCollide = true
S.Transparency = 0
S.Position = Vector3.new(0,500,0)
S.Size = Vector3.new(20, 10, 20)
S.Parent = workspace
end
local Player = game:GetService("Players").LocalPlayer
local Camera = workspace:FindFirstChild("CurrentCamera") or workspace:FindFirstChild("Camera") or workspace:FindFirstChildOfClass("CurrentCamera") or workspace:FindFirstChildOfClass("Camera")
if mode == "on" or mode == true then
Player.Character.Archivable = true
InvisChar = Player.Character:Clone()
InvisChar.Parent = workspace
InvisChar:WaitForChild("HumanoidRootPart").CFrame = Player.Character:WaitForChild("HumanoidRootPart").CFrame
InvisChar.Name = tostring(math.random(1,99999999999))
Camera.CameraSubject = InvisChar:FindFirstChildOfClass("Humanoid")
task.wait(.1)
Player.Character:WaitForChild("HumanoidRootPart").CFrame = workspace:FindFirstChild(tostring(plate_name)).CFrame * CFrame.new(0,20,0)
Player.Character:FindFirstChildOfClass("Humanoid"):MoveTo(Vector3.new(workspace:FindFirstChild(tostring(plate_name)).Position.X, 9e9, workspace:FindFirstChild(tostring(plate_name)).Position.Z))
task.wait(1.5)
for i,v in pairs(InvisChar:GetDescendants()) do
	if v and v:IsA("BasePart") then
		if v.Name == "HumanoidRootPart" then
			v.Transparency = 1
		else
			if v.Transparency ~= 1 then
				v.Transparency = .5
			end
		end
	end
end
Player.Character.Parent = game:GetService("LogService")
Player.Character = InvisChar
pcall(function()
Player.Character.Animate.Disabled = true
Player.Character.Animate.Disabled = false
end)
for i,v in pairs(Player.PlayerGui.MainGui.Abilities:GetChildren()) do
if v and v:IsA("ImageButton") then
v.Visible = false
end
end
InvisCharDied = InvisChar:FindFirstChildOfClass("Humanoid").Died:Connect(function()
	pcall(function()
		task.spawn(function()
			if InvisChar then
				for i,v in ipairs(game:GetService("LogService"):GetDescendants()) do
					if v then
						v.Parent = workspace
						v:WaitForChild("HumanoidRootPart").CFrame = InvisChar:WaitForChild("HumanoidRootPart").CFrame
						Player.Character = v
						break
					end
				end
				InvisChar:Destroy()
				InvisChar = nil
			end
		end)
	end)
	pcall(function()
		task.spawn(function()
			if InvisCharDied then
				InvisCharDied:Disconnect()
				InvisCharDied = nil
			end
		end)
	end)
	pcall(function()
	Camera.CameraSubject = Player.Character:FindFirstChildOfClass("Humanoid")
	end)
	pcall(function()
	Player.Character.Animate.Disabled = true
	Player.Character.Animate.Disabled = false
	end)
	for i,v in pairs(Player.PlayerGui.MainGui.Abilities:GetChildren()) do
	if v and v:IsA("ImageButton") then
	v.Visible = true
	end
	end
end)
elseif mode == "off" or mode == false then
if InvisChar then
	for i,v in ipairs(game:GetService("LogService"):GetDescendants()) do
		if v then
			v.Parent = workspace
			v:WaitForChild("HumanoidRootPart").CFrame = InvisChar:WaitForChild("HumanoidRootPart").CFrame
			Player.Character = v
			break
		end
	end
	InvisChar:Destroy()
	InvisChar = nil
end
if InvisCharDied then
	InvisCharDied:Disconnect()
	InvisCharDied = nil
end
Camera.CameraSubject = Player.Character:FindFirstChildOfClass("Humanoid")
pcall(function()
Player.Character.Animate.Disabled = true
Player.Character.Animate.Disabled = false
end)
for i,v in pairs(Player.PlayerGui.MainGui.Abilities:GetChildren()) do
if v and v:IsA("ImageButton") then
v.Visible = true
end
end
end
end

PremiumFeatures:CreateSection("Invisibility (°°)～")

local InvisibilityType
InvisibilityType = "Invisibility (can use abilities)"
PremiumFeatures:CreateDropdown({Name = "Invisibility Mode"; Options = {"Invisibility (can use abilities)","Invisibility + Invincibility (can't use abilities)"}; CurrentOption = "Invisibility (can use abilities)"; MultiSelection = false; Callback = function(Value)
InvisibilityType = TableFirstElementToString(Value)
end; })

noclip_connection = nil
PremiumFeatures:CreateToggle({Name = "Turn On/Off Invisibility"; CurrentValue = false; Callback = function(Value)
if HavePremium() ~= true then
ErrorPremium()
return nil
end
if Value == false then
StopAllAnims()
InvisibilityMode("off")
if noclip_connection then
noclip_connection:Disconnect()
noclip_connection = nil
end
Notify("Success!", "Disabled invisibility!", 4, true)
elseif Value == true then
if InvisibilityType == "Invisibility (can use abilities)" then		
local function nocollision()
for i,v in pairs(LP.Character:GetDescendants()) do
if v and v:IsA("BasePart") and v.CanCollide == true and v.Name ~= "HumanoidRootPart" then
v.CanCollide = false
end
end
if LP.Character:FindFirstChild("HumanoidRootPart") then
LP.Character:FindFirstChild("HumanoidRootPart").CanCollide = true
end
end
noclip_connection = game:GetService("RunService").Stepped:Connect(nocollision)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://90444351114401"
local loadedanim = LP.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Anim)
loadedanim.Priority = Enum.AnimationPriority.Action4
repeat task.wait() until loadedanim.Length > 0	
loadedanim:Play()
repeat task.wait() until loadedanim.IsPlaying
loadedanim:AdjustSpeed(tonumber(0))
loadedanim.TimePosition = 2.2
Notify("Success!", "Applied invisibility!", 4, true)
elseif InvisibilityType == "Invisibility + Invincibility (can't use abilities)" then
Notify("Success!", "Applying invisibility... Please don't move!", 2, true)
InvisibilityMode("on")
Notify("Success!", "Applied invisibility!", 4, true)
end
end
end; })

PremiumFeatures:CreateSection("Invis Block ԅ(¯﹃¯ԅ)")


invisblockhandler = nil
PremiumFeatures:CreateToggle({Name = "Turn On/Off Invis-Block"; CurrentValue = false; Callback = function(Value)
if HavePremium() ~= true then
ErrorPremium()
return nil
end
if Value == false then
if invisblockhandler then
invisblockhandler:Disconnect()
invisblockhandler = nil
end
Notify("Success!", "Disabled invis-block!", 4, true)
elseif Value == true then
if LP.Character and LP.Character:FindFirstChildOfClass("Humanoid") or LP.Character:FindFirstChildOfClass("AnimationController") then
local stopper = LP.Character:FindFirstChildOfClass("Humanoid") or LP.Character:FindFirstChildOfClass("AnimationController")
invisblockhandler = stopper.AnimationPlayed:Connect(function(track)
if not track then return nil end
local loggedanim = track.Animation
if loggedanim then
local loggedanimid = loggedanim.AnimationId
if loggedanimid ~= nil and loggedanimid == "rbxassetid://134233326423882" then
track.Priority = Enum.AnimationPriority.Core
track:AdjustSpeed(tonumber(0))
track:Stop(tonumber(0))
end
end
end)
end
Notify("Success!", "Enabled invis-block!", 4, true)
end
end; })

--[[
PremiumFeatures:CreateParagraph({Title = "Info [ All Abilities ]", Content = "You'll get all abilities. ( That's all, but it's pretty OP )"})

PremiumFeatures:CreateButton({Name = "Get All Abilities [kinda OP!!]"; Callback = function()
if HavePremium() ~= true then
ErrorPremium()
return nil
end
if TestFireSignal() ~= true then
ErrorSignal()
return nil
end

end; })
]]--

PremiumFeatures:CreateLabel("More coming very and very soon!!! :)")


--[[ 


   _____          __                __   __               
  /  _  \   ____ |__| _____ _____ _/  |_|__| ____   ____  
 /  /_\  \ /    \|  |/     \\__  \\   __\  |/  _ \ /    \ 
/    |    \   |  \  |  Y Y  \/ __ \|  | |  (  <_> )   |  \
\____|__  /___|  /__|__|_|  (____  /__| |__|\____/|___|  /
        \/     \/         \/     \/                    \/ 

Animations Changer


]]--

local function ReturnAnimFolder()
local skibidiamogus = LP.Character or LP.CharacterAdded:Wait()
if skibidiamogus:FindFirstChild("Animations") then
return skibidiamogus:WaitForChild("Animations")
end
return nil
end
local Animation = Window:CreateTab("Animations Changer",73777691791017)
Animation:CreateSection("Animation Changer o(≧口≦)o")

local function SetAnim(run, walk, idle)

local stopper = LP.Character:FindFirstChildOfClass("Humanoid") or LP.Character:FindFirstChildOfClass("AnimationController")
for i,v in next, stopper:GetPlayingAnimationTracks() do
v:Stop()
end

local AnimationFolder = ReturnAnimFolder()
pcall(function()
if AnimationFolder:FindFirstChild("HurtSprint") then
AnimationFolder:FindFirstChild("HurtSprint").AnimationId = run
end
end)
pcall(function()
if AnimationFolder:FindFirstChild("NormalSprint") then
AnimationFolder:FindFirstChild("NormalSprint").AnimationId = run
end
end)
pcall(function()
if AnimationFolder:FindFirstChild("OldSprint") then
AnimationFolder:FindFirstChild("OldSprint").AnimationId = run
end
end)
pcall(function()
if AnimationFolder:FindFirstChild("Sprint") then
AnimationFolder:FindFirstChild("Sprint").AnimationId = run
end
end)
pcall(function()
if AnimationFolder:FindFirstChild("Idle") then
AnimationFolder:FindFirstChild("Idle").AnimationId = idle
end
end)
pcall(function()
if AnimationFolder:FindFirstChild("OldIdle") then
AnimationFolder:FindFirstChild("OldIdle").AnimationId = idle
end
end)
pcall(function()
if AnimationFolder:FindFirstChild("Walk") then
AnimationFolder:FindFirstChild("Walk").AnimationId = walk
end
end)
pcall(function()
if AnimationFolder:FindFirstChild("OldWalk") then
AnimationFolder:FindFirstChild("OldWalk").AnimationId = walk
end
end)

pcall(function()
LP.Character.Animate.Disabled = true
LP.Character.Animate.Disabled = false
end)

end

Animation:CreateLabel("Civilian Animations")
Animation:CreateButton({Name = "Apply New Civilian Animations"; Callback = function()
local RunAnim = "rbxassetid://137375023685630"
local WalkAnim = "rbxassetid://84388941697203"
local IdleAnim = "rbxassetid://100930402371608"
task.spawn(function()
SetAnim(RunAnim, WalkAnim, IdleAnim)
end)
Notify("Success!", "Applied civilian animations!", 4, true)
end; })
Animation:CreateButton({Name = "Apply Old Civilian Animations"; Callback = function()
local RunAnim = "rbxassetid://79488319304371"
local WalkAnim = "rbxassetid://138161225743614"
local IdleAnim = "rbxassetid://74309548749074"
task.spawn(function()
SetAnim(RunAnim, WalkAnim, IdleAnim)
end)
Notify("Success!", "Applied civilian animations!", 4, true)
end; })

Animation:CreateLabel("Ghost Animations")
Animation:CreateButton({Name = "Apply Ghost Animations"; Callback = function()
local RunAnim = "rbxassetid://124260679864309"
local WalkAnim = "rbxassetid://124260679864309"
local IdleAnim = "rbxassetid://110395159339100"
task.spawn(function()
SetAnim(RunAnim, WalkAnim, IdleAnim)
end)
Notify("Success!", "Applied ghost animations!", 4, true)
end; })

pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Characters"):WaitForChild("Killer"):GetChildren()) do if v then
Animation:CreateLabel(v.Name.." Animations")
for _,e in pairs(v:GetChildren()) do if e and e:FindFirstChild("Animations") then

Animation:CreateButton({Name = "Apply "..e.Name.." Animations"; Callback = function()
local RunAnim = e:WaitForChild("Animations"):WaitForChild("Sprint").AnimationId or e:WaitForChild("Animations"):WaitForChild("OldSprint").AnimationId or e:WaitForChild("Animations"):WaitForChild("NormalSprint").AnimationId or e:WaitForChild("Animations"):WaitForChild("HurtSprint").AnimationId
local WalkAnim = e:WaitForChild("Animations"):WaitForChild("Walk").AnimationId or e:WaitForChild("Animations"):WaitForChild("OldWalk").AnimationId
local IdleAnim = e:WaitForChild("Animations"):WaitForChild("Idle").AnimationId or e:WaitForChild("Animations"):WaitForChild("OldIdle").AnimationId
task.spawn(function()
SetAnim(RunAnim, WalkAnim, IdleAnim)
end)
Notify("Success!", "Applied "..e.Name.." animations!!", 4, true)
end; })

end; end
end; end
end)

Animation:CreateLabel("More Animations Coming Soon! :)")






--[[ 


________   __   __                  
\_____  \_/  |_|  |__   ___________ 
 /   |   \   __\  |  \_/ __ \_  __ \
/    |    \  | |   Y  \  ___/|  | \/
\_______  /__| |___|  /\___  >__|   
        \/          \/     \/       

Other things, idk, why are you even skidding my script breeeeh


]]--

local Other = Window:CreateTab("Other",116399911657417)
Other:CreateButton({Name = "Become Ghost [ use when you're dead or in lobby ]"; Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunctions"):WaitForChild("Spectate"):InvokeServer()
end; })

Other:CreateDropdown({Name = "Gui Theme"; Options = {"Amethyst","Default","AmberGlow","Bloom","DarkBlue","Green","Light","Ocean","Serenity"}; CurrentOption = "Ocean"; MultiSelection = false; Callback = function(Value)
Window.ModifyTheme(TableFirstElementToString(Value))
end; })

Other:CreateButton({Name = "Close Hub"; Callback = function()
pcall(function()
Window:Destroy()
end)
pcall(function()
Rayfield:Destroy()
end)
pcall(function()
game.CoreGui.Rayfield:Destroy()
end)
pcall(function()
game.CoreGui.RayField:Destroy()
end)
pcall(function()
game.CoreGui.OldRayfield:Destroy()
end)
pcall(function()
game.CoreGui.OldRayField:Destroy()
end)
end; })

local cmdbar = Window:CreateTab("cmd bar",98721082164451)

cmdbar:CreateButton({Name = "click me to see all cmds!"; Callback = function()
OpenLink("https://pastebin.com/raw/3VZyG7iD")
end; })
cmdbar:CreateButton({Name = "or click me to copy pastebin link with all cmds!"; Callback = function()
setclipboard(tostring("https://pastebin.com/raw/3VZyG7iD"))
end; })

--[[  
		
		
		
		
		custom skins handlers 
		
		
		
		
		
		
		
		
]]--



function weldAttachments(attach1, attach2)
  local weld = Instance.new("Weld")
  weld.Part0 = attach1.Parent
  weld.Part1 = attach2.Parent
  weld.C0 = attach1.CFrame
  weld.C1 = attach2.CFrame
  weld.Parent = attach1.Parent
  return weld
end

local function buildWeld(weldName, parent, part0, part1, c0, c1)
  local weld = Instance.new("Weld")
  weld.Name = weldName
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  weld.Parent = parent
  return weld
end

local function findFirstMatchingAttachment(model, name)
  for _, child in pairs(model:GetChildren()) do
    if child:IsA("Attachment") and child.Name == name then
      return child
    elseif not child:IsA("Accoutrement") and not child:IsA("Tool") then -- Don't look in hats or tools in the character
      local foundAttachment = findFirstMatchingAttachment(child, name)
      if foundAttachment then
        return foundAttachment
      end
    end
  end
end

function AddAccessory(character, accoutrement)  
  accoutrement.Parent = character
  local handle = accoutrement:FindFirstChild("Handle")
  if handle then
    local accoutrementAttachment = handle:FindFirstChildOfClass("Attachment")
    if accoutrementAttachment then
      local head = character:FindFirstChild("Head")
      if head then
        local attachmentCFrame = CFrame.new(0, 0.5, 0)
        local hatCFrame = accoutrement.AttachmentPoint
        buildWeld("HeadWeld", head, head, handle, attachmentCFrame, hatCFrame)
      end
    end
  end
end



--[[local SnowieAcs = {
  [1] = 15411280786;
  [2] = 74407339441275;
  [3] = 86580941913243;
}

for i,v in ipairs(SnowieAcs) do
AddAccessory(game.Players.LocalPlayer.Character, game:GetObjects("rbxassetid://"..tostring(v))[1])
end]]--




		
local killeradded, killererror = pcall(function()

function RemoveThingy(username)
    return string.sub(username, 1, 1) == "@" and string.sub(username, 2) or username
end
		
-- Main killerchange handler
MapSpawnKillerHandler = workspace.GameAssets.Teams.Killer.ChildAdded:Connect(function(child)
	task.wait(1)
	local suc, err = pcall(function()
		if child and child:FindFirstChild("Face") and child:FindFirstChild("Face"):FindFirstChild("Face") and (child:FindFirstChild("Face"):FindFirstChild("Face").Texture == "http://www.roblox.com/asset/?id=7131857" or child:FindFirstChild("Face"):FindFirstChild("Face").Texture == "rbxassetid://7131857") then
			child:WaitForChild("Accessories"):WaitForChild("Cape").Transparency = 0
			if child:WaitForChild("Accessories"):FindFirstChild("Mask") then
			child:WaitForChild("Accessories"):WaitForChild("Mask"):Destroy()
			end
			if child:FindFirstChild("TShirt") then
			child:WaitForChild("TShirt"):Destroy()
			end
			child:WaitForChild("Accessories"):WaitForChild("Hat"):WaitForChild("SpecialMesh").MeshId = "rbxassetid://10550906266"
			child:WaitForChild("Face"):WaitForChild("Face").Texture = "http://www.roblox.com/asset/?id=22587893"
			if child:FindFirstChildOfClass("Shirt") == nil then
			Instance.new("Shirt", child).ShirtTemplate = "http://www.roblox.com/asset/?id=11781931570"
			end
			if child:FindFirstChildOfClass("Pants") == nil then
			Instance.new("Pants", child).PantsTemplate = "http://www.roblox.com/asset/?id=12198890151"
			end
			child:WaitForChild("CloneTool"):WaitForChild("Sparkles").Enabled = true
			child:WaitForChild("CloneTool"):WaitForChild("Sparkles").Texture = "rbxassetid://9099782826"
			child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = "rbxassetid://122304523836872"
			child:WaitForChild("Animations"):WaitForChild("ChaseTheme").Volume = 2.5
		end
	end)
	if not suc then
		warn(err)
		pcall(function() error(err) end)
	end
	local suc, err = pcall(function()
		if child and child:FindFirstChild("IsLivedroid") and child:FindFirstChild("IsLivedroid").Value == true then
child:WaitForChild("Face"):WaitForChild("Face").Texture = "rbxassetid://124929801774138"
local facechanged_connection
facechanged_connection = child:WaitForChild("Face"):WaitForChild("Face"):GetPropertyChangedSignal("Texture"):Connect(function()
	child:WaitForChild("Face"):WaitForChild("Face").Texture = "rbxassetid://124929801774138"
end)
if child:WaitForChild("Torso"):FindFirstChild("Decal") then
child:WaitForChild("Torso"):WaitForChild("Decal"):Destroy()
end
Instance.new("ShirtGraphic",child).Graphic = "rbxassetid://134689165641656"
local torsomesh = Instance.new("CharacterMesh")
torsomesh.MeshId = 48112070
torsomesh.BodyPart = Enum.BodyPart.Torso
torsomesh.Parent = child
local stareffect = game:GetService("ReplicatedStorage").Characters.Killer.Badware.Angelware.Accessories.HeadModel.Halo:Clone()
stareffect.Parent = child.Accessories.FakeHead
stareffect.Position = child.Accessories.FakeHead.Position
stareffect:WaitForChild("ParticleEmitter"):Destroy()
stareffect:WaitForChild("Sparkles").Texture = "rbxassetid://89437957777756"
stareffect:WaitForChild("Sparkles").Transparency = NumberSequence.new(0) or 0
stareffect:WaitForChild("Sparkles").Rate = 3
stareffect:WaitForChild("Sparkles").Size = NumberSequence.new(0.8)
stareffect:WaitForChild("Sparkles").LightEmission = 0
task.delay(0,function()
task.spawn(function()
game.Players:GetPlayerFromCharacter(child).CharacterAdded:Wait()
facechanged_connection:Disconnect()
end)
end)
end
	end)
	if not suc then
		warn(err)
		pcall(function() error(err) end)
	end
	local suc, err = pcall(function()
		if child and child:FindFirstChild("Face") and child:FindFirstChild("Face"):FindFirstChild("Face") and child:WaitForChild("Face"):WaitForChild("Face").Texture == "rbxassetid://19821051" then
			child:WaitForChild("Face"):WaitForChild("Face").Texture = "http://www.roblox.com/asset/?id=600272873"
			child:WaitForChild("Dagger"):WaitForChild("Mesh").TextureId = ""
if makefolder and isfolder and writefile and isfile and getcustomasset then
if isfile("dodnexerhub/music/subject.mp3") then
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = getcustomasset("dodnexerhub/music/subject.mp3")
else
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = "rbxassetid://119285499667468"
end
else
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = "rbxassetid://119285499667468"
end
			child:WaitForChild("HumanoidRootPart"):WaitForChild("Howl").SoundId = "rbxassetid://108778489166997"
			child:WaitForChild("HumanoidRootPart"):WaitForChild("Howl2").SoundId = "rbxassetid://108778489166997"
			child:WaitForChild("HumanoidRootPart"):WaitForChild("Stunned").SoundId = "rbxassetid://97138267903205"
			child:WaitForChild("Animations"):WaitForChild("Stunned").AnimationId = "rbxassetid://71254066167629"
			child:WaitForChild("Animations"):WaitForChild("Idle").AnimationId = "rbxassetid://116882648985413"
			child:WaitForChild("Animations"):WaitForChild("Sprint").AnimationId = "rbxassetid://99710523608673"
			child:WaitForChild("Animations"):WaitForChild("Walk").AnimationId = "rbxassetid://116619914860672"
			child:WaitForChild("Animations"):WaitForChild("ChaseTheme").Volume = 2.5
		end
	end)
	if not suc then
		warn(err)
		pcall(function() error(err) end)
	end
	local suc, err = pcall(function()
if child and child:FindFirstChild("Accessories") and child:FindFirstChild("Accessories"):FindFirstChild("HeadModel") and child:FindFirstChild("Accessories"):FindFirstChild("HeadModel"):FindFirstChild("Face") and child:FindFirstChild("Accessories"):FindFirstChild("HeadModel"):FindFirstChild("Face"):FindFirstChild("SurfaceGui") and child:FindFirstChild("Accessories"):FindFirstChild("HeadModel"):FindFirstChild("Face"):FindFirstChild("SurfaceGui"):FindFirstChild("ImageLabel") and child:FindFirstChild("Accessories"):FindFirstChild("HeadModel"):FindFirstChild("Face"):FindFirstChild("SurfaceGui"):FindFirstChild("ImageLabel").Image == "rbxassetid://119281468568353" then
child.Accessories.HeadModel.Face.SurfaceGui.ImageLabel.Image = ""
child.Accessories.HeadModel.Face.SurfaceGui.ImageLabel.BackgroundTransparency = 0
child.Accessories.HeadModel.Face.SurfaceGui.Glasses:Destroy()
if child.Accessories.HeadModel.Face.SurfaceGui:WaitForChild("Face"):FindFirstChild("UIGradient") then
child.Accessories.HeadModel.Face.SurfaceGui:WaitForChild("Face"):FindFirstChild("UIGradient"):Destroy()
end
child.Accessories.HeadModel.Face.SurfaceGui:WaitForChild("Face").Image = "rbxassetid://99817640514915"
child.Accessories.HeadModel.Face.SurfaceGui:WaitForChild("Face").ImageColor3 = Color3.new(1,1,1)
child.Accessories.HeadModel.Face.SurfaceGui:WaitForChild("Face").ScaleType = "Fit"
for i,v in pairs(child.Accessories.HeadModel:GetChildren()) do
	if v and v:IsA("BasePart") and (v.Color == Color3.fromRGB(255,152,220) or v.Color == Color3.fromRGB(0,255,225)) then
		v:Destroy()
	end
end
child.Torso.Color = Color3.new(1,1,1)
child.Torso.Material = Enum.Material.Plastic or "Plastic"
pcall(function()
child.Torso.SurfaceGui.ImageLabel.Image = "rbxassetid://110656048125503"
end)
for i,v in pairs(child.Accessories:GetChildren()) do
	if v and (v.Name == "ArmModel" or v.Name == "LegModel") then
		for _,q in pairs(v:GetChildren()) do
			if q and q.Name == "Part" and q.Color == Color3.fromRGB(255,252,252) then
				q.Color = Color3.new(1,1,1)
			elseif q then
				q.Color = Color3.new(0,0,0)
			end
		end
	end
end
for i,v in pairs(child.Accessories.Tubes:GetChildren()) do
	if v and v:IsA("BasePart") then
		v.Color = Color3.new(0,0,0)
	end
end
for i,v in pairs(child.Accessories.HeadModel:GetChildren()) do
	if v and v:IsA("BasePart") then
		if v.Name == "Wire" then
			v.Color = Color3.new(0,0,0)
		else
			v.Color = Color3.new(1,1,1)
		end
	end
end
child.Accessories.Union.Color = Color3.new(1,1,1)
if makefolder and isfolder and writefile and isfile and getcustomasset then
if isfile("dodnexerhub/music/idiotware.mp3") then
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = getcustomasset("dodnexerhub/music/idiotware.mp3")
end
end
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").Volume = 2.5
end
	end)
	if not suc then
		warn(err)
		pcall(function() error(err) end)
	end		
						
	local suc, err = pcall(function()
if child and child:FindFirstChild("Accessories") and child:FindFirstChild("Accessories"):FindFirstChild("Dagger") then
child:WaitForChild("CL_Torso").MeshId = 48112070
child:WaitForChild("Face"):WaitForChild("Face").Texture = "rbxassetid://127805400749886"
child:WaitForChild("Accessories"):WaitForChild("Dagger").Position = child:WaitForChild("Accessories"):WaitForChild("Dagger").Position - Vector3.new(0.5,0,0)
AddAccessory(child, game:GetObjects("rbxassetid://16572510926")[1])
if makefolder and isfolder and writefile and isfile and getcustomasset then
if isfile("dodnexerhub/music/mequot.mp3") then
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = getcustomasset("dodnexerhub/music/mequot.mp3")
end
end
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").Volume = 2.5
end
	end)
	if not suc then
		warn(err)
		pcall(function() error(err) end)
	end	


	local suc, err = pcall(function()
if child and child:FindFirstChild("Accessories") and child:FindFirstChild("Accessories"):FindFirstChild("Cape") and child:FindFirstChild("Accessories"):FindFirstChild("Cape"):FindFirstChild("Mesh") then
for i,v in pairs(child:WaitForChild("Accessories"):GetChildren()) do
	if v and v.Name ~= "Hat" then
		v:Destroy()
	end
end
for i,v in pairs(child:GetChildren()) do
	if v and v:IsA("CharacterMesh") then
		if v.Name == "CL_Torso" then
			v.MeshId = 48112070
		else
		    v:Destroy()
		end
	end
end
for i,v in pairs(child:GetChildren()) do
	if v and v:IsA("BasePart") then
		v.Color = Color3.new(1,1,1)
	end
end
child:WaitForChild("Shirt").ShirtTemplate = "rbxassetid://18912237383"
child:WaitForChild("Pants").PantsTemplate = "rbxassetid://14169977103"
child:WaitForChild("Accessories"):WaitForChild("Hat").Transparency = 1
if child:FindFirstChild("Face") then
	child:WaitForChild("Face"):Destroy()
end
if child:WaitForChild("Head"):FindFirstChildOfClass("Decal") == nil then
	local decalface = Instance.new("Decal")
	decalface.Texture = "rbxassetid://18601307228"
	decalface.Face = Enum.NormalId.Front
	decalface.Parent = child:WaitForChild("Head")
end
local SnowieAcs = {
  [1] = 15411280786;
  [2] = 74407339441275;
  [3] = 86580941913243;
}
for i,v in ipairs(SnowieAcs) do
AddAccessory(child, game:GetObjects("rbxassetid://"..tostring(v))[1])
end
if makefolder and isfolder and writefile and isfile and getcustomasset then
if isfile("dodnexerhub/music/snowie_new.mp3") then
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = getcustomasset("dodnexerhub/music/snowie_new.mp3")
end
end
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").Volume = 2.5
child:WaitForChild("HumanoidRootPart"):WaitForChild("Hit").SoundId = "rbxassetid://134699420140804"
child:WaitForChild("HumanoidRootPart"):WaitForChild("Hit").Volume = 1.5
end
	end)
	if not suc then
		warn(err)
		pcall(function() error(err) end)
	end	
end)

-- Intro Handlers
local child = game:GetService("ReplicatedStorage").Characters.Killer.Artful["#SoRetro"]
	if child and child:FindFirstChild("CloneTool") and child:WaitForChild("CloneTool"):FindFirstChild("Sparkles") and child:WaitForChild("CloneTool"):WaitForChild("Sparkles").Enabled == false then
		child:WaitForChild("Accessories"):WaitForChild("Cape").Transparency = 0
		if child:WaitForChild("Accessories"):FindFirstChild("Mask") then
		child:WaitForChild("Accessories"):WaitForChild("Mask"):Destroy()
		end
		if child:FindFirstChild("TShirt") then
		child:WaitForChild("TShirt"):Destroy()
		end
		child:WaitForChild("Accessories"):WaitForChild("Hat"):WaitForChild("SpecialMesh").MeshId = "rbxassetid://10550906266"
		if child:FindFirstChildOfClass("Shirt") == nil then
		Instance.new("Shirt", child).ShirtTemplate = "http://www.roblox.com/asset/?id=11781931570"
		end
		if child:FindFirstChildOfClass("Pants") == nil then
		Instance.new("Pants", child).PantsTemplate = "http://www.roblox.com/asset/?id=12198890151"
		end
		child:WaitForChild("CloneTool"):WaitForChild("Sparkles").Enabled = true
		child:WaitForChild("CloneTool"):WaitForChild("Sparkles").Texture = "rbxassetid://9099782826"
		child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = "rbxassetid://122304523836872"
		child:WaitForChild("Animations"):WaitForChild("ChaseTheme").Volume = 2.5
	end
local child = game:GetService("ReplicatedStorage").Characters.Killer.Pursuer.Phantasm
	if child and child:FindFirstChild("Face") and child:FindFirstChild("Face"):FindFirstChild("Face") and child:WaitForChild("Face"):WaitForChild("Face").Texture == "rbxassetid://19821051" then
		child:WaitForChild("Face"):WaitForChild("Face").Texture = "http://www.roblox.com/asset/?id=600272873"
		child:WaitForChild("Dagger"):WaitForChild("Mesh").TextureId = ""
if makefolder and isfolder and writefile and isfile and getcustomasset then
if isfile("dodnexerhub/music/subject.mp3") then
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = getcustomasset("dodnexerhub/music/subject.mp3")
else
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = "rbxassetid://119285499667468"
end
else
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = "rbxassetid://119285499667468"
end
		child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = "rbxassetid://91301655598713"
		child:WaitForChild("HumanoidRootPart"):WaitForChild("Howl").SoundId = "rbxassetid://108778489166997"
		child:WaitForChild("HumanoidRootPart"):WaitForChild("Howl2").SoundId = "rbxassetid://108778489166997"
		child:WaitForChild("HumanoidRootPart"):WaitForChild("Stunned").SoundId = "rbxassetid://97138267903205"
		child:WaitForChild("Animations"):WaitForChild("Stunned").AnimationId = "rbxassetid://71254066167629"
		child:WaitForChild("Animations"):WaitForChild("Idle").AnimationId = "rbxassetid://116882648985413"
		child:WaitForChild("Animations"):WaitForChild("Sprint").AnimationId = "rbxassetid://99710523608673"
		child:WaitForChild("Animations"):WaitForChild("Walk").AnimationId = "rbxassetid://116619914860672"
		child:WaitForChild("Animations"):WaitForChild("ChaseTheme").Volume = 2.5
	end
local child = game:GetService("ReplicatedStorage").Characters.Killer.Badware.Goodware
if child and child:FindFirstChild("Accessories") and child:FindFirstChild("Accessories"):FindFirstChild("HeadModel") and child:FindFirstChild("Accessories"):FindFirstChild("HeadModel"):FindFirstChild("Face") and child:FindFirstChild("Accessories"):FindFirstChild("HeadModel"):FindFirstChild("Face"):FindFirstChild("SurfaceGui") and child:FindFirstChild("Accessories"):FindFirstChild("HeadModel"):FindFirstChild("Face"):FindFirstChild("SurfaceGui"):FindFirstChild("ImageLabel") and child:FindFirstChild("Accessories"):FindFirstChild("HeadModel"):FindFirstChild("Face"):FindFirstChild("SurfaceGui"):FindFirstChild("ImageLabel").Image == "rbxassetid://119281468568353" then
child.Accessories.HeadModel.Face.SurfaceGui.ImageLabel.Image = ""
child.Accessories.HeadModel.Face.SurfaceGui.ImageLabel.BackgroundTransparency = 0
child.Accessories.HeadModel.Face.SurfaceGui.Glasses:Destroy()
if child.Accessories.HeadModel.Face.SurfaceGui:WaitForChild("Face"):FindFirstChild("UIGradient") then
child.Accessories.HeadModel.Face.SurfaceGui:WaitForChild("Face"):FindFirstChild("UIGradient"):Destroy()
end
child.Accessories.HeadModel.Face.SurfaceGui:WaitForChild("Face").Image = "rbxassetid://99817640514915"
child.Accessories.HeadModel.Face.SurfaceGui:WaitForChild("Face").ImageColor3 = Color3.new(1,1,1)
child.Accessories.HeadModel.Face.SurfaceGui:WaitForChild("Face").ScaleType = "Fit"
for i,v in pairs(child.Accessories.HeadModel:GetChildren()) do
	if v and v:IsA("BasePart") and (v.Color == Color3.fromRGB(255,152,220) or v.Color == Color3.fromRGB(0,255,225)) then
		v:Destroy()
	end
end
child.Torso.Color = Color3.new(1,1,1)
child.Torso.Material = Enum.Material.Plastic or "Plastic"
pcall(function()
child.Torso.SurfaceGui.ImageLabel.Image = "rbxassetid://110656048125503"
end)
for i,v in pairs(child.Accessories:GetChildren()) do
	if v and (v.Name == "ArmModel" or v.Name == "LegModel") then
		for _,q in pairs(v:GetChildren()) do
			if q and q.Name == "Part" and q.Color == Color3.fromRGB(255,252,252) then
				q.Color = Color3.new(1,1,1)
			elseif q then
				q.Color = Color3.new(0,0,0)
			end
		end
	end
end
for i,v in pairs(child.Accessories.Tubes:GetChildren()) do
	if v and v:IsA("BasePart") then
		v.Color = Color3.new(0,0,0)
	end
end
for i,v in pairs(child.Accessories.HeadModel:GetChildren()) do
	if v and v:IsA("BasePart") then
		if v.Name == "Wire" then
			v.Color = Color3.new(0,0,0)
		else
			v.Color = Color3.new(1,1,1)
		end
	end
end
child.Accessories.Union.Color = Color3.new(1,1,1)
if makefolder and isfolder and writefile and isfile and getcustomasset then
if isfile("dodnexerhub/music/idiotware.mp3") then
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = getcustomasset("dodnexerhub/music/idiotware.mp3")
end
end
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").Volume = 2.5
end
local child = game:GetService("ReplicatedStorage").Characters.Killer.Killdroid.Livedroid
if child and child:FindFirstChild("IsLivedroid") and child:FindFirstChild("IsLivedroid").Value == true then
child:WaitForChild("Face"):WaitForChild("Face").Texture = "rbxassetid://124929801774138"
if child:WaitForChild("Torso"):FindFirstChild("Decal") then
child:WaitForChild("Torso"):WaitForChild("Decal"):Destroy()
end
Instance.new("ShirtGraphic",child).Graphic = "rbxassetid://134689165641656"
local torsomesh = Instance.new("CharacterMesh")
torsomesh.MeshId = 48112070
torsomesh.BodyPart = Enum.BodyPart.Torso
torsomesh.Parent = child
local stareffect = game:GetService("ReplicatedStorage").Characters.Killer.Badware.Angelware.Accessories.HeadModel.Halo:Clone()
stareffect.Parent = child.Accessories.FakeHead
stareffect.Position = child.Accessories.FakeHead.Position
stareffect:WaitForChild("ParticleEmitter"):Destroy()
stareffect:WaitForChild("Sparkles").Texture = "rbxassetid://89437957777756"
stareffect:WaitForChild("Sparkles").Transparency = NumberSequence.new(0) or 0
stareffect:WaitForChild("Sparkles").Rate = 3
stareffect:WaitForChild("Sparkles").Size = NumberSequence.new(0.8)
stareffect:WaitForChild("Sparkles").LightEmission = 0
end
local child = game:GetService("ReplicatedStorage").Characters.Killer.Pursuer.MeQuot
if child and child:FindFirstChild("Accessories") and child:FindFirstChild("Accessories"):FindFirstChild("Dagger") then
child:WaitForChild("CL_Torso").MeshId = 48112070
child:WaitForChild("Face"):WaitForChild("Face").Texture = "rbxassetid://127805400749886"
child:WaitForChild("Accessories"):WaitForChild("Dagger").Position = child:WaitForChild("Accessories"):WaitForChild("Dagger").Position - Vector3.new(0.5,0,0)
game:GetObjects("rbxassetid://16572510926")[1].Parent = child
if makefolder and isfolder and writefile and isfile and getcustomasset then
if isfile("dodnexerhub/music/mequot.mp3") then
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = getcustomasset("dodnexerhub/music/mequot.mp3")
end
end
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").Volume = 2.5
end
local child = game:GetService("ReplicatedStorage").Characters.Killer.Artful.Artistry
if child and child:FindFirstChild("Accessories") and child:FindFirstChild("Accessories"):FindFirstChild("Cape") and child:FindFirstChild("Accessories"):FindFirstChild("Cape"):FindFirstChild("Mesh") then
for i,v in pairs(child:WaitForChild("Accessories"):GetChildren()) do
	if v and v.Name ~= "Hat" then
		v:Destroy()
	end
end
for i,v in pairs(child:GetChildren()) do
	if v and v:IsA("CharacterMesh") then
		if v.Name == "CL_Torso" then
			v.MeshId = 48112070
		else
		    v:Destroy()
		end
	end
end
for i,v in pairs(child:GetChildren()) do
	if v and v:IsA("BasePart") then
		v.Color = Color3.new(1,1,1)
	end
end
child:WaitForChild("Shirt").ShirtTemplate = "rbxassetid://18912237383"
child:WaitForChild("Pants").PantsTemplate = "rbxassetid://14169977103"
child:WaitForChild("Accessories"):WaitForChild("Hat").Transparency = 1
if child:FindFirstChild("Face") then
	child:WaitForChild("Face"):Destroy()
end
if child:WaitForChild("Head"):FindFirstChildOfClass("Decal") == nil then
	local decalface = Instance.new("Decal")
	decalface.Texture = "rbxassetid://18601307228"
	decalface.Face = Enum.NormalId.Front
	decalface.Parent = child:WaitForChild("Head")
end
local SnowieAcs = {
	[1] = 15411280786;
	[2] = 74407339441275;
	[3] = 86580941913243;
}
for i,v in pairs(SnowieAcs) do
	game:GetObjects("rbxassetid://"..tostring(v))[1].Parent = child
end
if makefolder and isfolder and writefile and isfile and getcustomasset then
if isfile("dodnexerhub/music/snowie_new.mp3") then
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").SoundId = getcustomasset("dodnexerhub/music/snowie_new.mp3")
end
end
child:WaitForChild("Animations"):WaitForChild("ChaseTheme").Volume = 2.5
child:WaitForChild("HumanoidRootPart"):WaitForChild("Hit").SoundId = "rbxassetid://134699420140804"
child:WaitForChild("HumanoidRootPart"):WaitForChild("Hit").Volume = 1.5
end

-- UI shop handler
BioAndTitleHandlers = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Shop.Skins.Info.Bio:GetPropertyChangedSignal("Text"):Connect(function()
if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Shop.Skins.Info.Bio.Text == '"I miss old ROBLOX so much, Pet Simulator X was a blast!"' then
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Shop.Skins.Info.Bio.Text = '"yay i added myself to DOD!"'
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Shop.Skins.Info.Title.Text = "Nexer"
elseif game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Shop.Skins.Info.Bio.Text == 'Survive Your Horrors!' then
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Shop.Skins.Info.Bio.Text = ':)'
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Shop.Skins.Info.Title.Text = "Subject_0"
elseif game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Shop.Skins.Info.Bio.Text == 'My purpose is to protect your computer from any viruses!' then
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Shop.Skins.Info.Bio.Text = 'i know what you are'
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Shop.Skins.Info.Title.Text = "Idiotware"
elseif game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Shop.Skins.Info.Bio.Text == '"Clair de Lune."' then
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Shop.Skins.Info.Bio.Text = '"Stabby wooh wooh! :3"'
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Shop.Skins.Info.Title.Text = 'Snow'
end
end)
IconAndTitleHandlers = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Shop.Skins.Frame.ScrollingFrame.ChildAdded:Connect(function(desc)
repeat task.wait() until desc and desc.Parent
if desc and desc.Parent and desc:IsA("ImageButton") and desc.Name == "#SoRetro" then
desc:WaitForChild("Frame"):WaitForChild("Icon").Image = "rbxassetid://97878538420410"
desc:WaitForChild("Frame"):WaitForChild("Title").Text = "Nexer"
elseif desc and desc.Parent and desc:IsA("ImageButton") and desc.Name == "Phantasm" then
desc:WaitForChild("Frame"):WaitForChild("Icon").Image = "rbxassetid://114517442964757"
desc:WaitForChild("Frame"):WaitForChild("Title").Text = "Subject_0"
elseif desc and desc.Parent and desc:IsA("ImageButton") and desc.Name == "Goodware" then
desc:WaitForChild("Frame"):WaitForChild("Icon").Image = "rbxassetid://99817640514915"
desc:WaitForChild("Frame"):WaitForChild("Title").Text = "Idiotware"
elseif desc and desc.Parent and desc:IsA("ImageButton") and desc.Name == "Livedroid" then
desc:WaitForChild("Frame"):WaitForChild("Icon").Image = "rbxassetid://99507194715936"
elseif desc and desc.Parent and desc:IsA("ImageButton") and desc.Name == "MeQuot" then
desc:WaitForChild("Frame"):WaitForChild("Icon").Image = "rbxassetid://108217313587598"
elseif desc and desc.Parent and desc:IsA("ImageButton") and desc.Name == "Artistry" then
desc:WaitForChild("Frame"):WaitForChild("Icon").Image = "rbxassetid://83636460339005"
desc:WaitForChild("Frame"):WaitForChild("Title").Text = "Snow"					
end
end)

-- Fartful handlers
FartfulMusicBoxHandler = workspace.GameAssets.Debris.Cleanable.ChildAdded:Connect(function(child)

local everythinggood, everythingbad = pcall(function()
if workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model") and workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model"):FindFirstChild("Face") and workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model"):FindFirstChild("Face"):FindFirstChild("Face") and (workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model"):FindFirstChild("Face"):FindFirstChild("Face").Texture == "http://www.roblox.com/asset/?id=7131857" or workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model"):FindFirstChild("Face"):FindFirstChild("Face").Texture == "rbxassetid://7131857") then
if child and child.Parent and child.Name == "MusicBox" then
child:WaitForChild("HumanoidRootPart"):WaitForChild("Song").Volume = 1.5
child:WaitForChild("HumanoidRootPart"):WaitForChild("Song").SoundId = "rbxassetid://714583842"
for i,v in pairs(child:WaitForChild("HumanoidRootPart"):GetChildren()) do
if v and v:IsA("Decal") then
v:Destroy()
end
end
child:WaitForChild("HumanoidRootPart").Color = Color3.fromRGB(195,0,255)
end
elseif workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model") and workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model"):FindFirstChild("Accessories") and workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model"):FindFirstChild("Accessories"):FindFirstChild("Hat") and workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model"):FindFirstChild("Accessories"):FindFirstChild("Hat").Transparency == 1 then
if child and child.Parent and child.Name == "MusicBox" then
for i,v in pairs(child:WaitForChild("HumanoidRootPart"):GetChildren()) do
if v and v:IsA("Decal") then
v:Destroy()
end
end
child:WaitForChild("HumanoidRootPart"):WaitForChild("Song").Volume = 3
child:WaitForChild("HumanoidRootPart"):WaitForChild("Song").SoundId = "rbxassetid://91013239854044"
child:WaitForChild("HumanoidRootPart").Transparency = 0.7
if child:WaitForChild("HumanoidRootPart"):FindFirstChild("Mesh") then
child:WaitForChild("HumanoidRootPart"):FindFirstChild("Mesh"):Destroy()
end
local billboardgui = Instance.new("BillboardGui")
billboardgui.Parent = child:WaitForChild("HumanoidRootPart")
billboardgui.Adornee = child:WaitForChild("HumanoidRootPart")
billboardgui.AlwaysOnTop = false
billboardgui.MaxDistance = 50
billboardgui.Size = UDim2.new(0,100,0,100)
Instance.new("ImageLabel",billboardgui).Image = "rbxassetid://106696946880330"
end
end
end)
if not everythinggood then
warn(everythingbad)
end
end)

FartfulWallHandler = workspace.GameAssets.Teams.Other.ChildAdded:Connect(function(child)
local everythinggood, everythingbad = pcall(function()
if workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model") and workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model"):FindFirstChild("Face") and workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model"):FindFirstChild("Face"):FindFirstChild("Face") and (workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model"):FindFirstChild("Face"):FindFirstChild("Face").Texture == "http://www.roblox.com/asset/?id=7131857" or workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model"):FindFirstChild("Face"):FindFirstChild("Face").Texture == "rbxassetid://7131857") then
if child and child.Parent and child.Name == "Wall" then
child:WaitForChild("HumanoidRootPart").Size = Vector3.new(10,6,1)
local front = Instance.new("Decal")
front.Parent = child:WaitForChild("HumanoidRootPart")
front.Face = "Front"
front.Texture = "rbxassetid://95214797160837"
local back = Instance.new("Decal")
back.Parent = child:WaitForChild("HumanoidRootPart")
back.Face = "Back"
back.Texture = "rbxassetid://95214797160837"
end
elseif workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model") and workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model"):FindFirstChild("Accessories") and workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model"):FindFirstChild("Accessories"):FindFirstChild("Hat") and workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model"):FindFirstChild("Accessories"):FindFirstChild("Hat").Transparency == 1 then
if child and child.Parent and child.Name == "Wall" then
child:WaitForChild("HumanoidRootPart").Size = Vector3.new(10,6,1)
child:WaitForChild("HumanoidRootPart").Color = Color3.new(1,1,1)
for i,v in pairs(child:GetChildren()) do
if v and v:IsA("Decal") then
v:Destroy()
end
end
local front = Instance.new("Decal")
front.Parent = child:WaitForChild("HumanoidRootPart")
front.Face = "Front"
front.Texture = "rbxassetid://128203759298928"
local back = Instance.new("Decal")
back.Parent = child:WaitForChild("HumanoidRootPart")
back.Face = "Back"
back.Texture = "rbxassetid://128203759298928"
elseif child and child.Parent and (child.Name == "Puppet" or child:FindFirstChild("Head")) then
for i,v in pairs(child:GetChildren()) do
	if v and v:IsA("CharacterMesh") then
		v:Destroy()
	end
end
AddAccessory(child, game:GetObjects("rbxassetid://417457461")[1])
Instance.new("Pants",child).PantsTemplate = "http://www.roblox.com/asset/?id=81496250"
Instance.new("Shirt",child).ShirtTemplate = "http://www.roblox.com/asset/?id=15912708548"
end
end
end)
if not everythinggood then
warn(everythingbad)
end
end)

-- Leaderboard handler
function checkframe()
if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info:FindFirstChild("Killer") then
return true
end
return false
end
		
SubjectVisLeaderboard = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info:GetPropertyChangedSignal("Visible"):Connect(function()
local username = tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text)))
if game.Players[username].Stats.EquippedKiller.Value == "Pursuer" and game.Players[username].Stats.Skins:FindFirstChild("Phantasm") and game.Players[username].Stats.Killers:FindFirstChild("Pursuer") and game.Players[username].Stats.Killers.Pursuer:GetAttribute("EquippedSkin") == "Phantasm" and checkframe() == true then
local overlay = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Killer:Clone()
overlay.Name = tostring(math.random(1,999999))
overlay.Image = "rbxassetid://114517442964757"
overlay.Parent = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info
overlay.Visible = true
overlay.ZIndex = 1
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Visible == false or tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text))) ~= username or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Visible == false
overlay:Destroy()
end
end)

SubjectTextLeaderboard = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title:GetPropertyChangedSignal("Text"):Connect(function()
local username = tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text)))
if game.Players[username].Stats.EquippedKiller.Value == "Pursuer" and game.Players[username].Stats.Skins:FindFirstChild("Phantasm") and game.Players[username].Stats.Killers:FindFirstChild("Pursuer") and game.Players[username].Stats.Killers.Pursuer:GetAttribute("EquippedSkin") == "Phantasm" and checkframe() == true then
local overlay = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Killer:Clone()
overlay.Name = tostring(math.random(1,999999))
overlay.Image = "rbxassetid://114517442964757"
overlay.Parent = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info
overlay.Visible = true
overlay.ZIndex = 1
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Visible == false or tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text))) ~= username or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Visible == false
overlay:Destroy()
end
end)
		
FartfulVisLeaderboard = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info:GetPropertyChangedSignal("Visible"):Connect(function()
local username = tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text)))
if game.Players[username].Stats.EquippedKiller.Value == "Artful" and game.Players[username].Stats.Skins:FindFirstChild("#SoRetro") and game.Players[username].Stats.Killers:FindFirstChild("Artful") and game.Players[username].Stats.Killers.Artful:GetAttribute("EquippedSkin") == "#SoRetro" and checkframe() == true then
local overlay = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Killer:Clone()
overlay.Name = tostring(math.random(1,999999))
overlay.Image = "rbxassetid://97878538420410"
overlay.Parent = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info
overlay.Visible = true
overlay.ZIndex = 1
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Visible == false or tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text))) ~= username or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Visible == false
overlay:Destroy()
end
end)
		
FartfulTextLeaderboard = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title:GetPropertyChangedSignal("Text"):Connect(function()
local username = tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text)))
if game.Players[username].Stats.EquippedKiller.Value == "Artful" and game.Players[username].Stats.Skins:FindFirstChild("#SoRetro") and game.Players[username].Stats.Killers:FindFirstChild("Artful") and game.Players[username].Stats.Killers.Artful:GetAttribute("EquippedSkin") == "#SoRetro" and checkframe() == true then
local overlay = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Killer:Clone()
overlay.Name = tostring(math.random(1,999999))
overlay.Image = "rbxassetid://97878538420410"
overlay.Parent = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info
overlay.Visible = true
overlay.ZIndex = 1
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Visible == false or tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text))) ~= username or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Visible == false
overlay:Destroy()
end
end)

IdiotVisLeaderboard = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info:GetPropertyChangedSignal("Visible"):Connect(function()
local username = tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text)))
if game.Players[username].Stats.EquippedKiller.Value == "Badware" and game.Players[username].Stats.Skins:FindFirstChild("Goodware") and game.Players[username].Stats.Killers:FindFirstChild("Badware") and game.Players[username].Stats.Killers.Badware:GetAttribute("EquippedSkin") == "Goodware" and checkframe() == true then
local overlay = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Killer:Clone()
overlay.Name = tostring(math.random(1,999999))
overlay.Image = "rbxassetid://99817640514915"
overlay.Parent = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info
overlay.Visible = true
overlay.ZIndex = 1
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Visible == false or tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text))) ~= username or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Visible == false
overlay:Destroy()
end
end)
		
IdiotTextLeaderboard = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title:GetPropertyChangedSignal("Text"):Connect(function()
local username = tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text)))
if game.Players[username].Stats.EquippedKiller.Value == "Badware" and game.Players[username].Stats.Skins:FindFirstChild("Goodware") and game.Players[username].Stats.Killers:FindFirstChild("Badware") and game.Players[username].Stats.Killers.Badware:GetAttribute("EquippedSkin") == "Goodware" and checkframe() == true then
local overlay = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Killer:Clone()
overlay.Name = tostring(math.random(1,999999))
overlay.Image = "rbxassetid://99817640514915"
overlay.Parent = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info
overlay.Visible = true
overlay.ZIndex = 1
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Visible == false or tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text))) ~= username or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Visible == false
overlay:Destroy()
end
end)

BaddiedroidVisLeaderboard = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info:GetPropertyChangedSignal("Visible"):Connect(function()
local username = tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text)))
if game.Players[username].Stats.EquippedKiller.Value == "Killdroid" and game.Players[username].Stats.Skins:FindFirstChild("Livedroid") and game.Players[username].Stats.Killers:FindFirstChild("Killdroid") and game.Players[username].Stats.Killers.Killdroid:GetAttribute("EquippedSkin") == "Livedroid" and checkframe() == true then
local overlay = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Killer:Clone()
overlay.Name = tostring(math.random(1,999999))
overlay.Image = "rbxassetid://99507194715936"
overlay.Parent = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info
overlay.Visible = true
overlay.ZIndex = 1
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Visible == false or tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text))) ~= username or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Visible == false
overlay:Destroy()
end
end)
		
BaddiedroidTextLeaderboard = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title:GetPropertyChangedSignal("Text"):Connect(function()
local username = tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text)))
if game.Players[username].Stats.EquippedKiller.Value == "Killdroid" and game.Players[username].Stats.Skins:FindFirstChild("Livedroid") and game.Players[username].Stats.Killers:FindFirstChild("Killdroid") and game.Players[username].Stats.Killers.Killdroid:GetAttribute("EquippedSkin") == "Livedroid" and checkframe() == true then
local overlay = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Killer:Clone()
overlay.Name = tostring(math.random(1,999999))
overlay.Image = "rbxassetid://99507194715936"
overlay.Parent = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info
overlay.Visible = true
overlay.ZIndex = 1
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Visible == false or tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text))) ~= username or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Visible == false
overlay:Destroy()
end
end)

BaddieQUOTVisLeaderboard = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info:GetPropertyChangedSignal("Visible"):Connect(function()
local username = tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text)))
if game.Players[username].Stats.EquippedKiller.Value == "Pursuer" and game.Players[username].Stats.Skins:FindFirstChild("MeQuot") and game.Players[username].Stats.Killers:FindFirstChild("Pursuer") and game.Players[username].Stats.Killers.Pursuer:GetAttribute("EquippedSkin") == "MeQuot" and checkframe() == true then
local overlay = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Killer:Clone()
overlay.Name = tostring(math.random(1,999999))
overlay.Image = "rbxassetid://108217313587598"
overlay.Parent = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info
overlay.Visible = true
overlay.ZIndex = 1
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Visible == false or tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text))) ~= username or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Visible == false
overlay:Destroy()
end
end)
		
BaddieQUOTTextLeaderboard = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title:GetPropertyChangedSignal("Text"):Connect(function()
local username = tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text)))
if game.Players[username].Stats.EquippedKiller.Value == "Pursuer" and game.Players[username].Stats.Skins:FindFirstChild("MeQuot") and game.Players[username].Stats.Killers:FindFirstChild("Pursuer") and game.Players[username].Stats.Killers.Pursuer:GetAttribute("EquippedSkin") == "MeQuot" and checkframe() == true then
local overlay = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Killer:Clone()
overlay.Name = tostring(math.random(1,999999))
overlay.Image = "rbxassetid://108217313587598"
overlay.Parent = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info
overlay.Visible = true
overlay.ZIndex = 1
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Visible == false or tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text))) ~= username or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Visible == false
overlay:Destroy()
end
end)

SNOWIEVisLeaderboard = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info:GetPropertyChangedSignal("Visible"):Connect(function()
local username = tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text)))
if game.Players[username].Stats.EquippedKiller.Value == "Artful" and game.Players[username].Stats.Skins:FindFirstChild("Artistry") and game.Players[username].Stats.Killers:FindFirstChild("Artful") and game.Players[username].Stats.Killers.Artful:GetAttribute("EquippedSkin") == "Artistry" and checkframe() == true then
local overlay = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Killer:Clone()
overlay.Name = tostring(math.random(1,999999))
overlay.Image = "rbxassetid://70961148607759"
overlay.Parent = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info
overlay.Visible = true
overlay.ZIndex = 1
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Visible == false or tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text))) ~= username or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Visible == false
overlay:Destroy()
end
end)
		
SNOWIETextLeaderboard = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title:GetPropertyChangedSignal("Text"):Connect(function()
local username = tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text)))
if game.Players[username].Stats.EquippedKiller.Value == "Artful" and game.Players[username].Stats.Skins:FindFirstChild("Artistry") and game.Players[username].Stats.Killers:FindFirstChild("Artful") and game.Players[username].Stats.Killers.Artful:GetAttribute("EquippedSkin") == "Artistry" and checkframe() == true then
local overlay = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Killer:Clone()
overlay.Name = tostring(math.random(1,999999))
overlay.Image = "rbxassetid://70961148607759"
overlay.Parent = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info
overlay.Visible = true
overlay.ZIndex = 1
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Visible == false or tostring(RemoveThingy(tostring(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Info.Title.Text))) ~= username or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Leaderstats.List.Visible == false
overlay:Destroy()
end
end)

end)

if killeradded then
Notify("Notification", "This script includes several custom skins for killers, if you want to turn them off, go to ''Visual Management'' tab and find button that says ''Disable Custom-Skins''", 8, true)
elseif not killeradded then
warn(killererror)
Notify("Error", "Failed adding custom skins.", 3, false)
end

local function CreateMISO(plr)
local target = plr
if not target then return nil end
local target_name = plr.Name
local target_char = target.Character or target.CharacterAdded:Wait()
if not game:GetService("Workspace"):WaitForChild("GameAssets"):WaitForChild("Teams"):WaitForChild("Killer"):FindFirstChild(target_name) then return nil end
if firesignal then
pcall(function()
local eee = Instance.new("Part")
eee.Name = "MISO"
firesignal(game:GetService("ReplicatedStorage").Events.RemoteEvents.KillerIntro.OnClientEvent, 
    eee,
    "Pursuer",
    "Pursuer",
    "MISO",
    1
)
end)
end
local suit = game:GetService("ReplicatedStorage"):WaitForChild("Characters"):WaitForChild("Killer"):WaitForChild("Pursuer"):FindFirstChild("MISO")
if not suit then return
end
local clonedsuit = suit:Clone()
clonedsuit.Parent = target_char
for _,item in pairs({"Humanoid", "HumanoidRootPart", "Animate"}) do
    local object = clonedsuit:FindFirstChild(item)
    if object then
        object:Destroy()
    end
end
local humanoid = target_char:FindFirstChildOfClass("Humanoid")
if not humanoid then return nil end
local partsToHide = {}
local suitParts = {}
local function scan(o)
    for _,child in pairs(o:GetChildren()) do
        if child:IsA("BasePart") then
            table.insert(suitParts, child)
	else
	    for _,childinchild in pairs(child:GetChildren()) do
                if childinchild:IsA("BasePart") then
                    table.insert(suitParts, childinchild)    
                end
            end
        end
    end
end
scan(clonedsuit)
for _,part in pairs(suitParts) do
local characterPart = target_char:FindFirstChild(part.Name)
if characterPart and (humanoid.RigType.Name == "R6" or characterPart:IsA("BasePart")) then
        local motor = Instance.new("Motor6D")
        motor.Name = "SuitAttachment_"..part.Name
        motor.Part0 = characterPart
        motor.Part1 = part
        motor.C0 = CFrame.new()
        motor.C1 = CFrame.new()
        motor.Parent = characterPart
        partsToHide[characterPart] = true
else
        part:Destroy()
end
end
for part in pairs(partsToHide) do
part.Transparency = 1
if part:IsA("MeshPart") then
        part.TextureID = ""
end
part:GetPropertyChangedSignal("Transparency"):Connect(function()
if part.Transparency ~= 1 then
part.Transparency = 1
end
if part:IsA("MeshPart") then
part.TextureID = ""
end
end)
end
if target_char:FindFirstChild("Face") then
target_char:WaitForChild("Face"):Destroy()
end
if target_char:FindFirstChild("Accessories") then
target_char:WaitForChild("Accessories"):Destroy()
end
target_char.Animations.ChaseTheme.SoundId = suit.Animations.ChaseTheme.SoundId
target_char.Animations.Walk.AnimationId = suit.Animations.Walk.AnimationId
target_char.Animations.Swing.AnimationId = suit.Animations.Swing.AnimationId
target_char.Animations.Stunned.AnimationId = suit.Animations.Stunned.AnimationId
target_char.Animations.StalkWalk.AnimationId = suit.Animations.StalkWalk.AnimationId
target_char.Animations.Stalk.AnimationId = suit.Animations.Stalk.AnimationId
target_char.Animations.Sprint.AnimationId = suit.Animations.Sprint.AnimationId
target_char.Animations.Idle.AnimationId = suit.Animations.Idle.AnimationId
target_char.Animations.Howl.AnimationId = suit.Animations.Howl.AnimationId
target_char.Animations.Cleave.AnimationId = suit.Animations.Cleave.AnimationId
target_char.Animations.Intro.AnimationId = suit.Animations.Intro.AnimationId
target_char.HumanoidRootPart.Cleave.SoundId = suit.HumanoidRootPart.Cleave.SoundId
target_char.HumanoidRootPart.CleaveHit.SoundId = suit.HumanoidRootPart.CleaveHit.SoundId
target_char.HumanoidRootPart.Hit.SoundId = suit.HumanoidRootPart.Hit.SoundId
target_char.HumanoidRootPart.Howl.SoundId = suit.HumanoidRootPart.Howl.SoundId
target_char.HumanoidRootPart["Howl2"].SoundId = suit.HumanoidRootPart["Howl2"].SoundId
target_char.HumanoidRootPart.Stunned.SoundId = suit.HumanoidRootPart.Stunned.SoundId
target_char.HumanoidRootPart.Swing.SoundId = suit.HumanoidRootPart.Swing.SoundId
target_char.HumanoidRootPart.Stalk.SoundId = suit.HumanoidRootPart.Stalk.SoundId
target_char.HumanoidRootPart["Stalk2"].SoundId = suit.HumanoidRootPart["Stalk2"].SoundId
target_char.HumanoidRootPart["Stalk3"].SoundId = suit.HumanoidRootPart["Stalk3"].SoundId
target_char.HumanoidRootPart["Stalk4"].SoundId = suit.HumanoidRootPart["Stalk4"].SoundId
end

local function onChattedCMDS(message)
    pcall(function()
    if message:match("-! inject (%a+)") then
	local target_name = message:match("-! inject (%a+)")

local playerfound
for i,v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #target_name):lower() == target_name:lower() then
playerfound = v
break
end
end

	if playerfound and playerfound.Name == LP.Name or target_name == "everyone" then
	Notify("Success!", "Injected cmds!", 4, true)
	console_injected = true
	end
    elseif message:match("-! uninject (%a+)") then
	local target_name = message:match("-! uninject (%a+)")

local playerfound
for i,v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #target_name):lower() == target_name:lower() then
playerfound = v
break
end
end

	if playerfound and playerfound.Name == LP.Name or target_name == "everyone" then
	console_injected = false
	end
    elseif message:match("-! activate miso") then
	if console_injected ~= true then return nil end
	for _,e in pairs(game:GetService("Players"):GetPlayers()) do
	if e then
		pcall(CreateMISO(e))
	end
	end
    elseif message:match("-! activate permadie") then
	if console_injected ~= true then return nil end
	pcall(function()
	    if replicatesignal then
        replicatesignal(game:GetService("Players").LocalPlayer.ConnectDiedSignalBackend)
        task.wait(game:GetService("Players").RespawnTime - 0.1)
	if game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
		game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
		firesignal(game:GetService("ReplicatedStorage").Events.RemoteEvents.DeathScreen.OnClientEvent)
	end
    	    end
	end)
    elseif message:match("-! award (%d+)") then
	if console_injected ~= true then return nil end
	local target_amount = message:match("-! award (%d+)")
	pcall(function()
	    if firesignal then
firesignal(game:GetService("ReplicatedStorage").Events.RemoteEvents.PlayerPoints.OnClientEvent, 
    target_amount,
    " for shooting the Killer with a revolver."
)
    	    end
	end)
    elseif message:match("-! activate resetchar") then
	if console_injected ~= true then return nil end
	if game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
		game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
	end
	pcall(function()
	    if firesignal then
firesignal(game:GetService("ReplicatedStorage").Events.RemoteEvents.DeathScreen.OnClientEvent)
    	    end
	end)
    elseif message:match("-! activate premium (%a+)") then
	if console_injected ~= true then return nil end
	local target_name = message:match("-! activate premium (%a+)")

local playerfound
for i,v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #target_name):lower() == target_name:lower() then
playerfound = v
break
end
end

	if playerfound and playerfound.Name == LP.Name or target_name == "everyone" then
	Notify("Gift!", "You have been gifted one-time only premium!", 10, true)
	getgenv().dodnhPremium = true
	end
    elseif message:match("-! deactivate premium (%a+)") then
	if console_injected ~= true then return nil end
	local target_name = message:match("-! deactivate premium (%a+)")

local playerfound
for i,v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #target_name):lower() == target_name:lower() then
playerfound = v
break
end
end

	if playerfound and playerfound.Name == LP.Name or target_name == "everyone" then
	getgenv().dodnhPremium = false
	end
    elseif message:match("-! setanim (%a+)") then
	if console_injected ~= true then return nil end
local target_anim = message:match("-! setanim (%a+)")
pcall(function()
for i,v in pairs(game:GetService("ReplicatedStorage"):WaitForChild("Characters"):WaitForChild("Killer"):GetChildren()) do if v then
for _,e in pairs(v:GetChildren()) do if e and e:FindFirstChild("Animations") and e.Name == target_anim or e.Name:match(target_anim) then
local RunAnim = e:WaitForChild("Animations"):WaitForChild("Sprint").AnimationId or e:WaitForChild("Animations"):WaitForChild("OldSprint").AnimationId or e:WaitForChild("Animations"):WaitForChild("NormalSprint").AnimationId or e:WaitForChild("Animations"):WaitForChild("HurtSprint").AnimationId
local WalkAnim = e:WaitForChild("Animations"):WaitForChild("Walk").AnimationId or e:WaitForChild("Animations"):WaitForChild("OldWalk").AnimationId
local IdleAnim = e:WaitForChild("Animations"):WaitForChild("Idle").AnimationId or e:WaitForChild("Animations"):WaitForChild("OldIdle").AnimationId
task.spawn(function()
SetAnim(RunAnim, WalkAnim, IdleAnim)
end)
end; end
end; end
end)
    end
    end)
end

if getgenv().avrgcmdsactivated == true then
--nothing
else
Notify("Success!", "CMDS Loaded!", 4, true)
getgenv().avrgcmdsactivated = true
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name == LP.Name or v.Name == "Nexer1234_AnotherAlt" then
v.Chatted:Connect(onChattedCMDS)
end
end
game:GetService("Players").PlayerAdded:Connect(function(v)
if v.Name == LP.Name or v.Name == "Nexer1234_AnotherAlt" then
v.Chatted:Connect(onChattedCMDS)
end
end)
end



function DamageEffect()
task.spawn(function()
game:GetService("Lighting").DamageEffect.Enabled = true
game:GetService("Lighting").DamageEffect.Contrast = 0
game:GetService("Lighting").DamageEffect.TintColor = Color3.fromRGB(255, 255, 255)
game:GetService("TweenService"):Create(game:GetService("Lighting").DamageEffect, TweenInfo.new(0.5), {
	["Contrast"] = 0.5
}):Play()
game:GetService("TweenService"):Create(game:GetService("Lighting").DamageEffect, TweenInfo.new(0.5), {
	["TintColor"] = Color3.fromRGB(255, 52, 52)
}):Play()
task.wait(0.5)
game:GetService("TweenService"):Create(game:GetService("Lighting").DamageEffect, TweenInfo.new(1), {
	["Contrast"] = 0
}):Play()
game:GetService("TweenService"):Create(game:GetService("Lighting").DamageEffect, TweenInfo.new(1), {
	["TintColor"] = Color3.fromRGB(255, 255, 255)
}):Play()
end)
end

function Jumpscare(duration)
local soundhahaha = Instance.new("Sound")
soundhahaha.SoundId = "rbxassetid://123871865507678"
soundhahaha.Volume = 3
soundhahaha.Name = "TROLLED ! ! !"
soundhahaha.Parent = game.Players.LocalPlayer.PlayerGui
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("TROLLED ! ! !")
if not soundhahaha.IsLoaded then
repeat task.wait() until soundhahaha.IsLoaded
end
soundhahaha:Play()
task.spawn(function()
soundhahaha.Ended:Connect(function() soundhahaha:Destroy() end)
end)
local INTENSITY = 3
local SPEED = 12
local ROLL_DOMINANCE = 8.5
local random = Random.new()
local timeOffset = random:NextNumber(0, 10)
local lastBaseCFrame = CFrame.new()
local function updateNauseaEffect()
    local baseCFrame = LP.Character:WaitForChild("Head").CFrame
    lastBaseCFrame = baseCFrame
    local time = os.clock() * SPEED + timeOffset
    local roll = math.sin(time * 1.7) * math.rad(INTENSITY * ROLL_DOMINANCE)
    local pitch = math.cos(time * 0.9) * math.rad(INTENSITY)
    local yaw = math.sin(time * 1.3) * math.rad(INTENSITY)
    local rotation = CFrame.Angles(pitch, yaw, roll)
    workspace.CurrentCamera.CFrame = CFrame.new(baseCFrame.Position) * (baseCFrame.Rotation * rotation)
end
game:GetService("RunService"):BindToRenderStep("NauseaEffect", Enum.RenderPriority.Camera.Value + 1, updateNauseaEffect)
local function disableNauseaEffect()
    game:GetService("RunService"):UnbindFromRenderStep("NauseaEffect")
    workspace.CurrentCamera.CFrame = lastBaseCFrame
end
task.delay(tonumber(duration),function()
disableNauseaEffect()
end)
end



function FakeKiller(npcname, targettingtime)
--local ragdoll = require(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Client.Modules.Effect)
local npc = nil
local ognpc = nil
for i,v in pairs(game:GetService("ReplicatedStorage").Characters.Killer:GetDescendants()) do
if v and v:IsA("Model") and v.Name and v.Parent:IsA("Folder") and v.Name:find(tostring(npcname)) or v.Name:match(tostring(npcname)) then
npc = v:Clone()
ognpc = v
end
end
pcall(function()
npc:WaitForChild("Humanoid").DisplayDistanceType = "None"
end)
npc.Parent = workspace.GameAssets.Teams.Killer
if game.Players.LocalPlayer.Character:FindFirstChild("Vanities") and workspace.GameAssets:FindFirstChild("Map") then
npc:WaitForChild("HumanoidRootPart").CFrame = workspace.GameAssets:WaitForChild("Map"):WaitForChild("Config"):WaitForChild("KillerSpawns"):GetChildren()[math.random(1,#workspace.GameAssets:WaitForChild("Map"):WaitForChild("Config"):WaitForChild("KillerSpawns"):GetChildren())].CFrame * CFrame.new(0,10,0)
else
npc:WaitForChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
end
if ognpc.Parent.Name == "Badware" then
npc:WaitForChild("Humanoid").WalkSpeed = 22
elseif ognpc.Parent.Name == "Pursuer" then
npc:WaitForChild("Humanoid").WalkSpeed = 26
elseif ognpc.Parent.Name == "Artful" then
npc:WaitForChild("Humanoid").WalkSpeed = 24.5
else
npc:WaitForChild("Humanoid").WalkSpeed = 24.5
end
local loadedanim_run = npc:WaitForChild("Humanoid"):LoadAnimation(npc:WaitForChild("Animations"):WaitForChild("Sprint"))
loadedanim_run:Play()
loadedanim_run:AdjustSpeed(tonumber(1))
local loadedanim_swing = npc:WaitForChild("Humanoid"):LoadAnimation(npc:WaitForChild("Animations"):WaitForChild("Swing"))
local cd = false
local start = tick()
while tick() - start < tonumber(targettingtime) do
pcall(function()
newpath = game:GetService("PathfindingService"):CreatePath({
	AgentRadius = 3,
	AgentHeight = 6,
	AgentCanJump = false,
	AgentCanClimb = false,
	WaypointSpacing = 6,
})
newpath:ComputeAsync(npc:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
waypoints = newpath:GetWaypoints()
if waypoints ~= nil and waypoints[2] ~= nil then
npc:WaitForChild("Humanoid"):MoveTo(waypoints[2].Position)
end
newpath = nil
end)
task.wait()
local magnitude = (npc:WaitForChild("HumanoidRootPart").Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude
if magnitude < 7 and cd == false and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health ~= 0 then
if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health < 26 then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = tonumber(game.Players.LocalPlayer.Character:WaitForChild("Humanoid").MaxHealth)
loadedanim_run:Stop()
loadedanim_run:AdjustSpeed(tonumber(0))
loadedanim_swing:Stop()
loadedanim_swing:AdjustSpeed(tonumber(0))
--ragdoll.Ragdoll(npc)
task.spawn(function()
Jumpscare(4)
end)
npc:Destroy()
return nil
end
cd = true
loadedanim_swing:Play()
task.wait(.5)
DamageEffect()
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health - 20
npc:WaitForChild("HumanoidRootPart"):WaitForChild("Hit"):Play()
task.delay(1,function()
cd = false
end)
end
end
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = tonumber(game.Players.LocalPlayer.Character:WaitForChild("Humanoid").MaxHealth)
loadedanim_run:Stop()
loadedanim_run:AdjustSpeed(tonumber(0))
loadedanim_swing:Stop()
loadedanim_swing:AdjustSpeed(tonumber(0))
--ragdoll.Ragdoll(npc)
task.spawn(function()
Jumpscare(4)
end)
npc:Destroy()
end


local ragdoll = nil
function FakeSurvivor()
pcall(function()
ragdoll = require(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Client.Modules.Effect)
end)
local npc = game:GetService("ReplicatedStorage").Characters.Survivor.Civilian:Clone()
pcall(function()
npc:WaitForChild("Humanoid").DisplayDistanceType = "None"
end)
npc.Name = tostring(game.Players:GetChildren()[math.random(1,#game.Players:GetChildren())].Name)
npc.Parent = workspace.GameAssets.Teams.Survivor
if workspace.GameAssets:FindFirstChild("Map") then
npc:WaitForChild("HumanoidRootPart").CFrame = workspace.GameAssets:WaitForChild("Map"):WaitForChild("Config"):WaitForChild("SurvivorSpawns"):GetChildren()[math.random(1,#workspace.GameAssets:WaitForChild("Map"):WaitForChild("Config"):WaitForChild("SurvivorSpawns"):GetChildren())].CFrame * CFrame.new(0,10,0)
else
npc:WaitForChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
end
local loadedanim_idle = npc:WaitForChild("Humanoid"):LoadAnimation(npc:WaitForChild("Animations"):WaitForChild("Idle"))
loadedanim_idle:Play()
loadedanim_idle:AdjustSpeed(tonumber(1))
for i,v in pairs(npc:WaitForChild("Vanities"):GetChildren()) do
if v and v:IsA("BasePart") then
v.Transparency = 1
end
end
local luck = math.random(1,3)
if luck == 1 then
npc:WaitForChild("Vanities"):WaitForChild("Caretaker").Transparency = 0
npc:WaitForChild("Torso").Color = Color3.fromRGB(255,255,255)
elseif luck == 2 then
npc:WaitForChild("Vanities"):WaitForChild("Aussie Slouch").Transparency = 0
npc:WaitForChild("Torso").Color = Color3.fromRGB(150,100,0)
elseif luck == 3 then
npc:WaitForChild("Vanities"):WaitForChild("Cloak").Transparency = 0
npc:WaitForChild("Vanities"):WaitForChild("NinjaMask").Transparency = 0
npc:WaitForChild("Torso").Color = Color3.fromRGB(255,255,255)
end
npc:WaitForChild("HumanoidRootPart").CanTouch = true
local alr_jumpscared = false
local touch_connection = npc:WaitForChild("HumanoidRootPart").Touched:Connect(function(child)
local magnitude = (npc:WaitForChild("HumanoidRootPart").Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude
if child and child:IsA("BasePart") and child.Name == "Part" and child.Color == Color3.fromRGB(255,0,0) and child.Material == Enum.Material.ForceField and magnitude < 25 then
loadedanim_idle:Stop()
loadedanim_idle:AdjustSpeed(tonumber(0))
alr_jumpscared = true
task.spawn(function()
Jumpscare(4)
end)
if require and ragdoll ~= nil then
ragdoll.Ragdoll(npc)
ragdoll = nil
else
npc:Destroy()
end
pcall(function()
touch_connection:Disconnect()
end)
end
end)
if not workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model") then
loadedanim_idle:Stop()
loadedanim_idle:AdjustSpeed(tonumber(0))
npc:Destroy()
pcall(function()
touch_connection:Disconnect()
end)
else
repeat task.wait() until workspace.GameAssets.Teams.Killer:FindFirstChildOfClass("Model") == nil or alr_jumpscared == true
if alr_jumpscared == true then return nil end
loadedanim_idle:Stop()
loadedanim_idle:AdjustSpeed(tonumber(0))
npc:Destroy()
pcall(function()
touch_connection:Disconnect()
end)
end
end



function FakeTimer()
local start = tick()
local timerisalmostup = game:GetService("ReplicatedStorage").Sounds.Songs["30SecondsLeft"]:Clone()
timerisalmostup.Parent = game.LogService
timerisalmostup.Volume = 2
timerisalmostup:Play()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:30"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:29"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:28"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:27"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:26"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:25"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:24"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:23"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:22"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:21"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:20"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:19"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:18"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:17"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:16"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:15"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:14"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:13"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:12"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:11"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:10"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:09"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:08"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:07"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:06"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:05"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:04"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:03"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:02"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:01"
task.wait()
end
local start = tick()
while tick() - start < 1 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "00:00"
task.wait()
end
game:GetService("ReplicatedStorage").Sounds.SFX.SurvivorWin:Play()
local start = tick()
while tick() - start < 7 do
game:GetService("ReplicatedStorage").StringConfig.Status.Value = "Time's up! The Survivors win!"
task.wait()
end
Jumpscare(4)
end

function FakeEvilScary()
local savedvolume = 1.5
local lungeattack = game:GetService("ReplicatedStorage").Assets.EvilScary.Lunge:Clone()
lungeattack.Parent = game.LogService
lungeattack.Volume = savedvolume
lungeattack:Play()
task.wait(2)
for i = 1, math.random(2,5) do
savedvolume = savedvolume + 0.5
local moveattackcopy = game:GetService("ReplicatedStorage").Assets.EvilScary.Move:Clone()
moveattackcopy.Parent = game.LogService
moveattackcopy.Volume = savedvolume
moveattackcopy:Play()
task.wait(.47)
end
local fuckingscream = game:GetService("ReplicatedStorage").Assets.EvilScary.Scream:Clone()
fuckingscream.Parent = game.LogService
fuckingscream:Play()
game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("EvilScary").Visible = true
game:GetService("ReplicatedStorage").Sounds.SFX.KillSound:Play()
task.wait(3.25)
game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("EvilScary").Visible = false
task.spawn(function()
Jumpscare(4)
end)
end



local ChoosenKiller = "Devesto"
local ChoosenTargettingTime = 20
local function onChattedTROLLCMDS(message)
pcall(function()
if message:match("-! ck (%a+)") then
local target_name = message:match("-! ck (%a+)")
ChoosenKiller = tostring(target_name)

elseif message:match("-! tk (%a+)") then
local target_name = message:match("-! tk (%a+)")
ChoosenTargettingTime = tonumber(target_name)
				
elseif message:match("-! sk (%a+)") then
local target_name = message:match("-! sk (%a+)")
local playerfound
for i,v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #target_name):lower() == target_name:lower() then
playerfound = v
break
end
end
if playerfound and playerfound.Name == LP.Name or target_name == "everyone" then
FakeKiller(ChoosenKiller, ChoosenTargettingTime)
end

elseif message:match("-! st (%a+)") then
local target_name = message:match("-! st (%a+)")
local playerfound
for i,v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #target_name):lower() == target_name:lower() then
playerfound = v
break
end
end
if playerfound and playerfound.Name == LP.Name or target_name == "everyone" then
FakeTimer()
end


elseif message:match("-! ss (%a+)") then
local target_name = message:match("-! ss (%a+)")
local playerfound
for i,v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #target_name):lower() == target_name:lower() then
playerfound = v
break
end
end
if playerfound and playerfound.Name == LP.Name or target_name == "everyone" then
FakeSurvivor()
end


elseif message:match("-! sj (%a+)") then
local target_name = message:match("-! sj (%a+)")
local playerfound
for i,v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #target_name):lower() == target_name:lower() then
playerfound = v
break
end
end
if playerfound and playerfound.Name == LP.Name or target_name == "everyone" then
Jumpscare(4)
end

elseif message:match("-! se (%a+)") then
local target_name = message:match("-! se (%a+)")
local playerfound
for i,v in pairs(game.Players:GetPlayers()) do
if string.sub(v.Name, 1, #target_name):lower() == target_name:lower() then
playerfound = v
break
end
end
if playerfound and playerfound.Name == LP.Name or target_name == "everyone" then
FakeEvilScary()
end
					
				
end
end)
end

if getgenv().trollcmdsactivated == true then
--nothing
else
getgenv().trollcmdsactivated = true
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name == LP.Name or v.Name == "Nexer1234_AnotherAlt" then
v.Chatted:Connect(onChattedTROLLCMDS)
end
end
game:GetService("Players").PlayerAdded:Connect(function(v)
if v.Name == LP.Name or v.Name == "Nexer1234_AnotherAlt" then
v.Chatted:Connect(onChattedTROLLCMDS)
end
end)
end

function getping()
    return math.round(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
end

function getexecutor()
    local ex = identifyexecutor()
    if ex == "NX" then
       ex = "Luna"
    end
    return ex
end

function getwebhook()
    local webhook = loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/OpenSourceScripts/refs/heads/main/Forsaken/Http/Webhook.dll'))()
    return webhook
end

function getdevice()
    local dev = "Unknown"
    local dev_choosen = false
    if game:GetService("UserInputService").KeyboardEnabled and dev_choosen ~= true then
        dev = "PC"
        dev_choosen = true
    elseif game:GetService("UserInputService").GamepadEnabled and dev_choosen ~= true then
        dev = "Gamepad"
        dev_choosen = true
    elseif game:GetService("UserInputService").TouchEnabled and dev_choosen ~= true then
        dev = "Mobile"
        dev_choosen = true
    end
    return dev
end

-- Credits to @shmasocoolio from scriptblox! (https://www.scriptblox.com/u/shmasocoolio)

Notify("Success!", "Nexer Hub:DOD Loaded!", 4, true)

if getgenv().loadedflip_dod == true then

-- Yes, i do receive message that you executed my script, only because i join y'all sometimes!
pcall(function()
req = request or http_request or HttpPost or (syn and syn.request) or (http and http.request) or (fluxus and fluxus.request) or (game and game.HttpPost) or (KRNL and KRNL.request) or (Xeno and Xeno.request) or (roblox and roblox.request) or (rbx and rbx.request)
if req then
local data = {
    ["username"] = "Execution Bot",
    ["avatar_url"] = "https://i.imgur.com/a/SbPHgnH",
    ["content"] = "@everyone "..LP.Name.." executed DoD Nexer Hub YIPEEE",
    ["embeds"] = {
       {
           ["title"] = "General Info",
           ["description"] = "Username: "..LP.Name..". Device: "..getdevice()..". Ping: "..getping()..". Executor: "..getexecutor()..". Roblox Profile: [Click](https://www.roblox.com/users/"..LP.UserId.."/profile)",    
           ["type"] = "rich",
           ["color"] = 1000000,
           ["footer"] = {
             ["text"] = ""..game.JobId.."",
           },
       },
   }
}
local url = getwebhook()
local datab = game:GetService("HttpService"):JSONEncode(data)
local head = {
    ["content-type"] = "application/json"
}
req({Url = url, Body = datab, Method = "POST", Headers = head})
end
end)

return nil
end

if not getgenv().loadedflip_dod then
getgenv().loadedflip_dod = true
local sausageHolder = game.CoreGui.TopBarApp.TopBarApp.UnibarLeftFrame.UnibarMenu["2"]
local originalSize = sausageHolder.Size.X.Offset
local sSize = UDim2.new(0, originalSize + 48, 0, sausageHolder.Size.Y.Offset)

local buttonFrame = Instance.new("Frame", sausageHolder)
		buttonFrame.Size = UDim2.new(0, 48, 0, 44)
		buttonFrame.BackgroundTransparency = 1
		buttonFrame.BorderSizePixel = 0
		buttonFrame.Position = UDim2.new(0, sausageHolder.Size.X.Offset - 48, 0, 0)
local imageButton = Instance.new("ImageButton", buttonFrame)
		imageButton.BackgroundTransparency = 1
		imageButton.BorderSizePixel = 0
		imageButton.Size = UDim2.new(0, 36, 0, 36)
		imageButton.AnchorPoint = Vector2.new(0.5, 0.5)
		imageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
		imageButton.Image = "rbxthumb://type=Asset&id=2714338264&w=150&h=150"
function FortniteFlips()
		if FlipCooldown then
			return
		end

		FlipCooldown = true
		local character = game:GetService("Players").LocalPlayer.Character
		local hrp = character and character:FindFirstChild("HumanoidRootPart")
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		local animator = humanoid and humanoid:FindFirstChildOfClass("Animator")
		if not hrp or not humanoid then
			FlipCooldown = false
			return
		end

		local savedTracks = {}

		if animator then
			for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
				savedTracks[#savedTracks + 1] = { track = track, time = track.TimePosition }
				track:Stop(0)
			end
		end

		humanoid:ChangeState(Enum.HumanoidStateType.Physics)
		humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
		humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
		humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
		humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
		humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)

		local duration = 0.45
		local steps = 120
		local startCFrame = hrp.CFrame
		local forwardVector = startCFrame.LookVector
		local upVector = Vector3.new(0, 1, 0)
		task.spawn(function()
			local startTime = tick()
			for i = 1, steps do
				local t = i / steps
				local height = 4 * (t - t ^ 2) * 10
				local nextPos = startCFrame.Position + forwardVector * (35 * t) + upVector * height
				local rotation = startCFrame.Rotation * CFrame.Angles(-math.rad(i * (360 / steps)), 0, 0)

				hrp.CFrame = CFrame.new(nextPos) * rotation
				local elapsedTime = tick() - startTime
				local expectedTime = (duration / steps) * i
				local waitTime = expectedTime - elapsedTime
				if waitTime > 0 then
					task.wait(waitTime)
				end
			end

			hrp.CFrame = CFrame.new(startCFrame.Position + forwardVector * 35) * startCFrame.Rotation
			humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
			humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
			humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
			humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
			humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
			humanoid:ChangeState(Enum.HumanoidStateType.Running)

			if animator then
				for _, data in ipairs(savedTracks) do
					local track = data.track
					track:Play()
					track.TimePosition = data.time
				end
			end
			task.wait(0.25)
			FlipCooldown = false
		end)
	end

imageButton.Activated:Connect(FortniteFlips)

sausageHolder.Size = sSize
buttonFrame.Position = UDim2.new(0, sausageHolder.Size.X.Offset - 48, 0, 0)

-- Yes, i do receive message that you executed my script, only because i join y'all sometimes!
pcall(function()
req = request or http_request or HttpPost or (syn and syn.request) or (http and http.request) or (fluxus and fluxus.request) or (game and game.HttpPost) or (KRNL and KRNL.request) or (Xeno and Xeno.request) or (roblox and roblox.request) or (rbx and rbx.request)
if req then
local data = {
    ["username"] = "Execution Bot",
    ["avatar_url"] = "https://i.imgur.com/a/SbPHgnH",
    ["content"] = "@everyone "..LP.Name.." executed DoD Nexer Hub YIPEEE",
    ["embeds"] = {
       {
           ["title"] = "General Info",
           ["description"] = "Username: "..LP.Name..". Device: "..getdevice()..". Ping: "..getping()..". Executor: "..getexecutor()..". Roblox Profile: [Click](https://www.roblox.com/users/"..LP.UserId.."/profile)",    
           ["type"] = "rich",
           ["color"] = 1000000,
           ["footer"] = {
             ["text"] = ""..game.JobId.."",
           },
       },
   }
}
local url = getwebhook()
local datab = game:GetService("HttpService"):JSONEncode(data)
local head = {
    ["content-type"] = "application/json"
}
req({Url = url, Body = datab, Method = "POST", Headers = head})
end
end)

task.delay(0, function()
task.spawn(function()
while task.wait(0.0003) do
sausageHolder.Size = sSize
buttonFrame.Position = UDim2.new(0, sausageHolder.Size.X.Offset - 48, 0, 0)
end
end)
end)

end
end)
if not ScriptLaunched then
print(ScriptError)
warn(ScriptError)
error(ScriptError)
end
