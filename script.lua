local waypoints = {
    ["Pack-A-Punch"] = Vector3.new(0, 10, 0),
    ["Secret Area (Key Room)"] = Vector3.new(300, 150, -200),
    ["Ray Gun"] = Vector3.new(-500, 20, 400)
}

local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source.lua"))()

local Window = Rayfield:CreateWindow({
    Name = "SAKTK Cheat",
    LoadingTitle = "V1.0,
    LoadingSubtitle = "by z2bn on discord",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "WaypointTeleporter"
    },
    Discord = {
        Enabled = false
    },
    KeySystem = false
})

local Tab = Window:CreateTab("Teleport", 4483362458) -- You can change the icon ID

for name, position in pairs(waypoints) do
    Tab:CreateButton({
        Name = "Teleport to " .. name,
        Callback = function()
            local player = game.Players.LocalPlayer
            if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
            end
        end
    })
end

