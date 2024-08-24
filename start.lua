-- Script para carregar e executar os scripts de anti-lag

-- Função para executar um script de URL
local function executeScript(url)
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url))()
    end)
    if not success then
        warn("Falha ao executar o script de URL: " .. url .. "\nErro: " .. tostring(result))
    end
end

-- URLs dos scripts
local urls = {
    "https://raw.githubusercontent.com/CLEITIN6966/anti-lag/main/removetextures.lua",
    "https://raw.githubusercontent.com/CLEITIN6966/anti-lag/main/removefaces.lua",
    "https://raw.githubusercontent.com/CLEITIN6966/anti-lag/main/removetexturessky.lua"
}

-- Executar cada script
for _, url in ipairs(urls) do
    executeScript(url)
end
