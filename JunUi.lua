getgenv().scripttitle = "awakenkn-like-femboys"
getgenv().FolderName = "Femboyawakenkn"
loadstring(game:HttpGet('https://raw.githubusercontent.com/Awakenchan/jan/main/JanModifiedSource'))()
-- [Legit Tab UI] ------------------------------------------------------------------------------------------------------------------------------------------------------------
local LegitTab = library:AddTab("Legit"); 
local LegitColunm1 = LegitTab:AddColumn();
local LegitMain = LegitColunm1:AddSection("Aim Assist")

LegitMain:AddDivider("Main");
LegitMain:AddToggle{
    default = false,
    text = "Enabled", 
    flag = "AimbotEnabled",
    callback = function(value)
        warn(value)
    end
}
LegitMain:AddSlider{text = "Aimbot FOV", flag = "AimbotFov", min = 0, max = 750, value = 105, suffix = "°"}
LegitMain:AddSlider{text = "Smoothing Factor", flag = "Smoothing", min = 0, max = 30, value = 3, suffix = "%"}
LegitMain:AddList({text = "Hit Box", flag = "AimbotHitbox", value = "Head", values = {"Head", "Torso"}});
LegitMain:AddList({text = "Aimbot Key", flag = "AimbotKey", value = "On Aim", values = {"On Aim", "On Shoot"}});
LegitMain:AddDivider("Draw Fov");
LegitMain:AddToggle{
    default = false,
    text = "Enabled", 
    flag = "CircleEnabled"}:AddColor({flag = "CircleColor", color = Color3.new(1, 1, 1),
    callback = function(value)
        warn(value)
    end
});
LegitMain:AddSlider{text = "Num Sides", flag = "CircleNumSides", min = 3, max = 48, value = 48, suffix = "°"}

local LegitSecond = LegitColunm1:AddSection("Extend Hitbox")
LegitSecond:AddDivider("Main");
LegitSecond:AddToggle{
    default = false,
    text = "Enabled",
    flag = "HitboxEnabled",
    callback = function(value)
        warn(value)
    end
}
LegitSecond:AddList({text = "Hit Box", flag = "ExtendHitbox", value = "Head", values = {"Head", "Torso"}});
LegitSecond:AddSlider{text = "Extend Rate", flag = "ExtendRate", min = 0, max = 10, value = 10, suffix = "%"}

local LegitThird = LegitColunm1:AddSection("Trigger Bot")
LegitThird:AddDivider("Main");
LegitThird:AddToggle{
    text = "Enabled", 
    flag = "TriggerEnabled"}:AddBind({flag = "TriggerBind", key = "One",
    callback = function(value)
        warn(value)
    end
});
LegitThird:AddSlider{text = "Trigger Speed", flag = "TriggerSpeed", min = 0, max = 1000, value = 10, suffix = "%"}

local LegitColunm2 = LegitTab:AddColumn();
local LegitForth = LegitColunm2:AddSection("Bullet Redirection")
LegitForth:AddDivider("Main");
LegitForth:AddToggle{
    default = false,
    text = "Enabled", 
    flag = "SilentAimEnabled",
    callback = function(value)
        warn(value)
    end
}
LegitForth:AddSlider{text = "Silent Aim FOV", flag = "SilentAimFOV", min = 0, max = 750, value = 105, suffix = "°"}
LegitForth:AddSlider{text = "Hit Chances", flag = "HitChances", min = 0, max = 100, value = 100, suffix = "%"}
LegitForth:AddList({text = "Redirection Mode", flag = "RedirectionMode", value = "P Mode", values = {"P Mode", "Normal Mode"}});
LegitForth:AddList({text = "Hit Box", flag = "SilentAimHitbox", value = "Head", values = {"Head", "Torso"}});
LegitForth:AddDivider("Draw Fov");
LegitForth:AddToggle{
    default = false,
    text = "Enabled", 
    flag = "Circle2Enabled"}:AddColor({flag = "Circle2Color", color = Color3.new(1, 1, 1),
    callback = function(value)
        warn(value)
    end
});
LegitForth:AddSlider{text = "Num Sides", flag = "Circle2NumSides", min = 3, max = 48, value = 48, suffix = "°"}
LegitForth:AddDivider("Checks");
LegitForth:AddToggle{
    default = false,
    text = "Enabled", 
    flag = "VisibleCheck",
    callback = function(value)
        warn(value)
    end
}

