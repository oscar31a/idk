local _0x76bc = game.Players.LocalPlayer
local _0x72f3 = game.ReplicatedStorage
local _0x49a9 = _0x76bc.PlayerGui
local _0x5d5a = game:GetService("UserInputService")

local _0x6254 = Instance.new("ScreenGui", _0x49a9)
local _0x1cfb = Instance.new("Frame", _0x6254)

local _0x3013 = _0x72f3.Items.gun
_0x3013:FindFirstChild("M24").TextureId = "rbxassetid://73387965982603"
_0x3013:FindFirstChild("Crossbow").TextureId = "rbxassetid://89240642376715"
_0x3013:FindFirstChild("Double Barrel").TextureId = "rbxassetid://83625765638039"
_0x3013:FindFirstChild("Firework Launcher").TextureId = "rbxassetid://88284317820274"
_0x3013:FindFirstChild("Remington").TextureId = "rbxassetid://101271375930409"
_0x3013:FindFirstChild("Sawnoff").TextureId = "rbxassetid://90588305892707"
_0x3013:FindFirstChild("RPG").TextureId = "rbxassetid://138426000142807"
_0x3013:FindFirstChild("Hunting Rifle").TextureId = "rbxassetid://81547704965153"

_0x6254.Name = "Goofy"

local _0x26f8 = Instance.new("UICorner")
_0x26f8.Parent = _0x1cfb
_0x26f8.CornerRadius = UDim.new(.05, 0)

_0x1cfb.Size = UDim2.new(0.2, 0, 0.35, 0)
_0x1cfb.Position = UDim2.new(0.5, 0, 0.5, 0)
_0x1cfb.AnchorPoint = Vector2.new(0.5, 0.5)
_0x1cfb.BackgroundColor3 = Color3.fromRGB(0, 100, 255)

local _0x451f = Instance.new("ScrollingFrame")
local _0x3b09 = Instance.new("TextButton")
local _0x5931 = Instance.new("UIGridLayout")

_0x451f.Size = UDim2.new(.9, 0, .9, 0)
_0x451f.CanvasSize = UDim2.new(0, 0, 2, 0)
_0x451f.Position = UDim2.new(0.05, 0, 0.05, 0)
_0x451f.ScrollBarThickness = 5
_0x451f.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
_0x451f.Parent = _0x1cfb

local _0x0c75 = Instance.new("UICorner")
_0x0c75.Parent = _0x3b09
_0x0c75.CornerRadius = UDim.new(.3, 0)

_0x3b09.Size = UDim2.new(.1, 0, .1, 0)
_0x3b09.Position = UDim2.new(.95, 0, -.04, 0)
_0x3b09.TextScaled = true
_0x3b09.Font = Enum.Font.SourceSansBold
_0x3b09.Text = "X"
_0x3b09.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x3b09.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
_0x3b09.Parent = _0x1cfb

_0x5931.CellSize = UDim2.new(0.4, 0, 0.10, 0)
_0x5931.CellPadding = UDim2.new(0.023, 0, 0.025, 0)
_0x5931.HorizontalAlignment = Enum.HorizontalAlignment.Center
_0x5931.Parent = _0x451f

local _0x3e55 = _0x72f3:FindFirstChild("Items") and _0x72f3.Items:FindFirstChild("gun")
if _0x3e55 then
    for _, _0x3257 in ipairs(_0x3e55:GetChildren()) do
        local _0x29fe = Instance.new("TextButton")
        local _0x5b4d = Instance.new("ImageLabel")
        local _0x5f32 = Instance.new("TextLabel")
        local _0x5d9e = Instance.new("UICorner")
        _0x29fe.Name = _0x3257.Name .. " Frame"
        _0x29fe.TextTransparency = 1
        _0x29fe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        _0x29fe.Size = UDim2.new(0.5, 0, 0.5, 0)
        _0x29fe.Parent = _0x451f

        _0x5f32.TextColor3 = Color3.fromRGB(255, 255, 255)
        _0x5f32.TextScaled = true
        _0x5f32.Position = UDim2.new(.24, 0, 0, 0)
        _0x5f32.BackgroundTransparency = 1
        _0x5f32.Text = _0x3257.Name
        _0x5f32.Font = Enum.Font.SourceSansBold
        _0x5f32.Size = UDim2.new(0.5, 0, 0.5, 0)
        _0x5f32.Parent = _0x29fe

        _0x5b4d.Size = UDim2.new(0.5, 0, 0.7, 0)
        _0x5b4d.Position = UDim2.new(.24, 0, .32, 0)
        _0x5b4d.BackgroundTransparency = 1
        _0x5b4d.Image = _0x3257.TextureId
        _0x5b4d.Parent = _0x29fe

        _0x5d9e.Parent = _0x29fe
        _0x5d9e.CornerRadius = UDim.new(.15, 0)

        _0x29fe.MouseButton1Click:Connect(function()
            _0x3257:Clone().Parent = _0x76bc.Backpack
        end)
    end
else
    warn("_0x72f3.Items.gun not found!")
end

_0x3b09.MouseButton1Click:Connect(function()
    _0x6254.Enabled = false
end)

local _0x2682 = false
local _0x17b4 = nil
local _0x3c6b = nil

_0x1cfb.InputBegan:Connect(function(_0x1d1a, _0x1f4e)
    if _0x1f4e then return end

    if _0x1d1a.UserInputType == Enum.UserInputType.MouseButton1 then
        _0x2682 = true
        _0x17b4 = _0x1d1a.Position
        _0x3c6b = _0x1cfb.Position
    elseif _0x1d1a.UserInputType == Enum.KeyCode.RightShift then
        _0x6254.Enabled = not _0x6254.Enabled
    end
end)

_0x1cfb.InputChanged:Connect(function(_0x1d1a)
    if _0x2682 and _0x1d1a.UserInputType == Enum.UserInputType.MouseMovement then
        local _0x69f7 = _0x1d1a.Position - _0x17b4
        _0x1cfb.Position = UDim2.new(_0x3c6b.X.Scale, _0x3c6b.X.Offset + _0x69f7.X, _0x3c6b.Y.Scale, _0x3c6b.Y.Offset + _0x69f7.Y)
    end
end)

_0x1cfb.InputEnded:Connect(function(_0x1d1a)
    if _0x1d1a.UserInputType == Enum.UserInputType.MouseButton1 then
        _0x2682 = false
    end
end)

_0x5d5a.InputBegan:Connect(function(_0x1d1a, _0x1f4e)
    if _0x1f4e then return end

    if _0x1d1a.KeyCode == Enum.KeyCode.RightShift then
        _0x6254.Enabled = not _0x6254.Enabled
    end
end)
