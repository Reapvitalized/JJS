
function info(txt,dly)
if dly == nil then dly = 2 end
spawn(function() 
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Credits = Instance.new("TextLabel")
pcall(function() game.CoreGui.Revit:Destroy() end)
task.wait(.1)
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.Name = 'Revit'
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)


spawn(function()
Credits.Parent = ScreenGui
Credits.Font=Enum.Font.Arcade
Credits.TextColor3=Color3.new(1,1,1)
Credits.Position = UDim2.new(0,0,0,0)
Credits.TextSize = 35
Credits.Size = UDim2.new(1,0,.1,0)
Credits.Text = ''
Credits.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Credits.BorderColor3 = Color3.fromRGB(255, 0, 0)
end)
function tw(var,s)
local a = ""
local s_l = #s
for i = 1, s_l do
local c = string.sub(s, i, i)
a = a .. c
var.Text = a
if c == "." then
task.wait(.6)
elseif c == ";" then
task.wait(.3)
elseif c == "," then
task.wait(.3)
elseif c == "!" then
task.wait(.3)
end
task.wait(.03)
end
end
tw(Credits,txt)
task.wait(dly)
ScreenGui:Destroy()
end)
end
--AUDIO FUNCTION
getgenv().ChatText = true 

makefolder('JJS')
function GetAudio(audioname)
local result
local success, response = pcall(function()
result = readfile('JJS/'..audioname..".mp3")
end)
if success then

else
info('Downloading '..audioname..'.mp3')
local filep = game:HttpGet('https://github.com/Reapvitalized/AllAssetsForRecent/raw/refs/heads/main/'..audioname..'.mp3')
writefile('JJS/'..audioname..".mp3",filep)
end
end
local tabaudio = {'Lindwurm'}

for i = 1,#tabaudio do 
GetAudio(tabaudio[i])
end 
InPhase2 = false
function _G.SetMusic(num,vol,tpos)
local hs = game.CoreGui.HeadsetDisconnectedDialog
local parts = hs:GetDescendants()
for i, part in ipairs(parts) do
if part:IsA('Sound') then
part.Volume = 0 end end
if tpos == nil then tpos = 0 end
if vol == nil then vol = 1 end
hs[num]:Play()
hs[num].Volume = vol
hs[num].TimePosition = tpos
getgenv().music = hs[num]

end
local parts = game.CoreGui.HeadsetDisconnectedDialog:GetDescendants()
for i, part in ipairs(parts) do
if part:IsA('Sound') then
part:Destroy() 
end end

for i = 1,#tabaudio do
local s= Instance.new('Sound')
s.SoundId = getcustomasset('JJS/'..tabaudio[i]..'.mp3')
s.Parent = game.CoreGui.HeadsetDisconnectedDialog
s.Volume = 0
s.Looped = true
s.Name = i
end
_G.SetMusic(1,1)
spawn(function()
getgenv().Loop = true
task.wait(.5)
getgenv().Loop = false
end)
function _G.PS(ID,vol,tpos,sp)
local s = Instance.new('Sound')
task.delay(15,function()
s:Destroy() 
end)
if sp == nil then sp = 1 end
if tpos == nil then 
s.TimePosition = 0
else 
s.TimePosition = tpos end
s.SoundId = 'rbxassetid://'..ID
s.Volume = vol
s.PlaybackSpeed = sp
s.Parent = game.CoreGui.HeadsetDisconnectedDialog
s:Play()
end

local Lighting = game:GetService("Lighting")
pcall(function()
for i = 1,6 do 
Lighting:FindFirstChildWhichIsA('Atmosphere'):Destroy()
Lighting:FindFirstChildWhichIsA('BloomEffect'):Destroy() end end)
Lighting.ClockTime = 0
Lighting.Ambient = Color3.fromRGB(108, 124, 144)
Lighting.Brightness = 2.25
Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
Lighting.ColorShift_Top = Color3.fromRGB(215,190,135)
Lighting.EnvironmentDiffuseScale = 0.2
Lighting.EnvironmentSpecularScale = 0.2
Lighting.GlobalShadows = true
Lighting.OutdoorAmbient = Color3.fromRGB(106, 106, 106)
Lighting.ShadowSoftness = 0.2
Lighting.ExposureCompensation = .2
pcall(function() sethiddenproperty(Lighting, "Technology", "ShadowMap")
 end)
local Atmosphere = Instance.new("Atmosphere", Lighting)

Atmosphere.Density = 0.2;
Atmosphere.Offset = 0.5559999942779541;
Atmosphere.Color = Color3.new(1/2, 0.686275/2, 0.65098/2);
Atmosphere.Glare = 0.36000001430511475;
Atmosphere.Haze = 1.7200000286102295;
Atmosphere.Decay = Color3.new(0, 0, 0);

local Bloom  = Instance.new("BloomEffect", Lighting)

Bloom.Threshold = 0.500000011920929;
Bloom.Intensity = 0.30000001192092896;
Bloom.Size = 10;
Bloom.Name = 'BLOOMM'

local RService = game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Knit"):WaitForChild("Services")
local RE = game:GetService("ReplicatedStorage").Knit.Knit.Services.ChosoService.RE
pcall(function() game.ReplicatedStorage.Utils.Lindwurm:Destroy() end)
local e = game:GetObjects('rbxassetid://129742625273769')[1]
e.Parent = game.ReplicatedStorage.Utils e.Name = 'Lindwurm'

pcall(function() game.CoreGui.Rain:Destroy() end)
if getgenv().Rain == true then
local s=Instance.new'Sound';
s.Parent=game.CoreGui;
s.SoundId='rbxassetid://5911952995';
s.Pitch=.3;
s.Volume=3.8;
s.Looped=true;
s:play();
s.Name = 'Rain'


