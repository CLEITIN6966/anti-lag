-- Script para remover os rostos dos jogadores no jogo

-- Função para remover a textura de rosto de um personagem
local function removeFace(character)
    -- Verifica se o personagem possui uma cabeça
    local head = character:FindFirstChild("Head")
    if head then
        -- Procura pelo objeto Face dentro da cabeça
        local face = head:FindFirstChild("face")
        if face and face:IsA("Decal") then
            -- Remove a textura definindo a propriedade TextureId como uma string vazia
            face.Texture = ""
        end
    end
end

-- Itera sobre todos os jogadores no jogo
for _, player in ipairs(game.Players:GetPlayers()) do
    -- Verifica se o jogador tem um personagem
    if player.Character then
        removeFace(player.Character)
    end
end

-- Observa a adição de novos jogadores e remove o rosto de seus personagens
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        removeFace(character)
    end)
end)
