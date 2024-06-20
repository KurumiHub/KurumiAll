local gamelist = {
        [17545130379] = "https://raw.githubusercontent.com/KurumiHub/KurumiAll/main/RoyalSeas.lua",
        [2961111240] = "https://raw.githubusercontent.com/KurumiHub/Kurumi4869/main/MonsterGhoul.lua",
    }
    local checkgame = gamelist[game.gameId]

    if gamelist[game.gameId] then
        getgenv().AuthTime = tick()
        loadstring(game:HttpGet(checkgame))()
    else
        game.Players.LocalPlayer:Kick("Game Not Support")
    end