spawn(function()
local lp = game.Players.LocalPlayer
local char = lp.Character
local hrp = char.HumanoidRootPart
local bp =lp.Backpack 
task.wait(.5)
for i = 1,9999999 do if getgenv().Loop == true then break end
spawn(function()
local rnd = math.random(45,155)
local v = Instance.new('Part')
v.CFrame = CFrame.new(
hrp.CFrame.X+math.random(-45,45), 
20+rnd, 
hrp.CFrame.Z+math.random(-45,45))

v.Material=Enum.Material.Neon;v.Color=Color3.new(.5, .5 , 1)
game:GetService("Debris"):AddItem(v,3.7)
v.Size=Vector3.new(1,1,1)
v.Parent = workspace.Effects
v.CanCollide = false 
v.Anchored=true
local msh2 = Instance.new("SpecialMesh",v)
msh2.MeshType = "Sphere"
msh2.Scale = Vector3.new(.5,1,.5)
local tw = game.TweenService:Create(v,TweenInfo.new(.7,Enum.EasingStyle.Back),{CFrame = v.CFrame*CFrame.new(0,-rnd,0)});tw:Play()
game.TweenService:Create(msh2,TweenInfo.new(.2),
{Scale = Vector3.new(.1,2,.1)}):Play()
task.wait(.25)
tw:Pause() 
msh2.Scale = Vector3.new(.5,.2,.5)
local an = math.random(1,5)
v.CFrame = CFrame.new(
v.CFrame.X, 
20.3, 
v.CFrame.Z)
local pain = 1.7+math.random(-45,15)/35
game.TweenService:Create(msh2,TweenInfo.new(pain),{Scale=
Vector3.new(2+an,1,2+an)}):Play()
game.TweenService:Create(v,TweenInfo.new(pain),{Transparency = 1}):Play()


for i = 1,math.random(2,4) do 
local e = Instance.new('Part')
e.CFrame = v.CFrame*CFrame.Angles(math.rad(math.random(-75,75)),0,0)
e.Material=Enum.Material.Neon;e.Color=Color3.new(.5, .5 , 1)
game:GetService("Debris"):AddItem(e,.2)
e.Size=Vector3.new(.5,.5,.5)
e.Parent = workspace.Effects
e.CanCollide = false 
e.Anchored=true

local msh2 = Instance.new("SpecialMesh",e)
msh2.MeshType = "Sphere"
msh2.Scale = Vector3.new(1,1,1)
game.TweenService:Create(e,TweenInfo.new(.2),
{CFrame = e.CFrame*CFrame.new(0,3,0),Transparency = 1}):Play()
game.TweenService:Create(msh2,TweenInfo.new(.2),
{Scale = Vector3.new(.1,2,.1)}):Play()
for i = 1,math.random(2,4) do 
local r = Instance.new('Part')
r.CFrame = e.CFrame*CFrame.Angles(e.Rotation.X+math.rad(35),e.Rotation.Y,e.Rotation.Z)
r.Material=Enum.Material.Neon;r.Color=Color3.new(.5, .5 , 1)
game:GetService("Debris"):AddItem(r,.5)
r.Size=Vector3.new(.5,.5,.5)
r.Parent = workspace.Effects
r.CanCollide = false 
r.Anchored=true

local msh2 = Instance.new("SpecialMesh",r)
msh2.MeshType = "Sphere"
msh2.Scale = Vector3.new(1,1,1)
game.TweenService:Create(r,TweenInfo.new(.5),
{CFrame = e.CFrame*CFrame.new(math.random(-3,3),-3,math.random(-3,3)),Transparency = 1}):Play()
game.TweenService:Create(msh2,TweenInfo.new(.5),
{Scale = Vector3.new(.1,2,.1)}):Play()
end

end
end)
task.wait(.1+math.random(-5,5)/77)
end
end)
end
function MainEnv()

local lp = game.Players.LocalPlayer
local char = lp.Character
local hrp = char.HumanoidRootPart
local bp =lp.Backpack 
pcall(function() char.VFX:Destroy() end)
local f = Instance.new('Folder',char) f.Name = 'VFX'
local a = e.FacelessDagger:Clone() 
a.Parent = f
a.FacelessDagger.Part0 = char['Right Arm']

local v = e.RedEyes:Clone() 
v.Parent = f
v.CanCollide = false
v.CFrame = hrp.CFrame
local weld = Instance.new("Weld")
weld.Parent = char.Head
weld.Part0 = v
weld.Part1 = char.Head

local v = e.MetalArm:Clone() 
v.Parent = f
v.CanCollide = false
local weld = Instance.new("Weld")
weld.Parent = char['Right Arm']
weld.Part0 = v
weld.Part1 = char['Right Arm']
local v = e.MetalArmPlate:Clone() 
v.Parent = f
v.CanCollide = false
local weld = Instance.new("Weld")
weld.Parent = char.Torso
weld.Part0 = v
weld.Part1 = char.Torso

function Skill(part,dly)
local v = e.BaneEffect:Clone()
v.Parent = part 
v.LockedToPart = false 
v.Lifetime = NumberRange.new(.5)
task.delay(dly,function() 
v.Rate = 0
task.wait(1.5)
v:Destroy() end)
end
function _G.Use(Name)
if Name == 'Front Dash' then
RE.Chase:FireServer()
return end
local args = {
    [1] = false
}

RService[Name..'Service'].RE.Activated:FireServer(unpack(args))
end
function _G.PS(ID,vol,tpos,sp)
local s = Instance.new('Sound')
task.delay(25,function()
s:Destroy() 
end)
if sp == nil then sp = 1 end
if tpos == nil then 
s.TimePosition = 0
else 
s.TimePosition = tpos end
s.SoundId = 'rbxassetid://'..ID
s.Volume = vol
s.PlaybackSpeed = sp
s.Parent = game.CoreGui.HeadsetDisconnectedDialog
s:Play()
end

