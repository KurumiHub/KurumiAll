local gamelist = {
        [2961111240] = "https://raw.githubusercontent.com/KurumiHub/Kurumi4869/main/MONSTERGHOUL.lua"
    }
    local checkgame = gamelist[game.gameId]

    if gamelist[game.gameId] then
        getgenv().AuthTime = tick()
        loadstring(game:HttpGet(checkgame))()
    else
        game.Players.LocalPlayer:Kick("Game Not Support")
    end
