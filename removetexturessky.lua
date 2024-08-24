-- Script para definir o céu como cinza

local function setSkyToGray()
    local lighting = game:GetService("Lighting")

    -- Ajusta a cor ambiente e de fundo para cinza
    lighting.Ambient = Color3.fromRGB(128, 128, 128)  -- Cinza
    lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)  -- Cinza
    lighting.BackgroundColor3 = Color3.fromRGB(128, 128, 128)  -- Cinza

    -- Remove qualquer objeto Sky existente
    for _, child in ipairs(lighting:GetChildren()) do
        if child:IsA("Sky") then
            child:Destroy()
        end
    end

    -- Adiciona um novo objeto Sky com cor cinza
    local sky = Instance.new("Sky")
    sky.Name = "GraySky"
    sky.SkyboxBk = "rbxassetid://0"  -- Sem textura de fundo
    sky.SkyboxDn = "rbxassetid://0"  -- Sem textura de baixo
    sky.SkyboxFt = "rbxassetid://0"  -- Sem textura de frente
    sky.SkyboxLf = "rbxassetid://0"  -- Sem textura de esquerda
    sky.SkyboxRt = "rbxassetid://0"  -- Sem textura de direita
    sky.SkyboxUp = "rbxassetid://0"  -- Sem textura de cima
    sky.Parent = lighting
end

-- Configura o céu para cinza
setSkyToGray()
