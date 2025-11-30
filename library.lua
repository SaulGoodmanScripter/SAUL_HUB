 Library = {}
SaveTheme = {}

local themes = {
    index = {'Dark', 'Amethyst', 'NewYear', 'Winter'},
    Amethyst = {
        ['Shadow'] = Color3.fromRGB(24, 24, 31),
        ['Background'] = Color3.fromRGB(29, 28, 38),
        ['Page'] = Color3.fromRGB(24, 24, 31),
        ['Main'] = Color3.fromRGB(91, 68, 209),
        ['Text & Icon'] = Color3.fromRGB(255, 255, 255),
        ['Function'] = {
            ['Toggle'] = {
                ['Background'] = Color3.fromRGB(29, 28, 38),
                ['True'] = {
                    ['Toggle Background'] = Color3.fromRGB(44, 34, 103),
                    ['Toggle Value'] = Color3.fromRGB(91, 68, 209),
                },
                ['False'] = {
                    ['Toggle Background'] = Color3.fromRGB(36, 35, 48),
                    ['Toggle Value'] = Color3.fromRGB(44, 42, 62),
                }
            },
            ['Label'] = {
                ['Background'] = Color3.fromRGB(29, 28, 38),
            },
            ['Dropdown'] = {
                ['Background'] = Color3.fromRGB(29, 28, 38),
                ['Value Background'] = Color3.fromRGB(24, 24, 31),
                ['Value Stroke'] = Color3.fromRGB(255, 255, 255),
                ['Dropdown Select'] = {
                    ['Background'] = Color3.fromRGB(24, 24, 31),
                    ['Search'] = Color3.fromRGB(35, 35, 42),
                    ['Item Background'] = Color3.fromRGB(45, 45, 52),
                }
            },
            ['Slider'] = {
                ['Background'] = Color3.fromRGB(29, 28, 38),
                ['Value Background'] = Color3.fromRGB(24, 24, 31),
                ['Value Stroke'] = Color3.fromRGB(255, 255, 255),
                ['Slider Bar'] = Color3.fromRGB(44, 34, 103),
                ['Slider Bar Value'] = Color3.fromRGB(91, 68, 209),
                ['Circle Value'] = Color3.fromRGB(255, 255, 255)
            },
            ['Code'] = {
                ['Background'] = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(29, 28, 38)), ColorSequenceKeypoint.new(1, Color3.fromRGB(29, 28, 38))},
                ['Background Code'] = Color3.fromRGB(51, 62, 68),
                ['Background Code Value'] = Color3.fromRGB(38, 50, 56),
                ['ScrollingFrame Code'] = Color3.fromRGB(216, 150, 179)
            },
            ['Button'] = {
                ['Background'] = Color3.fromRGB(29, 28, 38),
                ['Click'] = Color3.fromRGB(255, 255, 255)
            },
            ['Textbox'] = {
                ['Background'] = Color3.fromRGB(29, 28, 38),
                ['Value Background'] = Color3.fromRGB(24, 24, 31),
                ['Value Stroke'] = Color3.fromRGB(255, 255, 255),
            },
            ['Keybind'] = {
                ['Background'] = Color3.fromRGB(29, 28, 38),
                ['Value Background'] = Color3.fromRGB(24, 24, 31),
                ['Value Stroke'] = Color3.fromRGB(255, 255, 255),
                ['True'] = {
                    ['Toggle Background'] = Color3.fromRGB(44, 34, 103),
                    ['Toggle Value'] = Color3.fromRGB(91, 68, 209),
                },
                ['False'] = {
                    ['Toggle Background'] = Color3.fromRGB(36, 35, 48),
                    ['Toggle Value'] = Color3.fromRGB(44, 42, 62),
                }
            },
            ['Color Picker'] = {
                ['Background'] = Color3.fromRGB(29, 28, 38),
                ['Color Select'] = {
                    ['Background'] = Color3.fromRGB(24, 24, 31),
                    ['UIStroke'] = Color3.fromRGB(255, 255, 255),
                }
            }
        }
    },
    Dark = {
        ['Shadow'] = Color3.fromRGB(15, 15, 15),
        ['Background'] = Color3.fromRGB(20, 20, 20),
        ['Page'] = Color3.fromRGB(18, 18, 18),
        ['Main'] = Color3.fromRGB(50, 50, 50),
        ['Text & Icon'] = Color3.fromRGB(230, 230, 230),
        ['Function'] = {
            ['Toggle'] = {
                ['Background'] = Color3.fromRGB(25, 25, 25),
                ['True'] = {
                    ['Toggle Background'] = Color3.fromRGB(40, 40, 40),
                    ['Toggle Value'] = Color3.fromRGB(70, 130, 180),
                },
                ['False'] = {
                    ['Toggle Background'] = Color3.fromRGB(30, 30, 30),
                    ['Toggle Value'] = Color3.fromRGB(40, 40, 40),
                }
            },
            ['Label'] = {
                ['Background'] = Color3.fromRGB(25, 25, 25),
            },
            ['Dropdown'] = {
                ['Background'] = Color3.fromRGB(25, 25, 25),
                ['Value Background'] = Color3.fromRGB(20, 20, 20),
                ['Value Stroke'] = Color3.fromRGB(230, 230, 230),
                ['Dropdown Select'] = {
                    ['Background'] = Color3.fromRGB(20, 20, 20),
                    ['Search'] = Color3.fromRGB(30, 30, 30),
                    ['Item Background'] = Color3.fromRGB(30, 30, 30),
                }
            },
            ['Slider'] = {
                ['Background'] = Color3.fromRGB(25, 25, 25),
                ['Value Background'] = Color3.fromRGB(20, 20, 20),
                ['Value Stroke'] = Color3.fromRGB(230, 230, 230),
                ['Slider Bar'] = Color3.fromRGB(40, 40, 40),
                ['Slider Bar Value'] = Color3.fromRGB(70, 130, 180),
                ['Circle Value'] = Color3.fromRGB(255, 255, 255)
            },
            ['Code'] = {
                ['Background'] = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 25, 25)), ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 25, 25))},
                ['Background Code'] = Color3.fromRGB(35, 35, 35),
                ['Background Code Value'] = Color3.fromRGB(28, 28, 28),
                ['ScrollingFrame Code'] = Color3.fromRGB(150, 150, 150)
            },
            ['Button'] = {
                ['Background'] = Color3.fromRGB(25, 25, 25),
                ['Click'] = Color3.fromRGB(230, 230, 230)
            },
            ['Textbox'] = {
                ['Background'] = Color3.fromRGB(25, 25, 25),
                ['Value Background'] = Color3.fromRGB(20, 20, 20),
                ['Value Stroke'] = Color3.fromRGB(230, 230, 230),
            },
            ['Keybind'] = {
                ['Background'] = Color3.fromRGB(25, 25, 25),
                ['Value Background'] = Color3.fromRGB(20, 20, 20),
                ['Value Stroke'] = Color3.fromRGB(230, 230, 230),
                ['True'] = {
                    ['Toggle Background'] = Color3.fromRGB(40, 40, 40),
                    ['Toggle Value'] = Color3.fromRGB(70, 130, 180),
                },
                ['False'] = {
                    ['Toggle Background'] = Color3.fromRGB(30, 30, 30),
                    ['Toggle Value'] = Color3.fromRGB(40, 40, 40),
                }
            },
            ['Color Picker'] = {
                ['Background'] = Color3.fromRGB(25, 25, 25),
                ['Color Select'] = {
                    ['Background'] = Color3.fromRGB(20, 20, 20),
                    ['UIStroke'] = Color3.fromRGB(230, 230, 230),
                }
            }
        }
    },
  NewYear = {
    ['Shadow'] = Color3.fromRGB(80, 10, 10),       -- Темно-красный
    ['Background'] = Color3.fromRGB(140, 20, 20),  -- Ярко-красный
    ['Page'] = Color3.fromRGB(110, 15, 15),        -- Средний красный
    ['Main'] = Color3.fromRGB(255, 215, 0),        -- Золотой 🎁
    ['Text & Icon'] = Color3.fromRGB(255, 240, 200), -- Кремовый
    ['Function'] = {
        ['Toggle'] = {
            ['Background'] = Color3.fromRGB(120, 25, 25),
            ['True'] = {
                ['Toggle Background'] = Color3.fromRGB(160, 40, 40),
                ['Toggle Value'] = Color3.fromRGB(255, 215, 0), -- Золотой
            },
            ['False'] = {
                ['Toggle Background'] = Color3.fromRGB(100, 20, 20),
                ['Toggle Value'] = Color3.fromRGB(120, 30, 30),
            }
        },
        ['Label'] = {
            ['Background'] = Color3.fromRGB(120, 25, 25),
        },
        ['Button'] = {
            ['Background'] = Color3.fromRGB(120, 25, 25),
            ['Click'] = Color3.fromRGB(255, 240, 200),
        },
        -- Остальные элементы оставляем как в Dark теме, но с красным Background
        ['Dropdown'] = {
            ['Background'] = Color3.fromRGB(120, 25, 25),
            ['Value Background'] = Color3.fromRGB(80, 10, 10),
            ['Value Stroke'] = Color3.fromRGB(255, 240, 200),
            ['Dropdown Select'] = {
                ['Background'] = Color3.fromRGB(80, 10, 10),
                ['Search'] = Color3.fromRGB(100, 20, 20),
                ['Item Background'] = Color3.fromRGB(120, 25, 25),
            }
        },
        ['Slider'] = {
            ['Background'] = Color3.fromRGB(120, 25, 25),
            ['Value Background'] = Color3.fromRGB(80, 10, 10),
            ['Value Stroke'] = Color3.fromRGB(255, 240, 200),
            ['Slider Bar'] = Color3.fromRGB(160, 40, 40),
            ['Slider Bar Value'] = Color3.fromRGB(255, 215, 0), -- Золотой
            ['Circle Value'] = Color3.fromRGB(255, 240, 200)
        },
        ['Textbox'] = {
            ['Background'] = Color3.fromRGB(120, 25, 25),
            ['Value Background'] = Color3.fromRGB(80, 10, 10),
            ['Value Stroke'] = Color3.fromRGB(255, 240, 200),
        },
        ['Keybind'] = {
            ['Background'] = Color3.fromRGB(120, 25, 25),
            ['Value Background'] = Color3.fromRGB(80, 10, 10),
            ['Value Stroke'] = Color3.fromRGB(255, 240, 200),
            ['True'] = {
                ['Toggle Background'] = Color3.fromRGB(160, 40, 40),
                ['Toggle Value'] = Color3.fromRGB(255, 215, 0), -- Золотой
            },
            ['False'] = {
                ['Toggle Background'] = Color3.fromRGB(100, 20, 20),
                ['Toggle Value'] = Color3.fromRGB(120, 30, 30),
            }
        }
    }
},