local LegitFifth = LegitColunm2:AddSection("Recoil Control")
LegitFifth:AddDivider("Main");
LegitFifth:AddToggle{
    default = false,
    text = "Enabled", 
    flag = "RecoilControlEnabled",
    callback = function(value)
        warn(value)
    end
}
LegitFifth:AddSlider{text = "Model Kick", flag = "ModelKick", min = 5, max = 100, value = 100, suffix = "%"}
LegitFifth:AddSlider{text = "Camera Kick", flag = "CameraKick", min = 5, max = 100, value = 100, suffix = "%"}

-- [Library Settings UI] -----------------------------------------------------------------------------------------------------------------------------------------------------
local SettingsTab = library:AddTab("Settings"); 
local SettingsColumn = SettingsTab:AddColumn(); 
local SettingsColumn2 = SettingsTab:AddColumn(); 
local SettingSection = SettingsColumn:AddSection("Menu"); 
local ConfigSection = SettingsColumn2:AddSection("Configs");
local Warning = library:AddWarning({type = "confirm"});

SettingSection:AddBind({text = "Open / Close", flag = "UI Toggle", nomouse = true, key = "End", callback = function()
    library:Close();
end});
SettingSection:AddButton({text = "Unload UI", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "<font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. 'Are you sure you wana unload the UI?' .. "</font>";
    if Warning:Show() then
     library:Unload()
    end
end});
SettingSection:AddColor({text = "Accent Color", flag = "Menu Accent Color", color = Color3.fromRGB(88,133,198), callback = function(color)
    if library.currentTab then
        library.currentTab.button.TextColor3 = color;
    end
    for i,v in pairs(library.theme) do
        v[(v.ClassName == "TextLabel" and "TextColor3") or (v.ClassName == "ImageLabel" and "ImageColor3") or "BackgroundColor3"] = color;
    end
end});

-- [Background List]
local backgroundlist = {
    Floral = "rbxassetid://5553946656",
    Flowers = "rbxassetid://6071575925",
    Circles = "rbxassetid://6071579801",
    Hearts = "rbxassetid://6073763717"
};

-- [Background List]
local back = SettingSection:AddList({text = "Background", max = 4, flag = "background", values = {"Floral", "Flowers", "Circles", "Hearts"}, value = "Floral", callback = function(v)
    if library.main then
        library.main.Image = backgroundlist[v];
    end
end});

-- [Background Color Picker]
back:AddColor({flag = "backgroundcolor", color = Color3.new(), callback = function(color)
    if library.main then
        library.main.ImageColor3 = Color or Color3.fromRGB(37,38,38)
    end
end, trans = 1, calltrans = function(trans)
    if library.main then
        library.main.ImageTransparency = 1 - trans;
    end
end});

-- [Tile Size Slider]
SettingSection:AddSlider({text = "Tile Size", min = 50, max = 500, value = 50, callback = function(size)
    if library.main then
        library.main.TileSize = UDim2.new(0, size, 0, size);
    end
end});

-- [Discord Button]
SettingSection:AddButton({text = "Discord", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "<font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. 'Discord invite copied to clip board!' .. "</font>";
    if Warning:Show() then
     setclipboard('discord.gg/awakenkn-gg')
    end
end});

-- [Config Box]
ConfigSection:AddBox({text = "Config Name", skipflag = true});

-- [Config List]
ConfigSection:AddList({text = "Configs", skipflag = true, value = "", flag = "Config List", values = library:GetConfigs()});

-- [Create Button]
ConfigSection:AddButton({text = "Create", callback = function()
    library:GetConfigs();
    writefile(library.foldername .. "/" .. library.flags["Config Name"] .. library.fileext, "{}");
    library.options["Config List"]:AddValue(library.flags["Config Name"]);
end});

-- [Save Button]
ConfigSection:AddButton({text = "Save", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to save the current settings to config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        library:SaveConfig(library.flags["Config List"]);
    end
end});

-- [Load Button]
ConfigSection:AddButton({text = "Load", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to load config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        library:LoadConfig(library.flags["Config List"]);
    end
end});

-- [Delete Button]
ConfigSection:AddButton({text = "Delete", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to delete then config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        local config = library.flags["Config List"];
        if table.find(library:GetConfigs(), config) and isfile(library.foldername .. "/" .. config .. library.fileext) then
            library.options["Config List"]:RemoveValue(config);
            delfile(library.foldername .. "/" .. config .. library.fileext);
        end
    end
end});

