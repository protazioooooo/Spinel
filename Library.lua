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
    Main.Position = UDim2.new(0, 0, 0.21, 0)
    Main.Size = UDim2.new(0, 260, 0, 360)
    Main.Image = 'rbxassetid://10539209076'
    Main.BackgroundTransparency = 1
    Main.Active = false

    return Buttons
end

return Library