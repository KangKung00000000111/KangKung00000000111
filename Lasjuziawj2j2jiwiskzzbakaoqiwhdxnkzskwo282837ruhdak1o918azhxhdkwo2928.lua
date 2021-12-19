-- Gui to Lua
-- Version: 3.2

-- Instances:
local Main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Text = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local JoinServer = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local EN = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")

--Properties:

Main.Name = "Main"
Main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 4
Frame.Position = UDim2.new(0.222772285, 0, 0.077605322, 0)
Frame.Size = UDim2.new(0, 655, 0, 380)
Frame.Active = true
Frame.Draggable = true

Text.Name = "Text"
Text.Parent = Frame
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0, 0, 0.123684213, 0)
Text.Size = UDim2.new(0, 655, 0, 180)
Text.Font = Enum.Font.SourceSans
Text.Text = ""
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextScaled = true
Text.TextSize = 14.000
Text.TextWrapped = true

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.351587683, 0, -0.00134204328, 0)
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Font = Enum.Font.Garamond
Title.Text = "important announcement"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 32.000
Title.TextStrokeColor3 = Color3.fromRGB(85, 85, 255)
Title.TextStrokeTransparency = 0.500

JoinServer.Name = "Join Server"
JoinServer.Parent = Frame
JoinServer.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
JoinServer.Position = UDim2.new(0.351145029, 0, 0.781578958, 0)
JoinServer.Size = UDim2.new(0, 200, 0, 50)
JoinServer.Font = Enum.Font.Highway
JoinServer.Text = "Join Server"
JoinServer.TextColor3 = Color3.fromRGB(0, 0, 0)
JoinServer.TextSize = 34.000
JoinServer.TextStrokeColor3 = Color3.fromRGB(85, 0, 255)
JoinServer.TextStrokeTransparency = 0.500

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.346654236, 0, 0.621110976, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.Ubuntu
TextLabel.Text = "https://discord.gg/B659FscCBz"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 32.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 0, 255)
TextLabel.TextStrokeTransparency = 0.300

EN.Name = "EN"
EN.Parent = Frame
EN.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
EN.Position = UDim2.new(0.024427481, 0, 0.860526323, 0)
EN.Size = UDim2.new(0, 44, 0, 36)
EN.Font = Enum.Font.Highway
EN.Text = "EN"
EN.TextColor3 = Color3.fromRGB(0, 0, 0)
EN.TextSize = 34.000
EN.TextStrokeColor3 = Color3.fromRGB(85, 0, 255)
EN.TextStrokeTransparency = 0.500

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(-0.000749588013, 0, -0.00828568265, 0)
TextButton.Size = UDim2.new(0, 45, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 32.000

TextButton.MouseButton1Down:Connect(function()
    Main:Destroy()
end)

JoinServer.MouseButton1Down:Connect(function()
    setclipboard("https://discord.gg/B659FscCBz")
    syn.request({
        Url = "http://127.0.0.1:6463/rpc?v=1",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
            ["Origin"] = "https://discord.com"
        },
        Body = game:GetService("HttpService"):JSONEncode({
            cmd = "INVITE_BROWSER",
            args = {
                code = "B659FscCBz"
            },
            nonce = game:GetService("HttpService"):GenerateGUID(false)
        }),
    })
    Flux:Notification("Copy Done!", "Okay!")
end)

local Destroyer
spawn(function()
    pcall(function()
        local FullTextTH = "ตอนนี้ script นี้ได้ disconnected แล้วเพราะงั้นไปละแง้นๆ.... หยอก! สคิปตอนนี้ได้ย้ายระบบใหม่แล้ว กรุณาไปรับ Key ที่ Discord : Kang Kung#7271 หรือ FB : Kang Kung เพื่อนำมา redeem key ที่ discord server Kr(?) ด้วยนะครับ ถ้าไม่รับหรือ redeem ภายใน 3 เดือนผมจะถือว่าสละสิทธิ์การเป็น buyer นะครับ ใครที่มีเพื่อนที่เป็น buyer ไปช่วยบอกด้วยนะครับ :)"
        local GFullText = string.split(FullTextTH, "")
        local Content = ""
        for _, value in pairs(GFullText) do
            if Destroyer then
                Destroyer = false
                break
            end
            wait(0.05)
            print(value)
            Content = Content..value
            Text.Text = Content
        end
    end)
end)

EN.MouseButton1Down:Connect(function()
    Destroyer = true
    if EN.Text == "EN" then
        EN.Text = "TH"
        spawn(function()
            pcall(function()
                local FullTextTH = "Now this script has been disconnected so go away.... tease!, script has now moved to a new system. Please go get the key at Discord : Kang Kung#7271 or FB : Kang Kung to redeem key at discord server Kr(?) if you don't receive or redeem it within 3 months. It will be considered a waiver of being a buyer. If you have a friend who is a buyer, please tell him :)"
                local GFullText = string.split(FullTextTH, "")
                local Content = ""
                for _, value in pairs(GFullText) do
                    if Destroyer then
                        Destroyer = false
                        break
                    end
                    wait(0.05)
                    print(value)
                    Content = Content..value
                    Text.Text = Content
                end
            end)
        end)
    elseif EN.Text == "TH" then
        EN.Text = "EN"
        spawn(function()
            pcall(function()
                local FullTextTH = "ตอนนี้ script นี้ได้ disconnected แล้วเพราะงั้นไปละแง้นๆ.... หยอก! สคิปตอนนี้ได้ย้ายระบบใหม่แล้ว กรุณาไปรับ Key ที่ Discord : Kang Kung#7271 หรือ FB : Kang Kung เพื่อนำมา redeem key ที่ discord server Kr(?) ด้วยนะครับ ถ้าไม่รับหรือ redeem ภายใน 3 เดือนผมจะถือว่าสละสิทธิ์การเป็น buyer นะครับ ใครที่มีเพื่อนที่เป็น buyer ไปช่วยบอกด้วยนะครับ :)"
                local GFullText = string.split(FullTextTH, "")
                local Content = ""
                for _, value in pairs(GFullText) do
                    if Destroyer then
                        Destroyer = false
                        break
                    end
                    wait(0.05)
                    print(value)
                    Content = Content..value
                    Text.Text = Content
                end
            end)
        end)
    end
end)

 