-- [Init] --------------------------------------------------------------------------------------------------------------------------------------------------------------------
library:Init();
library:selectTab(library.tabs[1]);getgenv().scripttitle = "awakenkn-like-femboys"
getgenv().FolderName = "Femboyawakenkn"
loadstring(game:HttpGet('https://raw.githubusercontent.com/Awakenchan/jan/main/JanModifiedSource'))()
-- [Legit Tab UI] ------------------------------------------------------------------------------------------------------------------------------------------------------------
local LegitTab = library:AddTab("Legit"); 
local LegitColunm1 = LegitTab:AddColumn();
local LegitMain = LegitColunm1:AddSection("Aim Assist")

LegitMain:AddDivider("Main");
LegitMain:AddToggle{
    default = false,
    text = "Enabled", 
    flag = "AimbotEnabled",
    callback = function(value)
        warn(value)
    end
}
LegitMain:AddSlider{text = "Aimbot FOV", flag = "AimbotFov", min = 0, max = 750, value = 105, suffix = "°"}
LegitMain:AddSlider{text = "Smoothing Factor", flag = "Smoothing", min = 0, max = 30, value = 3, suffix = "%"}
LegitMain:AddList({text = "Hit Box", flag = "AimbotHitbox", value = "Head", values = {"Head", "Torso"}});
LegitMain:AddList({text = "Aimbot Key", flag = "AimbotKey", value = "On Aim", values = {"On Aim", "On Shoot"}});
LegitMain:AddDivider("Draw Fov");
LegitMain:AddToggle{
    default = false,
    text = "Enabled", 
    flag = "CircleEnabled"}:AddColor({flag = "CircleColor", color = Color3.new(1, 1, 1),
    callback = function(value)
        warn(value)
    end
});
LegitMain:AddSlider{text = "Num Sides", flag = "CircleNumSides", min = 3, max = 48, value = 48, suffix = "°"}

local LegitSecond = LegitColunm1:AddSection("Extend Hitbox")
LegitSecond:AddDivider("Main");
LegitSecond:AddToggle{
    default = false,
    text = "Enabled",
    flag = "HitboxEnabled",
    callback = function(value)
        warn(value)
    end
}
LegitSecond:AddList({text = "Hit Box", flag = "ExtendHitbox", value = "Head", values = {"Head", "Torso"}});
LegitSecond:AddSlider{text = "Extend Rate", flag = "ExtendRate", min = 0, max = 10, value = 10, suffix = "%"}

local LegitThird = LegitColunm1:AddSection("Trigger Bot")
LegitThird:AddDivider("Main");
LegitThird:AddToggle{
    text = "Enabled", 
    flag = "TriggerEnabled"}:AddBind({flag = "TriggerBind", key = "One",
    callback = function(value)
        warn(value)
    end
});
LegitThird:AddSlider{text = "Trigger Speed", flag = "TriggerSpeed", min = 0, max = 1000, value = 10, suffix = "%"}

local LegitColunm2 = LegitTab:AddColumn();
local LegitForth = LegitColunm2:AddSection("Bullet Redirection")
LegitForth:AddDivider("Main");
LegitForth:AddToggle{
    default = false,
    text = "Enabled", 
    flag = "SilentAimEnabled",
    callback = function(value)
        warn(value)
    end
}
LegitForth:AddSlider{text = "Silent Aim FOV", flag = "SilentAimFOV", min = 0, max = 750, value = 105, suffix = "°"}
LegitForth:AddSlider{text = "Hit Chances", flag = "HitChances", min = 0, max = 100, value = 100, suffix = "%"}
LegitForth:AddList({text = "Redirection Mode", flag = "RedirectionMode", value = "P Mode", values = {"P Mode", "Normal Mode"}});
LegitForth:AddList({text = "Hit Box", flag = "SilentAimHitbox", value = "Head", values = {"Head", "Torso"}});
LegitForth:AddDivider("Draw Fov");
LegitForth:AddToggle{
    default = false,
    text = "Enabled", 
    flag = "Circle2Enabled"}:AddColor({flag = "Circle2Color", color = Color3.new(1, 1, 1),
    callback = function(value)
        warn(value)
    end
});
LegitForth:AddSlider{text = "Num Sides", flag = "Circle2NumSides", min = 3, max = 48, value = 48, suffix = "°"}
LegitForth:AddDivider("Checks");
LegitForth:AddToggle{
    default = false,
    text = "Enabled", 
    flag = "VisibleCheck",
    callback = function(value)
        warn(value)
    end
}