function randomstring()
	local e = {}
	for i = 1,math.random(140,180) do
		table.insert(e,#e+1,utf8.char(math.random(1111,1112)))
	end
	return table.concat(e)
end
getgenv().connections = getgenv().connections or {}

local function DestroySignals()
    for i,v in pairs(getgenv().connections) do
        if typeof(v) == "RBXScriptConnection" then
					warn('\nDUPLICATE FOUND!\nDisconnected! '..i)
            v:Disconnect()
        end
    end
end
local function SetupSignals()
    if getgenv().connections then
        DestroySignals()
    else
        getgenv().connections = {}
    end
end
SetupSignals()
getgenv().connections = nil 
getgenv().connections = getgenv().connections or {}
local function AddSignal(connection, name)
local str = randomstring()
warn('CONNECTION ADDED! '..name..'\nUNIQUE CONNECTION ID: '..str)
if getgenv().connections then
getgenv().connections[name..str or #getgenv().connections + 1] = connection
return connection
end
end
pcall(function() workspace.Logic.SG_Clone:Destroy() end)

local parts = game:GetService("ReplicatedStorage").Utils.Choso:GetDescendants()
for i, part in ipairs(parts) do
if part:IsA('ParticleEmitter') or part:IsA('Beam')  or part:IsA('Trail')  then
part.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, 
Color3.fromRGB(155, 155, 255)), ColorSequenceKeypoint.new(1.00,
Color3.fromRGB(0, 0, 255))}
elseif part:IsA('Part') or part:IsA('UnionOperation')  then 
part.Color = Color3.new(.5,.5,1)
end end
fchar = char:Clone() 
fchar.Name = 'SG_Clone'
fchar.Parent = workspace.Logic
_G.Clone = fchar
local fhrp = fchar.HumanoidRootPart
local parts = fchar:GetDescendants()
for i, part in ipairs(parts) do
if part:IsA('BasePart') then
part.CollisionGroup = "NoCollision"
end end
fhrp.Anchored=true
fhrp.CFrame=CFrame.new(0,10^10,0)
AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://127171275866632" then

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://127374795448558"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play(.3)
k.Priority = Enum.AnimationPriority.Action2
k:AdjustSpeed(2.5)
spawn(function()
local c = nil
local dist = math.huge
for _, part in pairs(workspace.Characters:GetChildren()) do
if part:IsA("Model") and part:FindFirstChild("HumanoidRootPart") and part ~= char then
local otherRoot = part.HumanoidRootPart
local distance = (otherRoot.Position - hrp.Position).Magnitude
if distance < dist then dist = distance c = otherRoot end end end
local done = false 


for _,v in pairs(fchar:GetDescendants()) do 
if v:IsA('BasePart') or v:IsA('Decal') or v:IsA('MeshPart') then
task.spawn(function()
if v.Name:match('Hitbox') then return end
if v.Name:match('HumanoidR') then return end
if v.Parent.Name == '#NinjaKATANA' then return end
if v.Name:match('Sh') then return end
local pt = v.Transparency 
v.Transparency = 1
spawn(function()
local he = .1
for i = 1,35 do he=he-.02
v.Transparency = 1
task.wait(he)
v.Transparency = 0
task.wait(he)
end
v.Transparency = pt end)
end) end end
spawn(function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://127374795448558"
local k = fchar.Humanoid:LoadAnimation(Anim)
k:Play(.3)
k.Priority = Enum.AnimationPriority.Action2
k:AdjustSpeed(2.5)
task.wait(1)
k:AdjustSpeed(1)
spawn(function()
for i = 1,155 do if done == true then return end
k.TimePosition = 2.5+i/200

task.wait() end
k:AdjustSpeed(.5)
for i = 1,999 do if done == true then return end
k.TimePosition = 3.5+math.random(-15,15)/255
task.wait() end

end)
v.Stopped:Wait()  done = true
k:Stop(.4)

end)
local v = Instance.new('Part')
v.CFrame = hrp.CFrame*CFrame.new(0,2,0)
workspace.CurrentCamera.CameraSubject = v
fhrp.CFrame = hrp.CFrame
workspace.Gravity=0
repeat task.wait()
hrp.CFrame=c.CFrame*CFrame.new(0,15,2)*
CFrame.Angles(math.rad(-90),0,0)
until done == true 
workspace.Gravity=196.2
v:Destroy()
workspace.CurrentCamera.CameraSubject = char
hrp.CFrame = c.CFrame
hrp.Transparency = 1
end)
task.wait(1)
k:AdjustSpeed(1)
local done = false 
spawn(function()
for i = 1,155 do if done == true then return end
k.TimePosition = 2.5+i/200

task.wait() end
k:AdjustSpeed(.5)
for i = 1,999 do if done == true then return end
k.TimePosition = 3.5+math.random(-15,15)/255
task.wait() end

end)
v.Stopped:Wait()  done = true
k:Stop(.4)
local bv = Instance.new('BodyVelocity')
bv.MaxForce=Vector3.new(10^10,10^10,10^10)
bv.Parent = hrp
spawn(function()
for i = 1,150 do 
bv.Velocity=Vector3.new(0,15,0)+hrp.CFrame.LookVector*50
task.wait(.01) end end)
task.delay(.2,function() bv:Destroy() end)
fhrp.CFrame=CFrame.new(0,10^10,0)
end end), "Move1")
pcall(function() lp.PlayerGui.Main.Moveset['Self Sacrifice']:Destroy() end)
local ye = nil
if getgenv().Move5 == true then
ye = lp.PlayerGui.Main.Moveset["Blood Edge"]:Clone()
ye.Parent = lp.PlayerGui.Main.Moveset
ye.Name = 'Self Sacrifice'
local v = Instance.new('StringValue',ye)
v.Name = 'InCooldown'
v.Value = 'false'
local CD = v
ye.Key.Text = '5'
ye.ItemName.Text = 'Self Sacrifice'
ye.Tip.Text = 'SPECIAL'
ye.Tip.Visible = true
ye.Cooldown.Size = UDim2.new(1,0,1,0)
ye.Cooldown.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, 
Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00,
Color3.fromRGB(0, 0, 0))}
ye.Cooldown.BackgroundColor3=Color3.new(.3,0,0)
local uis = game:GetService("UserInputService")
function Five()
if CD.Value == 'false' then 
CD.Value = 'true'
ye.Tip.Text = 'ACTIVATED'
for i = 1,550 do 
pcall(function()
local args = {
    [1] = {
        [1] = game.Players.LocalPlayer.Character,
        [2] = workspace
    },
    [2] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("RemoteEvent"):FireServer(unpack(args))
end)
task.wait(.01) end
end
end
AddSignal(uis.InputBegan:Connect(function(inputs, event)
if event == true then return end
if inputs.KeyCode == Enum.KeyCode.Five then
spawn(function() Five() end)

end
end), "Move5 (Keybind)")
AddSignal(ye.ItemName.MouseButton1Click:Connect(function()
spawn(function() Five() end)
end), "Move5 (Tap)")
end
local alractive = false 
local alractivee = false 
local countr = 0
AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://85569553424083" then
if char.Humanoid.FloorMaterial == Enum.Material.Air then
countr=countr+1
alractivee = true
if alractive == true then 

v2 = Instance.new('BodyGyro',char.HumanoidRootPart) 
v2.Name = 'Client' 
v2.MaxTorque = Vector3.new(1,1,1)*10^10
v2.D = 100 
v2.P = 19500
v2.CFrame = char.HumanoidRootPart.CFrame*CFrame.Angles(math.rad(-100),math.rad(0),math.rad(0))
task.wait(.4)
v2:Destroy()
end 
if alractive == false then 
local bv = Instance.new('BodyVelocity')
bv.Parent = hrp 
bv.MaxForce=Vector3.new(10^10,10^10,10^10)
bv.Velocity=Vector3.new(0,45,0)+hrp.CFrame.LookVector*5


v2 = Instance.new('BodyGyro',char.HumanoidRootPart) 
v2.Name = 'Client' 
v2.MaxTorque = Vector3.new(1,1,1)*10^10
v2.D = 100 
v2.P = 19500
v2.CFrame = char.HumanoidRootPart.CFrame*CFrame.Angles(math.rad(-100),math.rad(0),math.rad(0))
task.wait(.4)
v2:Destroy()
bv.MaxForce=Vector3.new(0,10^10,0)
bv.Velocity=Vector3.new(0,.2,0)
end
alractive = true 


local p = Instance.new('Part')
p.Parent = char.SetAssets 
p.Material = Enum.Material.Neon 
p.Size=Vector3.new(1,1,1)
p.Anchored=true p.CanCollide=false
local msh2 = Instance.new("SpecialMesh",p)
msh2.MeshType = "Sphere"
p.Color=Color3.new(0,0,1)
msh2.Scale = Vector3.new(3,1,1)

game:GetService("Debris"):AddItem(p, 5)
alractivee = false
local ULT = game:GetService("Players").LocalPlayer.PlayerGui.Main.Ultimate
for i =1,5 do 
_G.PS(7455246815,6)
spawn(function()
for i = 1,30 do 
p.CFrame = hrp.CFrame*CFrame.new(0,-18,0)
*CFrame.Angles(

	math.random(-360,360),
		math.random(-360,360),
			math.random(-360,360)

)
task.wait(.1/3) end end)
ULT.Bar.Ready.Ready.Text = tostring(6-i)
for i = 1,30 do 
if alractivee == true then 
print('just')
return end
task.wait(1/30)
end

end
_G.PS(7455246815,6)

alractive = false
ULT.Bar.Ready.Ready.Text = 'PRESS G TO START LINDWURMING IT'
hrp:FindFirstChildWhichIsA('BodyVelocity',1):Destroy()
for i = 1,countr do 
local args = {
    [1] = true
}

RService['ChosoService'].RE.RightActivated:FireServer(unpack(args))
end 
countr = 0

end end end), "Move3 (Air Variant)")
AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://100446064103831" then
if char.Humanoid.FloorMaterial == Enum.Material.Air then

