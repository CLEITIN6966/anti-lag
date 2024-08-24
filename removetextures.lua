-- Script para remover texturas apenas dos objetos pertencentes ao jogador que está executando o script

-- Obtém o jogador que está executando o script
local player = game.Players.LocalPlayer

-- Função para remover texturas de um objeto
local function removeTextures(object)
    -- Verifica se o objeto tem uma propriedade 'TextureID'
    if object:IsA("BasePart") then
        local material = object.Material
        if material == Enum.Material.SmoothPlastic or material == Enum.Material.Plastic then
            -- Remove a textura definindo o TextureID como nil
            object.TextureID = ""
        end
    end

    -- Itera sobre todos os filhos do objeto
    for _, child in ipairs(object:GetChildren()) do
        removeTextures(child)
    end
end

-- Verifica se o jogador tem um personagem
if player and player.Character then
    -- Inicia a remoção de texturas a partir do personagem do jogador
    removeTextures(player.Character)
end