Winter = {
    ['Shadow'] = Color3.fromRGB(30, 50, 80),       -- Темно-синий
    ['Background'] = Color3.fromRGB(50, 80, 120),  -- Синий
    ['Page'] = Color3.fromRGB(40, 65, 100),        -- Средний синий
    ['Main'] = Color3.fromRGB(220, 240, 255),      -- Снежно-белый ❄️
    ['Text & Icon'] = Color3.fromRGB(240, 248, 255), -- AliceBlue
    ['Function'] = {
        ['Toggle'] = {
            ['Background'] = Color3.fromRGB(60, 90, 130),
            ['True'] = {
                ['Toggle Background'] = Color3.fromRGB(80, 120, 160),
                ['Toggle Value'] = Color3.fromRGB(220, 240, 255), -- Снежный
            },
            ['False'] = {
                ['Toggle Background'] = Color3.fromRGB(50, 75, 110),
                ['Toggle Value'] = Color3.fromRGB(70, 100, 140),
            }
        },
        ['Label'] = {
            ['Background'] = Color3.fromRGB(60, 90, 130),
        },
        ['Button'] = {
            ['Background'] = Color3.fromRGB(60, 90, 130),
            ['Click'] = Color3.fromRGB(240, 248, 255),
        },
        -- Остальные элементы оставляем как в Dark теме, но с синим Background
        ['Dropdown'] = {
            ['Background'] = Color3.fromRGB(60, 90, 130),
            ['Value Background'] = Color3.fromRGB(30, 50, 80),
            ['Value Stroke'] = Color3.fromRGB(240, 248, 255),
            ['Dropdown Select'] = {
                ['Background'] = Color3.fromRGB(30, 50, 80),
                ['Search'] = Color3.fromRGB(40, 65, 100),
                ['Item Background'] = Color3.fromRGB(60, 90, 130),
            }
        },
        ['Slider'] = {
            ['Background'] = Color3.fromRGB(60, 90, 130),
            ['Value Background'] = Color3.fromRGB(30, 50, 80),
            ['Value Stroke'] = Color3.fromRGB(240, 248, 255),
            ['Slider Bar'] = Color3.fromRGB(80, 120, 160),
            ['Slider Bar Value'] = Color3.fromRGB(220, 240, 255), -- Снежный
            ['Circle Value'] = Color3.fromRGB(240, 248, 255)
        },
        ['Textbox'] = {
            ['Background'] = Color3.fromRGB(60, 90, 130),
            ['Value Background'] = Color3.fromRGB(30, 50, 80),
            ['Value Stroke'] = Color3.fromRGB(240, 248, 255),
        },
        ['Keybind'] = {
            ['Background'] = Color3.fromRGB(60, 90, 130),
            ['Value Background'] = Color3.fromRGB(30, 50, 80),
            ['Value Stroke'] = Color3.fromRGB(240, 248, 255),
            ['True'] = {
                ['Toggle Background'] = Color3.fromRGB(80, 120, 160),
                ['Toggle Value'] = Color3.fromRGB(220, 240, 255), -- Снежный
            },
            ['False'] = {
                ['Toggle Background'] = Color3.fromRGB(50, 75, 110),
                ['Toggle Value'] = Color3.fromRGB(70, 100, 140),
            }
        }
    }
}    

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Dummy Kawaii"
ScreenGui.Parent = not game:GetService("RunService"):IsStudio() and game:GetService("CoreGui") or game:GetService("Players").LocalPlayer.PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local U, Tw = game:GetService("UserInputService"), game:GetService("TweenService")