local bv = Instance.new('BodyVelocity')
bv.Parent = hrp 
bv.MaxForce=Vector3.new(0,10^10,0)
bv.Velocity=Vector3.new(0,150,0)+hrp.CFrame.LookVector*35

task.wait(.4)
bv:Destroy()
return end


spawn(function()
ye.Cooldown.Size = UDim2.new(1,0,0,0)

game:GetService("TweenService"):Create(ye.Cooldown,
TweenInfo.new(1.5,Enum.EasingStyle.Linear),{


	Size = UDim2.new(1,0,1,0)
}):Play()

ye.Cooldown.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, 
Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00,
Color3.fromRGB(0, 0, 255))}
ye.Tip.Text = 'USE NOW'
CD.Value = 'false'
task.wait(1.5)
ye.Cooldown.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, 
Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00,
Color3.fromRGB(0, 0, 0))}
ye.Cooldown.Size = UDim2.new(1,0,1,0)
ye.Tip.Text = 'SPECIAL'
CD.Value = 'true'
end)


for i = 1,15 do 
task.wait(.1) end
if v.IsPlaying == true and k.TimePosition <= 1 then 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://108306129256457"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play(.3)
k.Priority = Enum.AnimationPriority.Action2
k:AdjustSpeed(.5)
local bv = Instance.new('BodyVelocity')
bv.Parent = hrp 
bv.MaxForce=Vector3.new(10^10,0,10^10)
spawn(function()
for i= 1,155 do 
local e = 25+i
bv.Velocity = hrp.CFrame.LookVector*e
task.wait(.03)
end end)
task.wait(3)
k:Stop(.4)
bv:Destroy()
game.TweenService:Create(hrp,TweenInfo.new(.1),{CFrame = 
CFrame.lookAt(hrp.Position, CFrame.new(-10, 155, -344).p) }):Play()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://139937896533570"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play(.3)
k.Priority = Enum.AnimationPriority.Action2
k:AdjustSpeed(1)
_G.PS(7094593247,1,.2,.1)
_G.PS(7455246815,2)
_G.PS(7455246815,2,0,.1)
_G.PS(5563980633,2)
_G.PS(7094593247,1,.2,.5)
_G.PS(418302853,.2,.2,1.5)
task.delay(.5,function()
_G.PS(5563980633,2,0,.2)
task.wait(.7)
_G.PS(7455246815,5)
_G.PS(9058297482,5,0,3)
_G.PS(7455246815,5)
end)
task.wait(1.2)
k:AdjustSpeed(.04)
k.TimePosition = 1.4
local bv = Instance.new('BodyPosition')
bv.Parent = hrp 
bv.D = 100 
bv.P = 195
local pcf = hrp.CFrame
spawn(function()
for i = 1,355 do 
game.TweenService:Create(hrp,TweenInfo.new(.1),{CFrame = 
CFrame.lookAt(hrp.Position, CFrame.new(-10, 155+i, -344+-i*2).p) }):Play()

bv.Position = CFrame.new(-10, 155+i, -344+-i*2).p
task.wait(.01) end end)
bv.MaxForce=Vector3.new(9e9,9e9,9e9)
task.wait(5)
workspace.Gravity = 0
k:AdjustSpeed(1)
task.wait(1)
k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://121718733604230"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play(.3)
k.Priority = Enum.AnimationPriority.Action2
k:AdjustSpeed(1)
bv.P = 595
_G.PS(7455246815,2)
_G.PS(7455246815,2,0,.1)
_G.PS(5563980633,2)
_G.PS(7094593247,1,.2,.5)
_G.PS(418302853,.2,.2,1.5)
task.delay(.5,function()
_G.PS(5563980633,2,0,2)
task.wait(.8)
_G.PS(7455246815,2)
_G.PS(7455246815,2,0,.1)
_G.PS(5563980633,2)
_G.PS(7094593247,2,.2,1.5)
_G.PS(418302853,2,.2,1.5)
end)

