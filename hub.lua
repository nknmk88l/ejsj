-- 假设已本地导入 WindUI 框架并初始化
local WindUI = require(game:GetService("ReplicatedStorage").WindUI)

-- 创建控件容器
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- 创建按钮控件
local Button = WindUI.new("Button", {
    Parent = ScreenGui,
    Position = UDim2.new(0.5, -50, 0.5, -25),
    Size = UDim2.new(0, 100, 0, 50),
    Text = "点击按钮",
    TextColor3 = Color3.new(1, 1, 1),
    BackgroundColor3 = Color3.new(0, 0.5, 1)
})

-- 绑定按钮点击事件
Button.MouseButton1Click:Connect(function()
    print("按钮被点击了")
end)