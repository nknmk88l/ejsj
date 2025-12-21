local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

WindUI.TransparencyValue = 0.2
WindUI:SetTheme("Dark")

local function gradient(text, startColor, endColor)
    local result = ""
    for i = 1, #text do
        local t = (i - 1) / (#text - 1)
        local r = math.floor((startColor.R + (endColor.R - startColor.R) * t) * 255)
        local g = math.floor((startColor.G + (endColor.G - startColor.G) * t) * 255)
        local b = math.floor((startColor.B + (endColor.B - startColor.B) * t) * 255)
        result = result .. string.format('<font color="rgb(%d,%d,%d)">%s</font>', r, g, b, text:sub(i, i))
    end
    return result
end

local Window = WindUI:CreateWindow({
    Title = "ShenmiHub",
    Icon = "palette",
    Author = "神秘脚本",
    Folder = "文件夹路径",
    Size = UDim2.fromOffset(700, 500),
    Theme = "Dark",
    User = {
        Enabled = true,
        Callback = function()
            WindUI:Notify({Title = "配置触发", Content = "用户配置回调已执行", Duration = 1.5})
        end
    },
    SideBarWidth = 220,
    ScrollBarEnabled = true
})

Window:Tag({
    Title = "1.0",
    Color = Color3.fromHex("#306aff")
})

local Tab = Window:Tab({
    Title = "公告",
    Icon = "ajajaja",
    Locked = false,
    OnCreate = function()
        WindUI:Notify({Title = "标签页加载", Content = "公告标签页创建完成", Duration = 1.5})
    end
})

Tab:Paragraph({
    Title = "QQ群",
    Image = "nil",
    ImageSize = 20,
    Color = "Grey",
    Buttons = {
        {
            Title = "QQ群",
            Icon = "copy",
            Variant = "Tertiary",
            Callback = function()
                setclipboard("1074218782")
                WindUI:Notify({
                    Title = "已复制！",
                    Content = "已复制到剪贴板",
                    Duration = 2
                })
            end
        }
    }
})

local Section = Tab:Section({ 
    Title = "简介内容",
    TextXAlignment = "Left",
    TextSize = 17
})
 
local Tab = Window:Tab({
    Title = "通用功能",
    Icon = "bird",
    Locked = false,
})

local Button = Tab:Button({
    Title = "飞行",
    Locked = false,
    Callback = function()
        print("clicked")
    end
})

local Dropdown = Tab:Dropdown({
    Title = "选择攻击多个玩家",
    Values = { "Category A", "Category B", "Category C" },
    Value = { "Category A" },
    Multi = true,
    AllowNone = true,
    Callback = function(option) 
        print("Categories selected: " .. game:GetService("HttpService"):JSONEncode(option)) 
    end
})

local Dropdown = Tab:Dropdown({
    Title = "选择攻击单个玩家",
    Values = { "Category A", "Category B", "Category C" },
    Value = "Category A",
    Callback = function(option) 
        print("Category selected: " .. option) 
    end
})

local Input = Tab:Input({
    Title = "Input",
    Desc = "Input Description",
    Value = "Default value",
    Type = "Input", -- or "Textarea"
    Placeholder = "Enter text...",
    Callback = function(input) 
        print("text entered: " .. input)
    end
})
---输入

local Section = Tab:Section({ 
    Title = "Section",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})
---创建部分

local Slider = Tab:Slider({
    Title = "Slider",
    
    -- To make float number supported, 
    -- make the Step a float number.
    -- example: Step = 0.1
    Step = 1,
    
    Value = {
        Min = 20,
        Max = 120,
        Default = 70,
    },
    Callback = function(value)
        print(value)
    end
})
---滑动

local Toggle = Tab:Toggle({
    Title = "Toggle",
    Desc = "Toggle Description",
    Type = "Checkbox",
    Default = false,
    Callback = function(state) 
        WindUI:Notify({
            Title = "xxxx",
            Content = state and "xxx已启用" or "xxx已禁用",
            Icon = state and "check" or "x",
            Duration = 2
        })
    end
})
---切换按钮
Toggle:SetDesc("Description Example")
---创建描述
Toggle:SetTitle("Title Example")
---设置标题
Button:Lock()
---锁定
        WindUI:Notify({
            Title = "xxxx",
            Content = state and "xxx已启用" or "xxx已禁用",
            Icon = state and "check" or "x",
            Duration = 2
        })
---通知