task.wait(1.2)
_G.PS(1691468753,2,0,.25)
_G.PS(1691468753,2,0,.2)
local e = 0
for i = 1,250 do e=e+1
local p = Instance.new('Part')
p.Parent = char.SetAssets 
p.Material = Enum.Material.Neon 
p.Size=Vector3.new(1,1,1)
p.Anchored=true p.CanCollide=false

local msh2 = Instance.new("SpecialMesh",p)
msh2.MeshType = "Sphere"
if e >= 15 then e = 0 end
if e >= 10 then 
p.Color=Color3.new(1,0,1)
elseif e >= 5 then
p.Color=Color3.new(1,1,0)
else 

p.Color=Color3.new(0,0,1)
end
msh2.Scale = Vector3.new(0,15,0)
game.TweenService:Create(msh2,TweenInfo.new(9),
{Scale=Vector3.new(1,100,1)}):Play()
p.CFrame = CFrame.new(hrp.CFrame.X+.3,hrp.CFrame.Y+9+i/5,hrp.CFrame.Z)*
CFrame.Angles(0,i,0)
game:GetService("Debris"):AddItem(p, 26)
spawn(function()
game.TweenService:Create(p,TweenInfo.new(1),
{CFrame = p.CFrame*CFrame.new(i/15,-i*3,0)}):Play()
task.wait(.7)
local ok = p.CFrame
workspace.CurrentCamera.CameraType = 'Scriptable'
for e = 1,255 do
if i == 1 then 
workspace.CurrentCamera.CFrame = CFrame.new(hrp.CFrame.X,-4+hrp.CFrame.Y,hrp.CFrame.Z)*
CFrame.Angles(math.rad(-90),0,0)
end
game.TweenService:Create(p,TweenInfo.new(.3),{CFrame =
ok*CFrame.Angles(0,0,e/15)*CFrame.new(math.cos(e/15)*15,0,math.sin(e/15)*15)}):Play()

task.wait(.01) end
end)
end
task.wait(4)
 bv:Destroy()
workspace.Gravity = 15.2
task.wait(5)
workspace.Gravity = 198.2
end


end end), "Move4")
pcall(function() lp.PlayerGui.Main.Moveset['Disortion']:Destroy() end)
if getgenv().Move6 == true then 
local ye = lp.PlayerGui.Main.Moveset["Blood Edge"]:Clone()
ye.Parent = lp.PlayerGui.Main.Moveset
ye.Name = 'Disortion'
local v = Instance.new('StringValue',ye)
v.Name = 'InCooldown'
v.Value = 'false'
local CD = v
ye.Key.Text = '6'
ye.ItemName.Text = 'Disortion'
ye.Tip.Text = 'CLOSE RANGE'
ye.Tip.Visible = true
ye.Cooldown.Size = UDim2.new(1,0,0,0)
ye.Cooldown.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, 
Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00,
Color3.fromRGB(0, 0, 0))}
ye.Cooldown.BackgroundColor3=Color3.new(.3,0,0)

local uis = game:GetService("UserInputService")
function Six()
if char.Info:FindFirstChild('Stun') or char.Info:FindFirstChild('InSkill') then return end
if CD.Value == 'false' then 
warn('go')
ye.Cooldown.Size = UDim2.new(1,0,0,0)
game:GetService("TweenService"):Create(ye.Cooldown,TweenInfo.new(8.2,Enum.EasingStyle.Linear),{
Size = UDim2.new(1,0,1,0)
}):Play() task.delay(8.2,function()
CD.Value = 'false'
end)
local lol = hrp.ChildAdded:Connect(function(pp)
if pp:IsA('BodyVelocity') then 
pp.MaxForce=Vector3.new(0,0,0)
end end)
task.delay(1.5,function()
lol:Disconnect() end)
local parts = workspace.Characters:GetChildren()
for i, part in ipairs(parts) do
if part:IsA('Model') and part ~= char then
part.HumanoidRootPart.Size=Vector3.new(55,55,55)
task.delay(3,function() part.HumanoidRootPart.Size=Vector3.new(2,2,2)
end) end end
_G.Use('Front Dash')
end
end
AddSignal(uis.InputBegan:Connect(function(inputs, event)
if event == true then return end
if inputs.KeyCode == Enum.KeyCode.Six then
spawn(function() Six() end)

end
end), "Move6 (Keybind)")
AddSignal(ye.ItemName.MouseButton1Click:Connect(function()
spawn(function() Six() end)
end), "Move6 (Tap)") end
local CD = Instance.new('StringValue')
CD.Value = 'false'
AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://110978068388232" then
CD.Value = 'true'
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://17818077320"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play(.3)
k.Priority = Enum.AnimationPriority.Action3
k:AdjustSpeed(0)
spawn(function()
while v.IsPlaying do 
k.TimePosition = .2+v.TimePosition/3
task.wait(.01) end 
k:Stop(.5)
end)
ye.Cooldown.Size = UDim2.new(1,0,1,0)
game:GetService("TweenService"):Create(ye.Cooldown,TweenInfo.new(6,Enum.EasingStyle.Linear),{
Size = UDim2.new(1,0,0,0)
}):Play() task.delay(6,function()
CD.Value = 'false'
end)
if CD.Value == 'true' then
v:Stop() 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://17588165564"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play(.3)
k.Priority = Enum.AnimationPriority.Action2
k:AdjustSpeed(1)
k.TimePosition = 7
local c = nil
for i = 1,15 do 
local dist = 45
for _, part in pairs(workspace.Characters:GetChildren()) do
if part:IsA("Model") and part:FindFirstChild("HumanoidRootPart") and part ~= char then
local otherRoot = part.HumanoidRootPart
local ok = hrp.CFrame*CFrame.new(0,0,-7)
local distance = (otherRoot.Position - ok.p).Magnitude
if distance < dist then dist = distance c = otherRoot end end end
local done = false 
local v = Instance.new('Highlight')
v.Parent = c.Parent v.FillColor=Color3.new(1,1,1)
game.TweenService:Create(v,TweenInfo.new(.1),{FillColor=Color3.new(.1,0,0)}):Play()
v.OutlineColor=Color3.new(1,0,0)
v.FillTransparency = 0 v.DepthMode = 'Occluded'
task.delay(.1,function() v:Destroy() end)
task.wait(.02)
end
workspace.CurrentCamera.CFrame =  c.CFrame*CFrame.new(0,0,-17)*
CFrame.Angles(-math.rad(40),0,0)
for i = 1,35 do 
hrp.CFrame = c.CFrame*CFrame.new(0,0,(14)+-i/3.5)
task.wait(.01) end
end
end end), "Front Dash Special")

AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://75203303352791" 
or v.Animation.AnimationId == "rbxassetid://117223862448096" 
then

local v = e.FacelessDash:Clone() 
v.Parent = workspace
v.CFrame = hrp.CFrame
local parts = v:GetChildren()
for i, part in ipairs(parts) do
if part:IsA('ParticleEmitter') then
local e = part.Lifetime 
part.Lifetime = NumberRange.new(.5)
part:Emit(15)
task.delay(.1,function()
part.Lifetime = e end)
 end end
for _,v in pairs(char:GetDescendants()) do 
if v:IsA('BasePart') or v:IsA('Decal') or v:IsA('MeshPart') then
task.spawn(function()
if v.Name:match('Hitbox') then return end
if v.Name:match('HumanoidR') then return end
if v.Parent.Name == '#NinjaKATANA' then return end
if v.Name:match('Sh') then return end
local pt = v.Transparency 
v.Transparency = 1
spawn(function()
task.wait(.3)
v.Transparency = pt end)
end)
elseif v:IsA('ParticleEmitter') then 
local prate = v.Rate 
v.Rate = 0
spawn(function()
task.wait(.3)
v.Rate = prate end)
elseif v:IsA('Trail') then 
local prate = v.Transparency 
v.Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(1,1)})
spawn(function()
task.wait(.3)
v.Transparency = prate end)
end end
for i = 1,15 do 
v.CFrame = hrp.CFrame
task.wait(.01)
end
local parts = v:GetChildren()
for i, part in ipairs(parts) do
if part:IsA('ParticleEmitter') then part.Rate = 0 end end
task.wait(.5)
v:Destroy()
end end), "Custom Dash")

AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://134581973800784" 
then

hrp.Velocity=Vector3.new(hrp.Velocity.X*45,hrp.Velocity.Y,hrp.Velocity.Z*45)
task.delay(.1,function()
hrp.Velocity=Vector3.new(0,0,0)
end)
local v = e.FacelessDash:Clone() 
v.Parent = workspace
v.CFrame = hrp.CFrame
local parts = v:GetChildren()
for i, part in ipairs(parts) do
if part:IsA('ParticleEmitter') then
local e = part.Lifetime 
part.Lifetime = NumberRange.new(.5)
part:Emit(15)
task.delay(.1,function()
part.Lifetime = e end)
 end end
for _,v in pairs(char:GetDescendants()) do 
if v:IsA('BasePart') or v:IsA('Decal') or v:IsA('MeshPart') then
task.spawn(function()
if v.Name:match('Hitbox') then return end
if v.Name:match('HumanoidR') then return end
if v.Parent.Name == '#NinjaKATANA' then return end
if v.Name:match('Sh') then return end
local pt = v.Transparency 
v.Transparency = 1
spawn(function()
task.wait(.3)
v.Transparency = pt end)
end)
elseif v:IsA('ParticleEmitter') then 
local prate = v.Rate 
v.Rate = 0
spawn(function()
task.wait(.3)
v.Rate = prate end)
elseif v:IsA('Trail') then 
local prate = v.Transparency 
v.Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(1,1)})
spawn(function()
task.wait(.3)
v.Transparency = prate end)
end end
for i = 1,15 do 
v.CFrame = hrp.CFrame
task.wait(.01)
end
local parts = v:GetChildren()
for i, part in ipairs(parts) do
if part:IsA('ParticleEmitter') then part.Rate = 0 end end
task.wait(.5)
v:Destroy()
end end), "BackDash Special")
AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://84039122607068" then
hrp.CFrame=hrp.CFrame*CFrame.new(0,0,-15)
local hit = false 
for i = 1,150 do
if v.TimePosition >= 2 then hit = true break end
task.wait(.01) end 
if hit == true then 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://140624814858590"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play(.3)
k.Priority = Enum.AnimationPriority.Action2
k:AdjustSpeed(1)

