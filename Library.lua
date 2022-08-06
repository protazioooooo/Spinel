local Lighting = game:GetService('Lighting')
local CoreGui = game:GetService('CoreGui')
local Library = {}

local function Random()
    local Index = {}
    local Letters = {
        'a';'b';'c';'d';'e';'f';'g';'h';'i';'j';'k';'l';'m';'n';'o';'p';'q';'r';'s';'t';'u';'v';'w';'x';'y';'z';
       'A';'B';'C';'D';'E';'F';'G';'H';'I';'J';'K';'L';'M';'N';'O';'P';'Q';'R';'S';'T';'U';'V';'W';'X';'Y';'Z';
    }
    for Value = 1, 10 do
        Index[Value] = tostring(Letters[math.random(1, #Letters)])
    end
    return table.concat(Index)
end

function Library:Initialization()
    local ScreenGui = Instance.new('ScreenGui', CoreGui)
    local Welcome = Instance.new('TextLabel', ScreenGui)
    local Effect = Instance.new('BlurEffect', Lighting)

    ScreenGui.Name = Random()
    ScreenGui.DisplayOrder = 999
    ScreenGui.ResetOnSpawn = false

    Welcome.Name = Random()
    Welcome.AnchorPoint = Vector2.new(0.5, 0.5)
    Welcome.Position = UDim2.new(0.5, 0, 0.5, 0)
    Welcome.Size = UDim2.new(0, 800, 0, 100)
    Welcome.Text = 'Welcome, matheus!'
    Welcome.TextColor3 = Color3.fromRGB(255, 255, 255)
    Welcome.TextSize = 80
    Welcome.Font = Enum.Font.Nunito
    Welcome.BackgroundTransparency = 1
    Welcome.Active = false

    Effect.Name = Random()
    Effect.Size = 20
end

return Library