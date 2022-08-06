local TweenService = game:GetService('TweenService')
local CoreGui = game:GetService('CoreGui')
local Lighting = game:GetService('Lighting')

local function Random()
    local String = {}
    local Letters = {
       'a';'b';'c';'d';'e';'f';'g';'h';'i';'j';'k';'l';'m';'n';'o';'p';'q';'r';'s';'t';'u';'v';'w';'x';'y';'z';
       'A';'B';'C';'D';'E';'F';'G';'H';'I';'J';'K';'L';'M';'N';'O';'P';'Q';'R';'S';'T';'U';'V';'W';'X';'Y';'Z';
    }
    for Value = 1, 10 do
        String[Value] = tostring(Letters[math.random(1, #Letters)])
    end
    return table.concat(String)
end

function Initialization()
    local ScreenGui = Instance.new('ScreenGui', CoreGui)
    local Welcome = Instance.new('TextLabel', ScreenGui)
    local Effect = Instance.new('BlurEffect', Lighting)

    ScreenGui.Name = Random()
    ScreenGui.DisplayOrder = 999
    ScreenGui.ResetOnSpawn = false

    Welcome.Name = Random()
    Welcome.Text = 'Welcome, matheus!'
    Welcome.Size = UDim2.new(0, 800, 0, 100)
    Welcome.AnchorPoint = Vector2.new(0.5, 0.5)
    Welcome.Position = UDim2.new(0.5, 0, 0.5, 0)
    Welcome.TextColor3 = Color3.fromRGB(250, 250, 250)
    Welcome.BackgroundTransparency = 1
    Welcome.TextTransparency = 1
    Welcome.Font = Enum.Font.Nunito
    Welcome.TextSize = 80
    Welcome.Active = false

    Effect.Name = Random()
    Effect.Size = 15
    Effect.Enabled = true

    local Informations = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
    local Starter = TweenService:Create(Welcome, Informations, {TextTransparency = 0})
    local Terminator = TweenService:Create(Welcome, Informations, {TextTransparency = 1})
    local Finisher = TweenService:Create(Effect, Informations, {Size = 0})

    coroutine.wrap(function()
        Starter:Play()
        task.wait(4)
        Terminator:Play()
        Terminator.Completed:Connect(function(Playback)
            if Playback == Enum.PlaybackState.Completed then
               Finisher:Play()
               task.wait(1)
               ScreenGui:Destroy()
               Effect:Destroy()
            end
        end)
    end)()
end