do
        function addToTheme(name, obj)
                if not SaveTheme[name] then
                        SaveTheme[name] = {}
                end
                table.insert(SaveTheme[name], obj)
        end
        function getColorFromPath(tbl, path)
                local result = tbl
                for _, part in ipairs(string.split(path, ".")) do
                        result = result and result[part]
                end
                return result
        end
        function Library:setTheme(st)
                for name, objs in pairs(SaveTheme) do
                        local color = getColorFromPath(st, name)
                        if color then
                                for _, obj in pairs(objs) do
                                        if SaveTheme[name] then
                                                for _, obj in pairs(SaveTheme[name]) do
                                                        if obj:IsA("Frame") or obj:IsA("CanvasGroup") then
                                                                obj.BackgroundColor3 = color
                                                        elseif obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
                                                                obj.TextColor3 = color
                                                        elseif obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
                                                                obj.ImageColor3 = color
                                                        elseif obj:IsA("ScrollingFrame") then
                                                                obj.ScrollBarImageColor3 = color
                                                        elseif obj:IsA("UIStroke") then
                                                                obj.Color = color
                                                        elseif obj:IsA("UIGradient") then
                                                                obj.Color = color
                                                        end
                                                end
                                        end
                                end
                        end
                end
        end

        local IconList = loadstring(game:HttpGet('https://raw.githubusercontent.com/Dummyrme/Library/refs/heads/main/Icon.lua'))()
        function gl(i)
                local iconData = IconList.Icons[i]
                if iconData then
                        local spriteSheet = IconList.Spritesheets[tostring(iconData.Image)]
                        if spriteSheet then
                                return {
                                        Image = spriteSheet,
                                        ImageRectSize = iconData.ImageRectSize,
                                        ImageRectPosition = iconData.ImageRectPosition,
                                }
                        end
                end
                if type(i) == 'string' and not i:find('rbxassetid://') then
                        return {
                                Image = "rbxassetid://".. i,
                                ImageRectSize = Vector2.new(0, 0),
                                ImageRectPosition = Vector2.new(0, 0),
                        }
                elseif type(i) == 'number' then
                        return {
                                Image = "rbxassetid://".. i,
                                ImageRectSize = Vector2.new(0, 0),
                                ImageRectPosition = Vector2.new(0, 0),
                        }
                else
                        return i
                end
        end
        function tw(info)
                return Tw:Create(info.v,TweenInfo.new(info.t, info.s, Enum.EasingDirection[info.d]),info.g)
        end
        function changecanvas(ScrollingFrame, UIListLayout, Plus)
                UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + Plus or 5)
                end)
        end
        function gs(side, pl, pr)
                if not side then
                        return pl
                end

                local sideLower = string.lower(tostring(side))
                if sideLower == "r" or sideLower == "right" or side == 2 then
                        return pr
                elseif sideLower == "l" or sideLower == "left" or side == 1 then
                        return pl
                else
                        return pl
                end
        end
        function jc(c, p)
                local Mouse = game.Players.LocalPlayer:GetMouse()

                local relativeX = Mouse.X - c.AbsolutePosition.X
                local relativeY = Mouse.Y - c.AbsolutePosition.Y

                if relativeX < 0 or relativeY < 0 or relativeX > c.AbsoluteSize.X or relativeY > c.AbsoluteSize.Y then
                        return
                end

                local ClickButtonCircle = Instance.new("Frame")
                ClickButtonCircle.Parent = p
                ClickButtonCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ClickButtonCircle.BackgroundTransparency = 0.7
                ClickButtonCircle.BorderSizePixel = 0
                ClickButtonCircle.AnchorPoint = Vector2.new(0.5, 0.5)
                ClickButtonCircle.Position = UDim2.new(0, relativeX, 0, relativeY)
                ClickButtonCircle.Size = UDim2.new(0, 0, 0, 0)
                ClickButtonCircle.ZIndex = 10

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(1, 0)
                UICorner.Parent = ClickButtonCircle

                local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

                local goal = {
                        Size = UDim2.new(0, c.AbsoluteSize.X * 1.5, 0, c.AbsoluteSize.X * 1.5),
                        BackgroundTransparency = 1
                }

                local expandTween = game:GetService("TweenService"):Create(ClickButtonCircle, tweenInfo, goal)

                expandTween.Completed:Connect(function()
                        ClickButtonCircle:Destroy()
                end)

                expandTween:Play()
        end
        function jcf(p, p2)
                local ClickButtonCircle = Instance.new("Frame")
                ClickButtonCircle.Parent = p
                ClickButtonCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ClickButtonCircle.BackgroundTransparency = 0.7
                ClickButtonCircle.BorderSizePixel = 0
                ClickButtonCircle.AnchorPoint = Vector2.new(0.5, 0.5)
                ClickButtonCircle.Position = UDim2.new(0, p2.AbsolutePosition.X - p.AbsolutePosition.X + p2.AbsoluteSize.X / 2, 
                        0, p2.AbsolutePosition.Y - p.AbsolutePosition.Y + p2.AbsoluteSize.Y / 2)
                ClickButtonCircle.Size = UDim2.new(0, 0, 0, 0)
                ClickButtonCircle.ZIndex = 10

                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(1, 0)
                UICorner.Parent = ClickButtonCircle

                local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

                local goal = {
                        Size = UDim2.new(0, p2.AbsoluteSize.X * 5, 0, p2.AbsoluteSize.X * 5),
                        BackgroundTransparency = 1
                }

                local expandTween = game:GetService("TweenService"):Create(ClickButtonCircle, tweenInfo, goal)

                expandTween.Completed:Connect(function()
                        ClickButtonCircle:Destroy()
                end)

                expandTween:Play()
        end
        function lak(t, o)
                local a, b, c, d
                local function u(i)
                        local dt = i.Position - c
                        tw({v = o, t = 0.05, s = Enum.EasingStyle.Linear, d = "InOut", g = {Position = UDim2.new(d.X.Scale, d.X.Offset + dt.X, d.Y.Scale, d.Y.Offset + dt.Y)}}):Play()
                end
                t.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then a = true c = i.Position d = o.Position; i.Changed:Connect(function() if i.UserInputState == Enum.UserInputState.End then a = false end end) end end)
                t.InputChanged:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch then b = i end end)
                U.InputChanged:Connect(function(i) if i == b and a then u(i) end end)
        end
        function click(p)
                local Click = Instance.new("TextButton")

                Click.Name = "Click"
                Click.Parent = p
                Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Click.BackgroundTransparency = 1.000
                Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Click.BorderSizePixel = 0
                Click.Size = UDim2.new(1, 0, 1, 0)
                Click.Font = Enum.Font.SourceSans
                Click.Text = ""
                Click.TextColor3 = Color3.fromRGB(0, 0, 0)
                Click.TextSize = 14.000

                return Click
        end
        function background(pl, t, d, i, ty)
                local RealBackground = Instance.new("Frame")
                local Background = Instance.new("Frame")
                local UICorner_1 = Instance.new("UICorner")
                local T_1 = Instance.new("Frame")
                local UIListLayout_2 = Instance.new("UIListLayout")
                local UIPadding_3 = Instance.new("UIPadding")
                local TextLabel_1 = Instance.new("TextLabel")
                local TextLabel_2 = Instance.new("TextLabel")

                RealBackground.Name = "Real Background"
                RealBackground.Parent = pl
                RealBackground.BackgroundTransparency = 1
                RealBackground.BorderColor3 = Color3.fromRGB(0,0,0)
                RealBackground.BorderSizePixel = 0
                RealBackground.Size = UDim2.new(1, 0,0, 35)
                RealBackground.ClipsDescendants = true

                Background.Name = "Background"
                Background.Parent = RealBackground
                Background.BackgroundColor3 = Color3.fromRGB(29,28,38)
                Background.BorderColor3 = Color3.fromRGB(0,0,0)
                Background.BorderSizePixel = 0
                Background.Size = UDim2.new(1, 0,1, 0)
                Background.ClipsDescendants = true

                addToTheme('Function.'..ty..'.Background', Background)

                UICorner_1.Parent = Background

                T_1.Name = "T"
                T_1.Parent = Background
                T_1.AnchorPoint = Vector2.new(0, 0.5)
                T_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                T_1.BackgroundTransparency = 1
                T_1.BorderColor3 = Color3.fromRGB(0,0,0)
                T_1.BorderSizePixel = 0
                T_1.Position = UDim2.new(0, 0,0.5, 0)
                T_1.Size = UDim2.new(1, 0,1, 0)

                UIListLayout_2.Parent = T_1
                UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

                UIPadding_3.Parent = T_1
                UIPadding_3.PaddingLeft = UDim.new(0,13)
                UIPadding_3.PaddingRight = UDim.new(0,70)

                TextLabel_1.Parent = T_1
                TextLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                TextLabel_1.BackgroundTransparency = 1
                TextLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)
                TextLabel_1.BorderSizePixel = 0
                TextLabel_1.LayoutOrder = 1
                TextLabel_1.Size = UDim2.new(1, 0,0, 14)
                TextLabel_1.Font = Enum.Font.GothamBold
                TextLabel_1.RichText = true
                TextLabel_1.Text = tostring(d)
                TextLabel_1.TextColor3 = Color3.fromRGB(255,255,255)
                TextLabel_1.TextSize = 10
                TextLabel_1.TextTransparency = 0.699999988079071
                TextLabel_1.TextWrapped = true
                TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
                TextLabel_1.Visible = false
                TextLabel_1.AutomaticSize = Enum.AutomaticSize.Y
                TextLabel_1.Name = 'Desc'

                addToTheme('Text & Icon', TextLabel_1)

                TextLabel_2.Parent = T_1
                TextLabel_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
                TextLabel_2.BackgroundTransparency = 1
                TextLabel_2.BorderColor3 = Color3.fromRGB(0,0,0)
                TextLabel_2.BorderSizePixel = 0
                TextLabel_2.Size = UDim2.new(1, 0,0, 14)
                TextLabel_2.Font = Enum.Font.GothamBold
                TextLabel_2.RichText = true
                TextLabel_2.Text = tostring(t)
                TextLabel_2.TextColor3 = Color3.fromRGB(255,255,255)
                TextLabel_2.TextSize = 12
                TextLabel_2.TextWrapped = true
                TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
                TextLabel_2.AutomaticSize = Enum.AutomaticSize.Y
                TextLabel_2.Name = 'Title'

                addToTheme('Text & Icon', TextLabel_2)

                if d and d ~= "" then
                        TextLabel_1.Visible = true
                end

                if i and i ~= "" then
                        UIPadding_3.PaddingLeft = UDim.new(0, 50)
                        local Image = Instance.new("Frame")
                        local Icon_1 = Instance.new("ImageLabel")
                        local Frame_1 = Instance.new("Frame")

                        Image.Name = "Image"
                        Image.Parent = Background
                        Image.BackgroundColor3 = Color3.fromRGB(255,255,255)
                        Image.BackgroundTransparency = 1
                        Image.BorderColor3 = Color3.fromRGB(0,0,0)
                        Image.BorderSizePixel = 0
                        Image.Size = UDim2.new(0, 40,1, 0)

                        Icon_1.Name = "Icon"
                        Icon_1.Parent = Image
                        Icon_1.AnchorPoint = Vector2.new(0.5, 0.5)
                        Icon_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                        Icon_1.BackgroundTransparency = 1
                        Icon_1.BorderColor3 = Color3.fromRGB(0,0,0)
                        Icon_1.BorderSizePixel = 0
                        Icon_1.Position = UDim2.new(0.5, 0,0.5, 0)
                        Icon_1.Size = UDim2.new(0, 20,0, 20)
                        Icon_1.Image = gl(i).Image
                        Icon_1.ImageRectSize = gl(i).ImageRectSize
                        Icon_1.ImageRectOffset = gl(i).ImageRectPosition
                        Icon_1.ImageTransparency = 0.7

                        Frame_1.Parent = Image
                        Frame_1.AnchorPoint = Vector2.new(1, 0.5)
                        Frame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                        Frame_1.BackgroundTransparency = 0.8999999761581421
                        Frame_1.BorderColor3 = Color3.fromRGB(0,0,0)
                        Frame_1.BorderSizePixel = 0
                        Frame_1.Position = UDim2.new(1, 0,0.5, 0)
                        Frame_1.Size = UDim2.new(0, 1,0.699999988, 0)

                        addToTheme('Text & Icon', Icon_1)

                        addToTheme('Text & Icon', Frame_1)
                end

                local function updateSize()
                        task.defer(function()
                                local newSize = UIListLayout_2.AbsoluteContentSize.Y + 21
                                if RealBackground.Size.Y.Offset ~= newSize then
                                        RealBackground.Size = UDim2.new(1, 0, 0, newSize)
                                end
                        end)
                end

                delay(.1, updateSize)

                UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateSize)

                local f = {}

                function f:SetTextTransparencyTitle(vs)
                        tw({v = TextLabel_2, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {TextTransparency = vs}}):Play()
                        if i and i ~= "" then
                                tw({v = Background.Image.Icon, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {ImageTransparency = vs}}):Play()
                        end
                end

                function f:SetSizeT(vs)
                        UIPadding_3.PaddingRight = UDim.new(0, vs)
                end

                function f:SetTitle(vs)
                        TextLabel_2.Text = tostring(vs)
                end

                function f:SetDesc(vs)
                        TextLabel_1.Text = tostring(vs)
                        if vs and vs ~= "" then
                                TextLabel_1.Visible = true
                        else
                                TextLabel_1.Visible = false
                        end
                end

                function f:SetVisibleDesc(vs)
                        TextLabel_2.Visible = vs
                end

                return Background, f
        end
        function addDropdownSelect(p, p2, Multi, Callback, Value, List)
                local F = Instance.new("Frame")
                local UIListLayout_1 = Instance.new("UIListLayout")
                local UIPadding_1 = Instance.new("UIPadding")
                local DropdownValue = Instance.new("Frame")
                local UICorner_1 = Instance.new("UICorner")
                local UIStroke_1 = Instance.new("UIStroke")
                local TextLabelValue_1 = Instance.new("TextLabel")
                local UIPadding_2 = Instance.new("UIPadding")
                local ImageLabel_1 = Instance.new("ImageLabel")

                F.Name = "F"
                F.Parent = p
                F.AnchorPoint = Vector2.new(1, 0.5)
                F.BackgroundColor3 = Color3.fromRGB(255,255,255)
                F.BackgroundTransparency = 1
                F.BorderColor3 = Color3.fromRGB(0,0,0)
                F.BorderSizePixel = 0
                F.Position = UDim2.new(1, 0,0.5, 0)
                F.Size = UDim2.new(0, 120,0.800000012, 0)

                UIListLayout_1.Parent = F
                UIListLayout_1.Padding = UDim.new(0,15)
                UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
                UIListLayout_1.HorizontalAlignment = Enum.HorizontalAlignment.Right
                UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center

                UIPadding_1.Parent = F
                UIPadding_1.PaddingRight = UDim.new(0,13)

                DropdownValue.Parent = F
                DropdownValue.BackgroundColor3 = Color3.fromRGB(24,24,31)
                DropdownValue.BorderColor3 = Color3.fromRGB(0,0,0)
                DropdownValue.BorderSizePixel = 0
                DropdownValue.Size = UDim2.new(0, 100,0, 20)

                addToTheme('Function.Dropdown.Value Background', DropdownValue)

                UICorner_1.Parent = DropdownValue
                UICorner_1.CornerRadius = UDim.new(0,4)

                UIStroke_1.Parent = DropdownValue
                UIStroke_1.Color = Color3.fromRGB(255,255,255)
                UIStroke_1.Thickness = 1
                UIStroke_1.Transparency = 0.95

                addToTheme('Function.Dropdown.Value Stroke', UIStroke_1)

                TextLabelValue_1.Parent = DropdownValue
                TextLabelValue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                TextLabelValue_1.BackgroundTransparency = 1
                TextLabelValue_1.BorderColor3 = Color3.fromRGB(0,0,0)
                TextLabelValue_1.BorderSizePixel = 0
                TextLabelValue_1.Size = UDim2.new(0.8, 0,1, 0)
                TextLabelValue_1.Font = Enum.Font.GothamBold
                TextLabelValue_1.RichText = true
                TextLabelValue_1.Text = "--"
                TextLabelValue_1.TextColor3 = Color3.fromRGB(255,255,255)
                TextLabelValue_1.TextSize = 10
                TextLabelValue_1.TextTransparency = 0.3
                TextLabelValue_1.TextXAlignment = Enum.TextXAlignment.Left
                TextLabelValue_1.TextTruncate = Enum.TextTruncate.AtEnd

                addToTheme('Text & Icon', TextLabelValue_1)

                UIPadding_2.Parent = DropdownValue
                UIPadding_2.PaddingLeft = UDim.new(0,5)
                UIPadding_2.PaddingRight = UDim.new(0,5)

                ImageLabel_1.Parent = DropdownValue
                ImageLabel_1.AnchorPoint = Vector2.new(1, 0.5)
                ImageLabel_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                ImageLabel_1.BackgroundTransparency = 1
                ImageLabel_1.BorderColor3 = Color3.fromRGB(0,0,0)
                ImageLabel_1.BorderSizePixel = 0
                ImageLabel_1.Position = UDim2.new(1, 0,0.5, 0)
                ImageLabel_1.Size = UDim2.new(0, 20,0, 20)
                ImageLabel_1.Image = "rbxassetid://14937709869"
                ImageLabel_1.ImageTransparency = 0.3

                addToTheme('Text & Icon', ImageLabel_1)
                local DropdownSelect = Instance.new("Frame")
                local UICorner_1 = Instance.new("UICorner")
                local UIStrokeDropdown_1 = Instance.new("UIStroke")
                local UIPadding_1 = Instance.new("UIPadding")
                local Search_1 = Instance.new("Frame")
                local UICorner_2 = Instance.new("UICorner")
                local TextBox_1 = Instance.new("TextBox")
                local Frame_1 = Instance.new("Frame")
                local Frame_2 = Instance.new("Frame")
                local Frame_3 = Instance.new("Frame")
                local UICorner_3 = Instance.new("UICorner")
                local ScrollingFrame_1 = Instance.new("ScrollingFrame")
                local UIListLayout_1 = Instance.new("UIListLayout")
                local UIPadding_2 = Instance.new("UIPadding")
                local UIPadding_3 = Instance.new("UIPadding")
                local UIPadding_4 = Instance.new("UIPadding")

                DropdownSelect.Parent = ScreenGui
                DropdownSelect.BackgroundColor3 = Color3.fromRGB(24,24,31)
                DropdownSelect.BorderColor3 = Color3.fromRGB(0,0,0)
                DropdownSelect.BorderSizePixel = 0
                DropdownSelect.Size = UDim2.new(0, 150,0, 0)
                DropdownSelect.ClipsDescendants = true

                addToTheme('Function.Dropdown.Dropdown Select.Background', DropdownSelect)

                DropdownSelect.Position = UDim2.new(0, DropdownValue.AbsolutePosition.X - DropdownSelect.Parent.AbsolutePosition.X + DropdownValue.Size.X.Offset - 119, 0, DropdownValue.AbsolutePosition.Y - DropdownSelect.Parent.AbsolutePosition.Y + DropdownValue.Size.Y.Offset - 25)

                UICorner_1.Parent = DropdownSelect
                UICorner_1.CornerRadius = UDim.new(0,4)

                UIStrokeDropdown_1.Parent = DropdownSelect
                UIStrokeDropdown_1.Color = Color3.fromRGB(255,255,255)
                UIStrokeDropdown_1.Thickness = 1
                UIStrokeDropdown_1.Transparency = 1

                UIPadding_1.Parent = DropdownSelect
                UIPadding_1.PaddingBottom = UDim.new(0,5)
                UIPadding_1.PaddingLeft = UDim.new(0,5)
                UIPadding_1.PaddingRight = UDim.new(0,5)
                UIPadding_1.PaddingTop = UDim.new(0,5)

                Search_1.Name = "Search"
                Search_1.Parent = DropdownSelect
                Search_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Search_1.BackgroundTransparency = 0.949999988079071
                Search_1.BorderColor3 = Color3.fromRGB(0,0,0)
                Search_1.BorderSizePixel = 0
                Search_1.Size = UDim2.new(1, 0,0, 20)

                addToTheme('Function.Dropdown.Dropdown Select.Search', Search_1)

                UICorner_2.Parent = Search_1
                UICorner_2.CornerRadius = UDim.new(0,4)

                TextBox_1.Parent = Search_1
                TextBox_1.Active = true
                TextBox_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                TextBox_1.BackgroundTransparency = 1
                TextBox_1.BorderColor3 = Color3.fromRGB(0,0,0)
                TextBox_1.BorderSizePixel = 0
                TextBox_1.CursorPosition = -1
                TextBox_1.Size = UDim2.new(1, 0,1, 0)
                TextBox_1.Font = Enum.Font.Gotham
                TextBox_1.PlaceholderColor3 = Color3.fromRGB(178,178,178)
                TextBox_1.PlaceholderText = "Search . . ."
                TextBox_1.Text = ""
                TextBox_1.TextColor3 = Color3.fromRGB(255,255,255)
                TextBox_1.TextSize = 11

                addToTheme('Text & Icon', Search_1)

                addToTheme('Text & Icon', TextBox_1)

                Frame_1.Parent = Search_1
                Frame_1.AnchorPoint = Vector2.new(0, 1)
                Frame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Frame_1.BackgroundTransparency = 0.8999999761581421
                Frame_1.BorderColor3 = Color3.fromRGB(0,0,0)
                Frame_1.BorderSizePixel = 0
                Frame_1.Position = UDim2.new(0, 0,1, 0)
                Frame_1.Size = UDim2.new(1, 0,0, 2)

                Frame_2.Parent = DropdownSelect
                Frame_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Frame_2.BackgroundTransparency = 1
                Frame_2.BorderColor3 = Color3.fromRGB(0,0,0)
                Frame_2.BorderSizePixel = 0
                Frame_2.Size = UDim2.new(1, 0,1, 0)

                Frame_3.Parent = Frame_2
                Frame_3.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Frame_3.BackgroundTransparency = 0.949999988079071
                Frame_3.BorderColor3 = Color3.fromRGB(0,0,0)
                Frame_3.BorderSizePixel = 0
                Frame_3.Size = UDim2.new(1, 0,1,