local LegitFifth = LegitColunm2:AddSection("Recoil Control")
LegitFifth:AddDivider("Main");
LegitFifth:AddToggle{
    default = false,
    text = "Enabled", 
    flag = "RecoilControlEnabled",
    callback = function(value)
        warn(value)
    end
}
LegitFifth:AddSlider{text = "Model Kick", flag = "ModelKick", min = 5, max = 100, value = 100, suffix = "%"}
LegitFifth:AddSlider{text = "Camera Kick", flag = "CameraKick", min = 5, max = 100, value = 100, suffix = "%"}

-- [Library Settings UI] -----------------------------------------------------------------------------------------------------------------------------------------------------
local SettingsTab = library:AddTab("Settings"); 
local SettingsColumn = SettingsTab:AddColumn(); 
local SettingsColumn2 = SettingsTab:AddColumn(); 
local SettingSection = SettingsColumn:AddSection("Menu"); 
local ConfigSection = SettingsColumn2:AddSection("Configs");
local Warning = library:AddWarning({type = "confirm"});

SettingSection:AddBind({text = "Open / Close", flag = "UI Toggle", nomouse = true, key = "End", callback = function()
    library:Close();
end});
SettingSection:AddButton({text = "Unload UI", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "<font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. 'Are you sure you wana unload the UI?' .. "</font>";
    if Warning:Show() then
     library:Unload()
    end
end});
SettingSection:AddColor({text = "Accent Color", flag = "Menu Accent Color", color = Color3.fromRGB(88,133,198), callback = function(color)
    if library.currentTab then
        library.currentTab.button.TextColor3 = color;
    end
    for i,v in pairs(library.theme) do
        v[(v.ClassName == "TextLabel" and "TextColor3") or (v.ClassName == "ImageLabel" and "ImageColor3") or "BackgroundColor3"] = color;
    end
end});

-- [Background List]
local backgroundlist = {
    Floral = "rbxassetid://5553946656",
    Flowers = "rbxassetid://6071575925",
    Circles = "rbxassetid://6071579801",
    Hearts = "rbxassetid://6073763717"
};

-- [Background List]
local back = SettingSection:AddList({text = "Background", max = 4, flag = "background", values = {"Floral", "Flowers", "Circles", "Hearts"}, value = "Floral", callback = function(v)
    if library.main then
        library.main.Image = backgroundlist[v];
    end
end});

-- [Background Color Picker]
back:AddColor({flag = "backgroundcolor", color = Color3.new(), callback = function(color)
    if library.main then
        library.main.ImageColor3 = Color or Color3.fromRGB(37,38,38)
    end
end, trans = 1, calltrans = function(trans)
    if library.main then
        library.main.ImageTransparency = 1 - trans;
    end
end});

-- [Tile Size Slider]
SettingSection:AddSlider({text = "Tile Size", min = 50, max = 500, value = 50, callback = function(size)
    if library.main then
        library.main.TileSize = UDim2.new(0, size, 0, size);
    end
end});

-- [Discord Button]
SettingSection:AddButton({text = "Discord", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "<font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. 'Discord invite copied to clip board!' .. "</font>";
    if Warning:Show() then
     setclipboard('discord.gg/awakenkn-gg')
    end
end});

-- [Config Box]
ConfigSection:AddBox({text = "Config Name", skipflag = true});

-- [Config List]
ConfigSection:AddList({text = "Configs", skipflag = true, value = "", flag = "Config List", values = library:GetConfigs()});

-- [Create Button]
ConfigSection:AddButton({text = "Create", callback = function()
    library:GetConfigs();
    writefile(library.foldername .. "/" .. library.flags["Config Name"] .. library.fileext, "{}");
    library.options["Config List"]:AddValue(library.flags["Config Name"]);
end});

-- [Save Button]
ConfigSection:AddButton({text = "Save", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to save the current settings to config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        library:SaveConfig(library.flags["Config List"]);
    end
end});

-- [Load Button]
ConfigSection:AddButton({text = "Load", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to load config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        library:LoadConfig(library.flags["Config List"]);
    end
end});

-- [Delete Button]
ConfigSection:AddButton({text = "Delete", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to delete then config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        local config = library.flags["Config List"];
        if table.find(library:GetConfigs(), config) and isfile(library.foldername .. "/" .. config .. library.fileext) then
            library.options["Config List"]:RemoveValue(config);
            delfile(library.foldername .. "/" .. config .. library.fileext);
        end
    end
end});

-- [Init] --------------------------------------------------------------------------------------------------------------------------------------------------------------------
library:Init();
library:selectTab(library.tabs[1]);
