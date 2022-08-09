local CoreGui = game:GetService('CoreGui')
local Library = {}

local function Random()
    local String = {}
    local Letters = {
       'a';'b';'c';'d';'e';'f';'g';'h';'i';'j';'k';'l';'m';'n';'o';'p';'q';'r';'s';'t';'u';'v';'w';'x';'y';'z';
       'A';'B';'C';'D';'E';'F';'G';'H';'I';'J';'K';'L';'M';'N';'O';'P';'Q';'R';'S';'T';'U';'V';'W';'X';'Y';'Z';
    }

    for Value = 1, 10 do
        String[Value] = Letters[math.random(1, #Letters)]
    end
    return table.concat(String)
end

function Library:CreateMain()
    local Buttons = {}

    local ScreenGui = Instance.new('ScreenGui', CoreGui)
    local Main = Instance.new('ImageLabel', ScreenGui)

    ScreenGui.Name = Random()
    ScreenGui.DisplayOrder = math.random(1, 100)
    ScreenGui.ResetOnSpawn = false

    Main.Name = Random()
    Main.Position = UDim2.new(0, 0, 0.22, 0)
    Main.Size = UDim2.new(0, 260, 0, 360)
    Main.Image = 'rbxassetid://10539209076'
    Main.BackgroundTransparency = 1
    Main.Active = false

    function Buttons:CreateAimAssist()
        local Top = Instance.new('ImageLabel', Main)
        
        Top.Name = Random()
        Top.Position = UDim2.new(0, 0, 0, 0)
        Top.Size = UDim2.new(0, 260, 0, 60)
        Top.Image = 'rbxassetid://10539219991'
        Top.BackgroundTransparency = 1
        Top.Active = false
    end

    function Buttons:CreateUtilities()
        local Inside = Instance.new('ImageLabel', Main)

        Inside.Name = Random()
        Inside.Position = UDim2.new(0, 0, 0.167, 0)
        Inside.Size = UDim2.new(0, 260, 0, 60)
        Inside.Image = 'rbxassetid://10539235345'
        Inside.BackgroundTransparency = 1
        Inside.Active = false
    end

    function Buttons:CreateTeleports()
        local Inside = Instance.new('ImageLabel', Main)

        Inside.Name = Random()
        Inside.Position = UDim2.new(0, 0, 0.333, 0)
        Inside.Size = UDim2.new(0, 260, 0, 60)
        Inside.Image = 'rbxassetid://10539235345'
        Inside.BackgroundTransparency = 1
        Inside.Active = false
    end

    function Buttons:CreateMovements()
        local Inside = Instance.new('ImageLabel', Main)

        Inside.Name = Random()
        Inside.Position = UDim2.new(0, 0, 0.5, 0)
        Inside.Size = UDim2.new(0, 260, 0, 60)
        Inside.Image = 'rbxassetid://10539235345'
        Inside.BackgroundTransparency = 1
        Inside.Active = false
    end

    function Buttons:CreateRenderizations()
        local Inside = Instance.new('ImageLabel', Main)

        Inside.Name = Random()
        Inside.Position = UDim2.new(0, 0, 0.667, 0)
        Inside.Size = UDim2.new(0, 260, 0, 60)
        Inside.Image = 'rbxassetid://10539235345'
        Inside.BackgroundTransparency = 1
        Inside.Active = false
    end

    function Buttons:CreatePowerfulls()
        local Bottom = Instance.new('ImageLabel', Main)

        Bottom.Name = Random()
        Bottom.Position = UDim2.new(0, 0, 0.833, 0)
        Bottom.Size = UDim2.new(0, 260, 0, 60)
        Bottom.Image = 'rbxassetid://10539227883'
        Bottom.BackgroundTransparency = 1
        Bottom.Active = false
    end

    return Buttons
end

return Library