task.wait(1) k:Stop()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://121611940539367"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play(.3)
k.Priority = Enum.AnimationPriority.Action2
k:AdjustSpeed(1.3)
a.FacelessDagger.C1 = CFrame.new(-.8,0,-1)*CFrame.Angles(0,math.rad(-90),0)
Skill(char['Right Arm'],1)
game.TweenService:Create(workspace.CurrentCamera,TweenInfo.new(1),{FieldOfView = 40}):Play()
local e = Instance.new('BlurEffect') e.Parent = game.Lighting 
game.TweenService:Create(e,TweenInfo.new(1),{Size = 15}):Play()
_G.PS('6835350802',1)
_G.PS('6835350802',1,.8,.3)
_G.PS('597948098',1)
task.wait(.7)
_G.PS('3313098116',1,.3)
_G.PS('3245334797',.3,2.5)
workspace.CurrentCamera.FieldOfView = 120
game.TweenService:Create(workspace.CurrentCamera,TweenInfo.new(1),{FieldOfView = 70}):Play()
game.TweenService:Create(e,TweenInfo.new(.3),{Size = 0}):Play()
task.wait(.6)
a.FacelessDagger.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
k:Stop(.6)
task.wait(1)
e:Destroy()
end
end end), "Move2")
pcall(function() lp.PlayerGui.Main.Moveset['SideStep']:Destroy() end)
if getgenv().Move7 == true then
local ye = lp.PlayerGui.Main.Moveset["Blood Edge"]:Clone()
ye.Parent = lp.PlayerGui.Main.Moveset
ye.Name = 'SideStep'
local v = Instance.new('StringValue',ye)
v.Name = 'InCooldown'
v.Value = 'false'
local CD = v
ye.Key.Text = '7'
ye.ItemName.Text = 'SideStep'
ye.Tip.Text = 'TP MOVE'
ye.Tip.Visible = true
ye.Cooldown.Size = UDim2.new(1,0,0,0)
ye.Cooldown.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, 
Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00,
Color3.fromRGB(0, 0, 0))}
ye.Cooldown.BackgroundColor3=Color3.new(.3,0,0)
local uis = game:GetService('UserInputService')
AddSignal(uis.InputBegan:Connect(function(inputs, event)
if event == true then return end
if inputs.KeyCode == Enum.KeyCode.Seven then
spawn(function() Seven() end)

end
end), "Move7 (Keybind)")
AddSignal(ye.ItemName.MouseButton1Click:Connect(function()
spawn(function() Seven() end)
end), "Move7 (Tap)") end
local RB = false 
AddSignal(hrp.ChildAdded:Connect(function(v)
if v.Name == 'BlockHit' and RB == true then 
--BlockHit
_G.PS('3816362502',1,.3)
local r = Instance.new('ColorCorrectionEffect',game.Lighting)
r.Brightness = 1
workspace.CurrentCamera.FieldOfView = 90
local hl = Instance.new("Highlight")
hl.FillColor=Color3.new(1, 1, 0)
hl.FillTransparency = 0
hl.Parent = char
game.TweenService:Create(hl,TweenInfo.new(1),{FillTransparency = 1,OutlineTransparency = 1}):Play() 
game.TweenService:Create(r,TweenInfo.new(1),{Brightness = 0}):Play() 
game.TweenService:Create(workspace.CurrentCamera,TweenInfo.new(1),{FieldOfView = 70}):Play() 
game:GetService("Debris"):AddItem(r,1)
game:GetService("Debris"):AddItem(hl,1)
local HealthBar = Instance.new("BillboardGui")
local Frame = Instance.new("Frame")
local PName = Instance.new("TextLabel")
local Text = Instance.new('Sound', game.CoreGui);
Text.SoundId="rbxassetid://5093601873";Text.Looped=false;
Text.Volume = 5;Text.Name='Text'
pcall(function()
game.Players.LocalPlayer.Character.Head.Text:Destroy()
game.CoreGui.Text:Destroy()
end)
HealthBar.Name = "Text"
HealthBar.Parent = game.Players.LocalPlayer.Character.Head
HealthBar.ExtentsOffset = Vector3.new(0, 1, 0)
HealthBar.Size = UDim2.new(4, 0, 2, 0)
HealthBar.ZIndexBehavior = Enum.ZIndexBehavior.Global
Frame.Parent = HealthBar
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(1, 0, 1, 0)

PName.Name = "PName"
PName.Parent = Frame
PName.BackgroundTransparency = 1
PName.Position = UDim2.new(-1.0919999976, 0, -0.800000012, 0)
PName.Size = UDim2.new(3, 0, 1, 0)
PName.Font = Enum.Font.SciFi
PName.Text = ""
PName.TextColor3 = Color3.new(0,0,0)
PName.TextScaled = true
PName.TextSize = 3
PName.TextStrokeColor3 = Color3.new(1,1,0)
PName.TextStrokeTransparency = 0.000
PName.TextWrapped = true
PName.TextYAlignment = Enum.TextYAlignment.Top
Frame.ZIndex = 15
spawn(function()
for i = 1,60 do 
PName.Rotation = math.tan(i/40)*15
HealthBar.ExtentsOffset = Vector3.new(9+-math.cos(i/45)*12, -9+math.sin(i/15)*13, 0)
task.wait(.01) end
PName.Rotation = 0
 end)
function tw(s)
local a = ""
local s_l = #s
for i = 1, s_l do
Text:Play()
local c = string.sub(s, i, i)
a = a .. c
PName.Text = a
if c == "." then
wait(.6)
elseif c == ";" then
wait(.3)
elseif c == "," then
wait(.3)
elseif c == "!" then
wait(.3)
end
wait(.03)
end end
task.spawn(function() tw('PERFECT BLOCK!') end)
local c = nil
local dist = math.huge
for _, part in pairs(workspace.Characters:GetChildren()) do
if part:IsA("Model") and part:FindFirstChild("HumanoidRootPart") and
 part ~= char then
local otherRoot = part.HumanoidRootPart
local distance = (otherRoot.Position - hrp.Position).Magnitude
if distance < dist then dist = distance
c = otherRoot 
end end end
workspace.CurrentCamera.CFrame = c.CFrame*CFrame.Angles(math.rad(-60),0,0)
for i= 1,15 do 
hrp.CFrame=c.CFrame*CFrame.new(0,0,20)

task.wait(.01) end
_G.Use('RedScale')
task.wait(.2)
hrp.CFrame=c.CFrame*CFrame.new(0,0,4)
task.wait(2)
HealthBar:Destroy()
Text:Destroy()
end
end), "Perfect Block")
AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://9579763957" then
char.Info:WaitForChild('Block'):Destroy()
RB = true task.delay(.3,function() RB = false end)


_G.PS('588734767',1)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://17791064680"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play(.1)
k.Priority = Enum.AnimationPriority.Action2
k:AdjustSpeed(0)
spawn(function() 
local i = 0
while v.IsPlaying and char.Humanoid.Health >= 0 do i=i+1
k.TimePosition = .3+math.sin(i/66)/25
task.wait(.01) end end)
local a = e.ManaShield:Clone()
a.Parent = char
a.CFrame = hrp.CFrame
a.Part.CanCollide = false
a.Part.CFrame = hrp.CFrame
a.CanCollide = false
a.Weld.Part1 = hrp
local r = a.Weld:Clone() 
r.Part1 = a.Part r.Parent = a
game.TweenService:Create(a,TweenInfo.new(.7,Enum.EasingStyle.Back),
{Size=Vector3.new(6,6,6)}):Play()
game.TweenService:Create(a.Part,TweenInfo.new(.7,Enum.EasingStyle.Back),
{Size=Vector3.new(6,6,6)}):Play()
task.delay(.7,function()
if a.Parent == char then 
game.TweenService:Create(a,TweenInfo.new(5,Enum.EasingStyle.Sine,
Enum.EasingDirection.InOut,-1,true),
{Size=Vector3.new(7,7,7)}):Play()
game.TweenService:Create(a.Part,TweenInfo.new(5,Enum.EasingStyle.Sine,
Enum.EasingDirection.InOut,-1,true),
{Size=Vector3.new(7,7,7)}):Play()
else end
end)

v.Stopped:Wait() a:Destroy()
k:Stop(.3)
_G.PS('588735437',1)

end end), "Blocking")
char.Animate.walk.WalkAnim.AnimationId = 'rbxassetid://17579003479'
char.Animate.idle.Animation1.AnimationId = 'rbxassetid://18456337058'
char.Animate.idle.Animation2.AnimationId = 'rbxassetid://18456337058'
local db = false 
AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://18456337058" then
if db == true then return end db = true 
v:Play(.3) v:AdjustSpeed(0)
v.Priority = Enum.AnimationPriority.Idle
spawn(function()
for i = 1,2222155 do 
if not v.IsPlaying then break end 
v.TimePosition = 1+math.sin(i/55)/6
task.wait(.01)
end
end)
task.wait() db = false 
end end), "Walk")

