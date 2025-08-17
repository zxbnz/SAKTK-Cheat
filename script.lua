-- Load Rayfield UI
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source.lua"))()

-- Create the window
local Window = Rayfield:CreateWindow({
    Name = "SAKTK Script v1.0 | by z2bn",
    LoadingTitle = "In Beta!",
    LoadingSubtitle = "by z2bn",
    ConfigurationSaving = {
        Enabled = false
    },
    Discord = {
        Enabled = false
    },
    KeySystem = false
})

-- Create a tab
local Tab = Window:CreateTab("Waypoints", 4483362458)

-- Define waypoints (you can change these positions)
local waypoints = {
    ["Ray-Gun"] = Vector3.new(0, 10, 0),
    ["Pack-A-Punch"] = Vector3.new(300, 150, -200),
    ["Secret Area (Key Room)"] = Vector3.new(-500, 20, 400)
}

-- Create buttons for each waypoint
for name, pos in pairs(waypoints) do
    Tab:CreateButton({
        Name = "Teleport to " .. name,
        Callback = function()
            local lp = game.Players.LocalPlayer
            if lp and lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
                lp.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
            end
        end
    })
end