local db = false 
AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://17579003479" then
if db == true then return end db = true 
v:Play(.3) v:AdjustSpeed(.7)
task.wait() db = false 
end end), "Run")
AddSignal(char.Humanoid:GetPropertyChangedSignal('WalkSpeed'):Connect(function(v)
if char.Humanoid.WalkSpeed >= 20 then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://87074081726087"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play(.3)
k.Priority = Enum.AnimationPriority.Action2
k:AdjustSpeed(.7)
k.TimePosition = .6
repeat 
if k.TimePosition >= 1.5 then warn() k.TimePosition = 1 end
task.wait() until char.Humanoid.WalkSpeed <= 20 or char.Humanoid.Health == 0 k:Stop()
end end), "Run")

AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://119042572747325" then
v:Stop()
Skill(hrp,.2)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://18334584217"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k.Priority = Enum.AnimationPriority.Action
k:AdjustSpeed(1)
k.TimePosition = .5

task.wait(.6)
k:Stop(.3)
end end), "M3")

AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://105287938257399" then
v:Stop()
Skill(hrp,.2)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://18334584217"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k.Priority = Enum.AnimationPriority.Action3
k:AdjustSpeed(1)
k.TimePosition = 1.5
task.wait(.6)
k:Stop(.3)
end end), "4")
local ye = lp.PlayerGui.Main.Moveset["Blood Edge"]
ye.Tip.Text = 'VARIANT'
ye.Tip.Visible = true
local ye = lp.PlayerGui.Main.Moveset["Supernova"]
ye.Tip.Text = 'VARIANT'
ye.Tip.Visible = true
local dia = game:GetService("ReplicatedStorage").Utils.Choso.Dialogue
dia.Chat1.Sub.Text = 'IM LINDWURMING IT SO GOOD!'
dia.Chat1.Sub.Size = UDim2.new(1, 0, 1, 0)
dia.Chat1.Size = UDim2.new(.3, 0, .4, 0)
dia.Chat1.Position = UDim2.new(.15, 0, .5, 0)
dia.Text1.Text = 'OH... IM LINDWURMING IT!'
local ULT = game:GetService("Players").LocalPlayer.PlayerGui.Main.Ultimate
ULT.Bar.Fill.UIGradient.Rotation = 0
ULT.Bar.Fill.BackgroundColor3=Color3.fromRGB(150,150,255)
ULT.Bar.Fill.BorderColor3=Color3.fromRGB(0,0,255)
ULT.Bar.Fill.BorderSizePixel = 2
ULT.Bar.Ready.Ready.Text = 'PRESS G TO START LINDWURMING IT'
ULT.Title.Text = 'LINDWURM'
spawn(function()
task.wait(.5)
for i = 1,9999999 do if getgenv().Loop == true then break end
ULT.Bar.UIGradient.Rotation = i
task.wait(.01) end end)
AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://73953354465111" then
v:Stop()
local dia = char.Torso:WaitForChild('Dialogue')
dia.Chat1.BackgroundColor3=Color3.new(1,0,0)
task.delay(1,function()
game.TweenService:Create(dia.Chat1,TweenInfo.new(1),
{BackgroundColor3=Color3.new(1,1,1)}):Play()
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://98934036433592"
local k = char.Humanoid:LoadAnimation(Anim)
k:Play()
k.Priority = Enum.AnimationPriority.Action2
k:AdjustSpeed(.5)
k.TimePosition = 1.4
task.wait(2) k:Stop(.6)

end end), "Ultimate")

AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://000000" then

end end), "Template")

AddSignal(char.Humanoid.AnimationPlayed:Connect(function(v)
if v.Animation.AnimationId == "rbxassetid://000000" then

end end), "Template2")
game:GetService("StarterGui"):SetCore("SendNotification", 
{ Title = "LINDWURM"; 
Text = "SCRIPT LOADED WITH NO ERROR. discord.gg/soulshatters";
Duration = 5; Button1 = "hell yeah"; })
local BodyParts = {
"Head",
"Torso",
"Left Arm",
"Right Arm",
"Left Leg",
"Right Leg"
}
for i,r in pairs(lp.Character:GetChildren()) do 
if table.find(BodyParts, r.Name) then
pcall(function() r.GlowS:Destroy() end)
pcall(function() r._Lsmoke:Destroy() end)
local v = Instance.new('ParticleEmitter',r)
v.LightEmission = 15
v.LightInfluence = 1
v.Size = NumberSequence.new(0,1,0)
v.Name = '_Lsmoke'
v.Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(.1,.97),
NumberSequenceKeypoint.new(1,1)})
v.Lifetime = NumberRange.new(.1,7)
v:Emit(25)
v.Rate = 55;v.Speed = NumberRange.new(.1)
v.SpreadAngle = Vector2.new(30,30)
v.Rotation = NumberRange.new(-360,360)
v.RotSpeed = NumberRange.new(750)
v.LockedToPart = true
v.Texture = 'rbxassetid://11789331771';v.Brightness = 1
v.LightEmission=10;v.LightInfluence=0
v.ZOffset = 2


local v = Instance.new('ParticleEmitter',r)
v.LightEmission = 15
v.LightInfluence = 1
v.Size = NumberSequence.new(3,0,3)
v.Name = 'GlowS'

v.Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0,1),
NumberSequenceKeypoint.new(.1,.96),
NumberSequenceKeypoint.new(1,1)})
v.Lifetime = NumberRange.new(2)
v.Squash=NumberSequence.new({
NumberSequenceKeypoint.new(0,15),
NumberSequenceKeypoint.new(.5,15),
NumberSequenceKeypoint.new(1,0)

})
v:Emit(155)
v.Rate = 15;v.Speed = NumberRange.new(.1)
v.SpreadAngle = Vector2.new(30,30)
v.Rotation = NumberRange.new(-360,360)
v.RotSpeed = NumberRange.new(0)
v.LockedToPart = true
v.Texture = 'rbxassetid://11751891032';v.Brightness = 1
v.LightEmission=10;v.LightInfluence=0
v.ZOffset = 2




end end
end 
MainEnv()
pcall(function()
getgenv().pepe:Disconnect()
end)
getgenv().pepe = game.Players.LocalPlayer.CharacterAdded:Connect(function(c)
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid')
task.wait(.6)
MainEnv()
end)
