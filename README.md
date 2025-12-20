-- ts file was generated at discord.gg/25ms


local v1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptCentral-br/LibraryCentral/refs/heads/main/sc", true))():MakeWindow({
    Name = "LEO MENU HUB",
    SearchBar = "Default",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = nil
})
local vu2 = "https://t.me/LEOMODZ3"
local vu3 = "rbxassetid://4483345998"
local v4 = "rbxassetid://108776114629126"
local v5 = "rbxassetid://85398723149532"
local function v6()
    OrionLib:MakeNotification({
        Name = "Link Copiado!",
        Content = "O link de Telagram foi copiado para sua \195\161rea de transfer\195\170ncia.",
        Image = vu3,
        Time = 5
    })
    setclipboard(vu2)
end
local function v11(p7, pu8, pu9, pu10)
    p7:AddButton({
        Name = pu8,
        Callback = function()
            loadstring(game:HttpGet(pu9, true))()
            if pu10 then
                OrionLib:MakeNotification({
                    Name = pu8,
                    Content = pu10,
                    Image = vu3,
                    Time = 5
                })
            end
        end
    })
end
local v12 = v1:MakeTab({
    Name = "Telegram",
    Icon = "rbxassetid://90685941326593",
    PremiumOnly = false
})
v12:AddSection({
    Name = "Link do Telegram"
}):AddButton({
    Name = "Copiar Link do Telegram",
    Callback = v6
})
v12:AddSection({
    Name = vu2
}):AddButton({
    Name = vu2,
    Callback = v6
})
local v13 = v1:MakeTab({
    Name = "Atualiza\195\167\195\181es",
    Icon = v5,
    PremiumOnly = false
})
v13:AddSection({
    Name = "Atualiza\195\167\195\181es"
})
v13:AddLabel("Futuras atualiza\195\167\195\181es ser\195\163o listadas aqui.")
v13:AddSection({
    Name = "Nova Atualiza\195\167\195\163o"
})
v13:AddLabel("O script foi otimizado e novos scripts foram adicionados!")
local v14 = v13:AddSection({
    Name = "discord.gg"
})
v13:AddLabel("Tem uma sugest\195\163o de script? Entre no Discord!")
v14:AddButton({
    Name = vu2,
    Callback = v6
})
local v15 = v1:MakeTab({
    Name = "Configura\195\167\195\163o",
    Icon = v5,
    PremiumOnly = false
})
v15:AddSection({
    Name = "Se\195\167\195\163o de Configura\195\167\195\181es"
})
v15:AddLabel("Otimize seu jogo para melhor FPS")
v15:AddButton({
    Name = "Ativar Otimizador",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptCentral-br/Otimizador/refs/heads/main/Otimizador.md"))()
        OrionLib:MakeNotification({
            Name = "Otimizador Ativado",
            Content = "O script otimizador foi executado com sucesso.",
            Image = vu3,
            Time = 5
        })
    end
})
v1:MakeTab({
    Name = "Universal Admin",
    Icon = v5,
    PremiumOnly = false
}):AddSection({
    Name = "Universal Admin"
}):AddButton({
    Name = "Executar Universal Admin",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerScripter/Game-Hub/main/loader"))()
        OrionLib:MakeNotification({
            Name = "Universal Admin",
            Content = "O script foi executado com sucesso!",
            Image = vu3,
            Time = 5
        })
    end
})
local v16 = v1:MakeTab({
    Name = "Fisch",
    Icon = v4,
    PremiumOnly = false
})
v16:AddSection({
    Name = "Se\195\167\195\163o Fisch"
})
v11(v16, "Naoki Hub", "https://naokihub.vercel.app")
v11(v16, "Aussie WIRE", "https://api.luarmor.net/files/v3/loaders/4f5c7bbe546251d81e9d3554b109008f.lua")
v11(v16, "Speed Hub X", "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua")
v11(v16, "Forge Hub", "https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua")
v11(v16, "Goomba Hub", "https://raw.githubusercontent.com/JustLevel/goombahub/main/fisch.lua")
v11(v16, "Project Spectrum", "https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/Loader.lua")
v11(v16, "Rinns Hub", "https://raw.githubusercontent.com/kylosilly/femboyware/refs/heads/main/Fisch.lua")
v11(v16, "Moon X", "https://api.luarmor.net/files/v3/loaders/cba17b913ee63c7bfdbb9301e2d87c8b.lua")
v11(v16, "Bonk Hub", "https://bonkhubloader.netlify.app", "Executed")
local v17 = v1:MakeTab({
    Name = "Blox Fruits",
    Icon = v4,
    PremiumOnly = false
})
v17:AddSection({
    Name = "Blox Fruits"
})
v11(v17, "Red Z Hub", "https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua")
v11(v17, "Blox Fruits V2 (Pc/Mobile)", "https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Kncrypt/refs/heads/main/sources/BloxFruit.lua")
v11(v17, "Mama Hub (Pc/Mobile)", "https://raw.githubusercontent.com/MAMAhub1/Mmahub/main/README.md")
v11(v17, "Rua hub", "https://raw.githubusercontent.com/daviduts1/rua-hub/main/auto%20bouty")
v11(v17, "Speed Hub", "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua")
v11(v17, "MTriet Hub", "https://raw.githubusercontent.com/Minhtriettt/Free-Script/main/MTriet-Hub.lua")
v11(v17, "Mukuru Hub", "https://auth.quartyz.com/scripts/Loader.lua")
v11(v17, "Domadic Hub", "https://raw.githubusercontent.com/Domadicoof/Domadicoof/main/Domadichub/NottoGay/Start.ranscript")
v17:AddButton({
    Name = "W-Azure",
    Callback = function()
        getgenv().Team = "Pirates"
        getgenv().FixCrash = false
        getgenv().FixCrash2 = false
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
    end
})
v11(v17, "HoHo Hub (Tem Key)", "https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI")
local v18 = v1:MakeTab({
    Name = "99 Nights in the Forest",
    Icon = v4,
    PremiumOnly = false
})
v18:AddSection({
    Name = "99 Nights in the Forest"
})
v11(v18, "Iliankytb", "https://raw.githubusercontent.com/Iliankytb/Iliankytb/main/Best99NightsInTheForest")
v11(v18, "SpaceHub", "https://raw.githubusercontent.com/ago106/SpaceHub/refs/heads/main/loader.lua")
v11(v18, "Gad_Forest (Discord)", "https://pastebin.com/raw/gHQGTNYH")
v11(v18, "KiKiWare", "https://raw.githubusercontent.com/KiKi-Ware/Roblox/refs/heads/main/Key")
v11(v18, "H4xScripts", "https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/loader.lua")
v11(v18, "Adibhub1", "https://raw.githubusercontent.com/adibhub1/99-nighit-in-forest/refs/heads/main/99%20night%20in%20forest")
v11(v18, "Hutao Hub", "https://raw.githubusercontent.com/SLK-gaming/Hutao-Hub/refs/heads/main/99-Nights-In-The-Forest.txt")
v11(v18, "Voidware", "https://raw.githubusercontent.com/VapeVoidware/VWExtra/main/NightsInTheForest.lua")
v11(v18, "Moon Hub", "https://raw.githubusercontent.com/m00ndiety/99-nights-in-the-forest/refs/heads/main/Main")
v11(v18, "Speed-Hub-X", "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua")
v11(v18, "Arvotheon", "https://get-arvotheon-ontop.netlify.app/Loader.lua", "Mensagem de notifica\195\167\195\163o personalizada")
local v19 = v1:MakeTab({
    Name = "GrowAGarden",
    Icon = v4,
    PremiumOnly = false
})
v19:AddSection({
    Name = "GrowAGarden"
})
v11(v19, "Speed Hub X", "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua")
v11(v19, "Solix Hub", "https://raw.githubusercontent.com/debunked69/solixloader/refs/heads/main/solix%20v2%20new%20loader.lua")
v11(v19, "No-Lag", "https://raw.githubusercontent.com/NoLag-id/No-Lag-HUB/refs/heads/main/Loader/LoaderV1.lua")
v11(v19, "H4xScripts", "https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/loader2.lua")
v11(v19, "Koronis", "https://raw.githubusercontent.com/nf-36/Koronis/refs/heads/main/Scripts/Loader.lua")
v11(v19, "AlterHub", "https://raw.githubusercontent.com/frvaunted/Main/refs/heads/main/Alter%20Hub")
v11(v19, "Nebula Xyzs", "https://raw.githubusercontent.com/Nebula-xyzs/GAG/refs/heads/main/GrowAGardenXE")
v11(v19, "NatHub V2", "https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/NatHub.lua")
v11(v19, "NatHub", "https://raw.githubusercontent.com/greywaterstill/GAG/refs/heads/main/nathub.lua")
v11(v19, "ThunderZ Hub", "https://raw.githubusercontent.com/ThunderZ-05/HUB/main/Script")
v11(v19, "Y Hub", "https://raw.githubusercontent.com/yue-os/script/refs/heads/main/Y-Hub")
v11(v19, "AVOnTop", "https://raw.githubusercontent.com/nootmaus/GrowAAGarden/refs/heads/main/mauscripts")
v11(v19, "Frzey Hub", "https://raw.githubusercontent.com/FryzerHub/loading-Gui/refs/heads/main/grow%20a%20garden%20v1")
v11(v19, "Mauscripts", "https://raw.githubusercontent.com/nootmaus/GrowAAGarden/refs/heads/main/mauscripts", "Executed")
local v20 = v1:MakeTab({
    Name = "Steal a Brainrot",
    Icon = v4,
    PremiumOnly = false
})
v20:AddSection({
    Name = "Steal a Brainrot"
})
v11(v20, "Ronix Hub", "pastebin.com/raw/HFx6faQY")
v11(v20, "Lurk Hack", "https://raw.githubusercontent.com/egor2078f/lurkhackv4/refs/heads/main/main.lua")
v11(v20, "Moondiety", "https://raw.githubusercontent.com/m00ndiety/Steal-a-brainrot/refs/heads/main/Steal-a-Brainrot")
v11(v20, "Timmy Hub", "https://raw.githubusercontent.com/WinzeTim/timmyhack2/refs/heads/main/stealabrainrot.lua")
v11(v20, "Arbix Hub", "https://raw.githubusercontent.com/Youifpg/Steal-a-Brainrot-op/refs/heads/main/Arbixhub-obfuscated.lua")
v11(v20, "AVTHOnTop", "https://get-avth-ontop.netlify.app/my-paste/script.lua")
v11(v20, "Prime", "pastebin.com/raw/q8Q3Ff8F")
v11(v20, "Utopia Utility", "https://raw.githubusercontent.com/Klinac/scripts/main/steal_a_brainrot.lua")
v11(v20, "Script 1", "https://pastebin.com/raw/2WEXn2UR")
v11(v20, "Frostware", "https://raw.githubusercontent.com/Jake-Brock/Scripts/main/Fw%20SAB.lua")
v11(v20, "Chili Hub", "https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua", "Executed")
local v21 = v1:MakeTab({
    Name = "All Star Tower Defense X",
    Icon = v4,
    PremiumOnly = false
})
v21:AddSection({
    Name = "All Star Tower Defense X"
})
v11(v21, "Demonic Hub V2", "https://nousigi.com/loader.lua")
v11(v21, "Try\'s Hub", "https://raw.githubusercontent.com/Tyrphes/Tyr-s-Hub/refs/heads/main/main.lua")
v11(v21, "Legend Hub", "https://pastefy.app/ULaWpxKm/raw")
v11(v21, "Xenith Hub", "https://api.luarmor.net/files/v4/loaders/d7be76c234d46ce6770101fded39760c.lua")
v11(v21, "Nousigi Hub", "https://nousigi.com/loader.lua")
v11(v21, "Jimi Hub", "https://raw.githubusercontent.com/bunnnwee/JimiHub/refs/heads/main/ASTDX-Normal")
v11(v21, "Akatsuki Hub", "https://raw.githubusercontent.com/AkatsukiHub1/STARX/refs/heads/main/README.md", "Executed")
local v22 = v1:MakeTab({
    Name = "Dead Rails",
    Icon = v4,
    PremiumOnly = false
})
v22:AddSection({
    Name = "Dead Rails"
})
v11(v22, "Tbao Hub", "https://raw.githubusercontent.com/tbao143/thaibao/refs/heads/main/TbaoHubDeadRails")
v11(v22, "DHHz Hub", "https://raw.githubusercontent.com/ducknovis/DHHz-hub/refs/heads/main/Dead-Rails.lua")
v11(v22, "NullWare", "https://raw.githubusercontent.com/Unknownlodfc/Zephyr/refs/heads/main/DeadRails/Main")
v11(v22, "Rift", "https://rifton.top/loader.lua")
v11(v22, "Kicahook V2", "https://raw.githubusercontent.com/kiciahook/kiciahook/refs/heads/main/loader.lua")
v11(v22, "Johnnie Hub", "https://raw.githubusercontent.com/luwriy/jwhub/refs/heads/main/loader")
v11(v22, "The Darkones", "https://raw.githubusercontent.com/TheDarkoneMarcillisePex/Other-Scripts/refs/heads/main/Dead%20Rails%20GUI")
v11(v22, "Qiwik Hub", "https://raw.githubusercontent.com/Qiwikox12/stubrawl/refs/heads/main/DeadRails.txtl")
v11(v22, "Moon", "https://raw.githubusercontent.com/m00ndiety/Moondiety/refs/heads/main/Loader")
v11(v22, "Hoho Hub", "https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI", "Executed")
local v23 = v1:MakeTab({
    Name = "A Dusty Trip",
    Icon = v4,
    PremiumOnly = false
})
v23:AddSection({
    Name = "A Dusty Trip"
})
v11(v23, "Strom", "https://raw.githubusercontent.com/artemy133563/Utilities/main/ADustyTrip")
v11(v23, "Connect Hub", "https://raw.githubusercontent.com/artemy133563/Utilities/main/ADustyTrip")
v11(v23, "Script 1", "https://raw.githubusercontent.com/KGuestCheatsJReal/ComeBack/refs/heads/main/ADustyTripGodMode")
local v24 = v1:MakeTab({
    Name = "Blue Lock: Rivals",
    Icon = v4,
    PremiumOnly = false
})
v24:AddSection({
    Name = "Blue Lock: Rivals"
})
v11(v24, "Alchemy Hub", "https://scripts.alchemyhub.xyz")
v11(v24, "Exuse Hub", "https://raw.githubusercontent.com/BexruzScripts/Blue-lock-no-cd-reo-get-any-style-script.-WORKS-WITH-WORLD-CLASSES-/refs/heads/main/script.lua")
v11(v24, "FekHub", "https://raw.githubusercontent.com/FeykHere/FeykhubOrignal/refs/heads/main/Feykhubloader")
v11(v24, "Style Selector", "https://pastebin.com/raw/D1M2PLua", "Executed")
local v25 = v1:MakeTab({
    Name = "Forsaken",
    Icon = v4,
    PremiumOnly = false
})
v25:AddSection({
    Name = "Forsaken"
})
v11(v25, "Sigmaboy", "https://raw.githubusercontent.com/sigmaboy-sigma-boy/Stamina-Settings-and-ESP/refs/heads/main/SigmasakenLoader")
v11(v25, "Funny Hub V2", "https://raw.githubusercontent.com/PlutomasterAccount/Funny-Hub-V2-Forsaken/refs/heads/main/Funny%20Hub%20V2%20Forsaken.lua")
v11(v25, "Moon Pc/Mobile", "https://raw.githubusercontent.com/m00ndiety/Forsaken/refs/heads/main/Forsaken.lua")
v11(v25, "Lunix Hub", "https://raw.githubusercontent.com/Dzgak/xrurus/refs/heads/main/farsaken.lua")
v11(v25, "Mandy Hub", "https://raw.githubusercontent.com/MaybeNotMandy/forsaken/refs/heads/main/sae")
v11(v25, "Space Hub", "https://raw.githubusercontent.com/ago106/SpaceHub/refs/heads/main/loader.lua")
local v26 = v1:MakeTab({
    Name = "King Legacy",
    Icon = v4,
    PremiumOnly = false
})
v26:AddSection({
    Name = "King Legacy"
})
v11(v26, "Tsuo Hub", "https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/king%20legacy")
v11(v26, "Arc Hub", "https://pastebin.com/raw/q7j7nAf0", "Executed")
local v27 = v1:MakeTab({
    Name = "Ink Game",
    Icon = v4,
    PremiumOnly = false
})
v27:AddSection({
    Name = "Ink Game"
})
v11(v27, "Revive Hub", "https://raw.githubusercontent.com/Have3165/Reviv3-Hub/refs/heads/main/InkGame")
v11(v27, "Napoleon", "https://raw.githubusercontent.com/raydjs/napoleonHub/refs/heads/main/src.lua")
v11(v27, "Ink Game Boost", "https://raw.githubusercontent.com/ArtChivegroup/Roblox/refs/heads/main/script/ink-game.lua")
v11(v27, "Siff", "https://api.luarmor.net/files/v3/loaders/284c7c5eb4a430a82162018c617e9aa0.lua", "Executed")
local v28 = v1:MakeTab({
    Name = "Pet Simulator 99",
    Icon = v4,
    PremiumOnly = false
})
v28:AddSection({
    Name = "Pet Simulator 99"
})
v11(v28, "Reaper Hub", "https://raw.githubusercontent.com/AyoReaper/Reaper-Hub/refs/heads/main/loader.lua")
v11(v28, "Infinity Ware", "https://raw.githubusercontent.com/bubblescripts/scripts/refs/heads/main/PS99/psgo")
v11(v28, "6FootScript", "https://raw.githubusercontent.com/SlamminPig/6FootScripts/main/Scripts/PetSimulator99.lua")
v11(v28, "Aussie WIRE", "https://api.luarmor.net/files/v3/loaders/4f5c7bbe546251d81e9d3554b109008f.lua")
v11(v28, "Zap Hub", "https://zaphub.xyz/Exec", "Executed")
local v29 = v1:MakeTab({
    Name = "Da Hood",
    Icon = v4,
    PremiumOnly = false
})
v29:AddSection({
    Name = "Da Hood"
})
v11(v29, "SwagMode", "https://pastecode.dev/raw/0VplHVK0pQ/Script%20da%20hood%20scarlet")
v11(v29, "ZAPPED V3 GUI", "https://raw.githubusercontent.com/grekkk/relases/main/zapped.lua")
v11(v29, "VORTEX GUI", "https://raw.githubusercontent.com/ImagineProUser/vortexdahood/main/vortex")
v11(v29, "Zinc Hub", "https://raw.githubusercontent.com/Zinzs/luascripting/main/canyoutellitsadahoodscriptornot.lua", "Executed")
local v30 = v1:MakeTab({
    Name = "Anime Last Stand",
    Icon = v4,
    PremiumOnly = false
})
v30:AddSection({
    Name = "Anime Last Stand"
})
v11(v30, "Demonic HUB V2", "https://raw.githubusercontent.com/Alan0947383/Demonic-HUB-V2/main/S-C-R-I-P-T.lua")
v11(v30, "Buang Hub", "https://raw.githubusercontent.com/buang5516/buanghub/main/animeLastStand.lua", "Executed")
local v31 = v1:MakeTab({
    Name = "Jujutsu Infinite",
    Icon = v4,
    PremiumOnly = false
})
v31:AddSection({
    Name = "Jujutsu Infinite"
})
v11(v31, "Noble Hub", "https://api.luarmor.net/files/v3/loaders/21cecfc256321e341fbe9a0a2df5a564.lua")
v11(v31, "Vexium Hub", "https://api.luarmor.net/files/v3/loaders/e7d06aa370f8abb9e1a9bd5bd9c80c7d.lua")
v11(v31, "SolixHub", "https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua")
v11(v31, "Free Hub", "https://raw.githubusercontent.com/Nate7z/JujutsuInfinite/refs/heads/main/Main.lua", "Executed")
local v32 = v1:MakeTab({
    Name = "Squid Game X",
    Icon = v4,
    PremiumOnly = false
})
v32:AddSection({
    Name = "Squid Game X"
})
v11(v32, "Rip V2", "https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/SquidGameX.lua", "Executed")
local v33 = v1:MakeTab({
    Name = "Anime Fighters Simulator",
    Icon = v4,
    PremiumOnly = false
})
v33:AddSection({
    Name = "Anime Fighters Simulator"
})
v11(v33, "Platinum Hub", "https://raw.githubusercontent.com/ZaRdoOx/Loader/main/PlatiniumLoader")
v11(v33, "TinyTask Hub", "https://raw.githubusercontent.com/juNstring/cracks/main/TinyTask%20Hub/loader.lua")
v11(v33, "JKHub", "https://raw.githubusercontent.com/KiJinGaming/FreeScript/main/KJHub.lua")
v11(v33, "Zer0 Hub", "https://raw.githubusercontent.com/JuninhoOGado/ScriptsSite/main/Script276", "Executed")
local v34 = v1:MakeTab({
    Name = "Vox Seas",
    Icon = v4,
    PremiumOnly = false
})
v34:AddSection({
    Name = "Vox Seas"
})
v11(v34, "Script 2", "https://raw.githubusercontent.com/meobeo8/type/main/Loader")
v11(v34, "Script 1", "https://raw.githubusercontent.com/mazino45/main/refs/heads/main/MainScript.lua")
v11(v34, "Nexus Hub", "https://raw.githubusercontent.com/CrazyHub123/NexusHubRevival/refs/heads/main/NewLoader.lua", "Executed")
local v35 = v1:MakeTab({
    Name = "Adopt Me",
    Icon = v4,
    PremiumOnly = false
})
v35:AddSection({
    Name = "Adopt Me"
})
v11(v35, "V.G HUB", "https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub")
v11(v35, "IceHub", "https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhavenl")
v11(v35, "Script 2", "https://raw.githubusercontent.com/NoahBLW/roseautofarm/refs/heads/main/autofarm.lual")
v11(v35, "Script 1", "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/AdoptMeEvent")
v11(v35, "Jul Hub", "https://raw.githubusercontent.com/JulHubz/JulHub/main/JulHub", "Executed")
local v36 = v1:MakeTab({
    Name = "Murder Mystery 2",
    Icon = v4,
    PremiumOnly = false
})
v36:AddSection({
    Name = "Murder Mystery 2"
})
v11(v36, "YARHM", "https://raw.githubusercontent.com/JuninhoOGado/ScriptsSite/main/Script282")
v11(v36, "Azure 1.2", "https://gist.githubusercontent.com/Raiden84200/84e60fdd20e2d13751f9ad657c8f0a9d/raw/81a130176baf8072b729d6d11549487d283abbee/Lua")
v11(v36, "Aussie WIRE", "https://api.luarmor.net/files/v3/loaders/4f5c7bbe546251d81e9d3554b109008f.lua")
v11(v36, "Nexus Hub", "https://raw.githubusercontent.com/s-o-a-b/nexus/main/loadstring", "Executed")
local v37 = v1:MakeTab({
    Name = "Anime Vanguard",
    Icon = v4,
    PremiumOnly = false
})
v37:AddSection({
    Name = "Anime Vanguard"
})
v11(v37, "Speed Hub X", "https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Anime%20Vanguards.lua")
v11(v37, "AtherHub", "https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua")
v11(v37, "Solix Hub", "https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua")
v11(v37, "Buang Hub", "https://raw.githubusercontent.com/buang5516/buanghub/main/BUANGHUB.lua")
v11(v37, "Godor", "https://raw.githubusercontent.com/godor1010/godor/refs/heads/main/anime_vanguards_")
v11(v37, "Star Hub", "https://raw.githubusercontent.com/Tilitestaccount/Star-Hub-Files/refs/heads/main/Star%20Hub%20Free", "Executed")
local v38 = v1:MakeTab({
    Name = "Jujutsu Shenanigans",
    Icon = v4,
    PremiumOnly = false
})
v38:AddSection({
    Name = "Jujutsu Shenanigans"
})
v11(v38, "NS HUB", "https://raw.githubusercontent.com/OhhMyGehlee/solj/main/ne")
v11(v38, "Plutonium Lua", "https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/main/Plutonium.Loader.lua")
v11(v38, "Xenon Hub", "https://api.luarmor.net/files/v3/loaders/7fe29a6a9dc2a08c84b8e2f0f5ef5810.lua", "Executed")
local v39 = v1:MakeTab({
    Name = "Shindo Life",
    Icon = v4,
    PremiumOnly = false
})
v39:AddSection({
    Name = "Shindo Life"
})
v11(v39, "Raum Hub", "https://raw.githubusercontent.com/XDima2/XDima2/main/RaumHub")
v11(v39, "SolixHub", "https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua")
v11(v39, "Project Nexus", "https://raw.githubusercontent.com/IkkyyDF/ProjectNexus/main/Loader.lua", "Executed")
local v40 = v1:MakeTab({
    Name = "A Universal Time",
    Icon = v4,
    PremiumOnly = false
})
v40:AddSection({
    Name = "A Universal Time"
})
v11(v40, "Desire Hub", "https://raw.githubusercontent.com/welomenchaina/Desire-s/refs/heads/main/desire%20hub%20rules")
v11(v40, "Flame\'s Hub", "https://raw.githubusercontent.com/JuninhoOGado/ScriptsSite/main/Script287", "Executed")
local v41 = v1:MakeTab({
    Name = "Anime Shadow",
    Icon = v4,
    PremiumOnly = false
})
v41:AddSection({
    Name = "Anime Shadow"
})
v11(v41, "Legend Handles", "https://raw.githubusercontent.com/LOLking123456/05/refs/heads/main/Vanguards")
v11(v41, "Deng Hub", "https://raw.githubusercontent.com/DENGHUB2025/HUGHUB/main/WL")
v11(v41, "Omgshit", "https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua", "Executed")
local v42 = v1:MakeTab({
    Name = "Anime Slashing Simulator",
    Icon = v4,
    PremiumOnly = false
})
v42:AddSection({
    Name = "Anime Slashing Simulator"
})
v11(v42, "NAMI HUB", "https://raw.githubusercontent.com/ByNami/dkhub/main/Script")
v11(v42, "Script 2", "https://raw.githubusercontent.com/Whoisgrace0/Main/main/LOL.lua")
v11(v42, "Script 1", "https://raw.githubusercontent.com/ToraScript/Script/main/AnimeSlashing", "Executed")
local v43 = v1:MakeTab({
    Name = "Anime Crossover Defense",
    Icon = v4,
    PremiumOnly = false
})
v43:AddSection({
    Name = "Anime Crossover Defense"
})
v11(v43, "Demonic Hub V2", "https://raw.githubusercontent.com/Prosexy/Demonic-HUB-V2/main/DemonicHub_V2.lua")
v11(v43, "CanislupusXHub", "https://raw.githubusercontent.com/CanisLupusXL/CanislupusXHub/main/Anime%20Crossover%20Defense.lua")
v11(v43, "OMG Hub", "https://raw.githubusercontent.com/Omgshit/Scripts/refs/heads/main/Anime%20Crossover%20Defense", "Executed")
local v44 = v1:MakeTab({
    Name = "Tower Of Hell",
    Icon = v4,
    PremiumOnly = false
})
v44:AddSection({
    Name = "Tower Of Hell"
})
v11(v44, "SprinHub", "https://raw.githubusercontent.com/dqvh/dqvh/main/SprinHub")
v11(v44, "Script 1", "https://raw.githubusercontent.com/JuninhoOGado/ScriptsSite/main/Script145")
v11(v44, "TOH Hub", "https://coolxplo.github.io/DP-HUB-coolxplo/Tower%20Of%20Hell.lua")
v11(v44, "Sprin Hub (Pc/Mobile", "https://raw.githubusercontent.com/dqvh/dqvh/main/SprinHub", "Executed")
local v45 = v1:MakeTab({
    Name = "Emergency Hamburg",
    Icon = v4,
    PremiumOnly = false
})
v45:AddSection({
    Name = "EmergencyHamburg"
})
v11(v45, "Script 4", "https://api.luarmor.net/files/v3/loaders/61cde92975e75ff8c740703998784f38.lua")
v11(v45, "Script 3", "https://raw.githubusercontent.com/Marco8642/science/main/emergency%20hamburg")
v11(v45, "Script 2", "https://raw.githubusercontent.com/Merdooon/skibidi-sigma-spec-ter/refs/heads/main/specter")
v11(v45, "Script 1", "https://raw.githubusercontent.com/Marco8642/science/main/emergency%20hamburg")
v11(v45, "Beanz Hub", "https://raw.githubusercontent.com/pid4k/scripts/main/BeanzHub.lua", "Executed")
local v46 = v1:MakeTab({
    Name = "Meme Sea",
    Icon = v4,
    PremiumOnly = false
})
v46:AddSection({
    Name = "Meme Sea"
})
v11(v46, "Elgato Hub", "https://raw.githubusercontent.com/FrostLua/Krakles/main/ElgatoHub/Loader.lua")
v11(v46, "InfinityX", "https://gitlab.com/Lmy77/menu/-/raw/main/infinityx")
v11(v46, "Redz Hub", "https://raw.githubusercontent.com/REDzHUB/MemeSea/main/Source.lua")
v11(v46, "Shiny Hub", "https://raw.githubusercontent.com/ZaqueHub/ShinyHub-MMSea/main/MEME%20SEA%20PROTECT.txt", "Executed")
local v47 = v1:MakeTab({
    Name = "Realm Rampage",
    Icon = v4,
    PremiumOnly = false
})
v47:AddSection({
    Name = "Realm Rampage"
})
v11(v47, "RR HUB", "https://raw.githubusercontent.com/CrimsonBytesLua/roblox-releases/main/realmrampage")
v11(v47, "NBLM RR", "https://raw.githubusercontent.com/Emplic/RealmRampage/main/NBLMONTOP609")
v11(v47, "Realm Rampage (Mobile)", "https://raw.githubusercontent.com/CrimsonBytesLua/roblox-releases/main/realmrampage", "Executed")
local v48 = v1:MakeTab({
    Name = "Fruits Warrios",
    Icon = v4,
    PremiumOnly = false
})
v48:AddSection({
    Name = "Fruits Warrios"
})
v11(v48, "River Hub", "https://raw.githubusercontent.com/JuninhoOGado/ScriptsSite/main/Script94")
v11(v48, "Script 1", "https://raw.githubusercontent.com/LeadMarker/opensrc/main/FruitWarriors/FruitWarriors.lua")
v11(v48, "BeanHub", "https://raw.githubusercontent.com/SoyElPekka/BeanHub/main/LoadingScreen")
v11(v48, "Zaque Hub", "https://raw.githubusercontent.com/Mei2232/ZaqueHub/main/Fruit%20Warrior", "Executed")
local v49 = v1:MakeTab({
    Name = "Weak Legacy 2",
    Icon = v4,
    PremiumOnly = false
})
v49:AddSection({
    Name = "Weak Legacy 2"
})
v11(v49, "Nexus Hub", "https://raw.githubusercontent.com/CrazyHub123/NexusHubMain/main/Main.lua")
v11(v49, "Script 1", "https://raw.githubusercontent.com/cracklua/cracks/m/ToraWL")
v11(v49, "OMG Hub", "https://raw.githubusercontent.com/OhhMyGehlee/W2/main/SW", "Executed")
local v50 = v1:MakeTab({
    Name = "Bee Swarm Simulator",
    Icon = v4,
    PremiumOnly = false
})
v50:AddSection({
    Name = "Bee Swarm Simulator"
})
v11(v50, "Beecon Hub", "https://raw.githubusercontent.com/BaconBossScript/BeeconHub/main/BeeconHub")
v11(v50, "Macro V4", "https://scripts.macrov4.com/macrov4.lua")
v11(v50, "Verbal Hub ", "https://raw.githubusercontent.com/VerbalHubz/Verbal-Hub/refs/heads/main/Bee%20Swarm%20Sim.Lua")
v11(v50, "Willow Hub (Mobile)", "https://api.luarmor.net/files/v3/loaders/012b8bc02b1c578b7766f2a4511c3c47.lua", "Executed")
local v51 = v1:MakeTab({
    Name = "Doors",
    Icon = v4,
    PremiumOnly = false
})
v51:AddSection({
    Name = "Doors"
})
v11(v51, "Astral Hub", "https://raw.githubusercontent.com/PlayzlxD0tmatter/AstralHub/refs/heads/main/AstralHub")
v11(v51, "KodBol Hub", "https://pastefy.app/awczkDwJ/raw")
v11(v51, "NullFire", "https://raw.githubusercontent.com/NuIlFire/NullFire/main/loader.lua")
v11(v51, "Bob Hub", "https://api.luarmor.net/files/v3/loaders/012b8bc02b1c578b7766f2a4511c3c47.lua")
v11(v51, "Blackking", "https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub", "Executed")
local v52 = v1:MakeTab({
    Name = "Grace",
    Icon = v4,
    PremiumOnly = false
})
v52:AddSection({
    Name = "Grace"
})
v11(v52, "Script 2", "https://raw.githubusercontent.com/brawler-567/GameSenseScripts/refs/heads/main/main.lua")
v11(v52, "Script 1", "https://raw.githubusercontent.com/LHking123456/UCwvyPEqMFJ36/refs/heads/main/Grace", "Executed")
local v53 = v1:MakeTab({
    Name = "Evade",
    Icon = v4,
    PremiumOnly = false
})
v53:AddSection({
    Name = "Evade"
})
v11(v53, "Moon Hub", "https://raw.githubusercontent.com/V3rmz/LemonadeHub/main/Mobile")
v11(v53, "ArDark Hub", "https://raw.githubusercontent.com/Hungtu2121/ArDrakxHub/main/Evade-23-88-evade-Ardrak-evade-rvet-55")
v11(v53, "Tbao Hub", "https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubEvade")
v11(v53, "Script 4", "https://raw.githubusercontent.com/Bac0nHck/Scripts/refs/heads/main/evade-farm.lua")
v11(v53, "Script 3", "https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/EvadeEvent")
v11(v53, "Script 2", "https://raw.githubusercontent.com/PepesGH1/stuff/main/evadeloader.lua")
v11(v53, "Script 1", "https://raw.githubusercontent.com/LabyCatUser/rawr/refs/heads/main/evade.lua", "Executed")
local v54 = v1:MakeTab({
    Name = "BrookHaven",
    Icon = v4,
    PremiumOnly = false
})
v54:AddSection({
    Name = "BrookHaven"
})
v11(v54, "F0rtui0us hub (Pc/Mobile)", "https://raw.githubusercontent.com/TrollGuiMaker/f0rtuit0us-hub/refs/heads/main/old")
v11(v54, "Nousigi Hub", "https://nousigi.com/loader.lua")
v11(v54, "YHUB", "https://raw.githubusercontent.com/Luarmor123/community-Y-HUB/refs/heads/main/YHUB%20ENGLISH")
v11(v54, "Sander X (Pc/Mobile)", "https://raw.githubusercontent.com/sXPiterXs1111/SanderXNewUpdate3.1.lua/main/SanderXNewUpdate.lua", "Executed")
local v55 = v1:MakeTab({
    Name = "The Strongest Battlegrounds",
    Icon = v4,
    PremiumOnly = false
})
v55:AddSection({
    Name = "The Strongest Battlegrounds"
})
v11(v55, "Speed Hub X (Pc/Mobile)", "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua")
v11(v55, "Zygarde V2 (Pc/Mobile)", "https://raw.githubusercontent.com/louismich4el/Zygarde/refs/heads/main/ZygardeV1.txt")
v11(v55, "SumitScripts", "https://pastefy.app/v9VSOfM5/raw")
v11(v55, "FFJ1", "https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/autoparry.lua", "Executed")
local v56 = v1:MakeTab({
    Name = "Combat Warriors",
    Icon = v4,
    PremiumOnly = false
})
v56:AddSection({
    Name = "Combat Warriors"
})
v11(v56, "Script 1", "https://pastebin.com/raw/QXMXfqWN")
v11(v56, "Script 2", "https://raw.githubusercontent.com/XorV2/script/main/Unfair")
v11(v56, "Script 3", "https://raw.githubusercontent.com/Voltrivax/hwid/refs/heads/main/Freenium")
v11(v56, "Script 4", "https://raw.githubusercontent.com/nikoladhima/Combat/refs/heads/main/CombatAimbot", "Executed")
local v57 = v1:MakeTab({
    Name = "Jailbreak",
    Icon = v4,
    PremiumOnly = false
})
v57:AddSection({
    Name = "Jailbreak"
})
v11(v57, "Project Auto V5 (Pc/Mobile)", "http://scripts.projectauto.xyz/AutoRobV5")
v11(v57, "SnipeHype200", "https://raw.githubusercontent.com/SnipeHype200/i-music/main/beta.lua", "Executed")
local v58 = v1:MakeTab({
    Name = "Build a Boat Simulator",
    Icon = v4,
    PremiumOnly = false
})
v58:AddSection({
    Name = "Build a Boat Simulator"
})
v11(v58, "LexusHub", "https://pastebin.com/raw/2NjKRALJ")
v11(v58, "BoatBuilderHub", "https://raw.githubusercontent.com/catblox1346/StensUIReMake/refs/heads/main/Script/boatbuilderhub_B1")
v11(v58, "UB Hub", "https://gitlab.com/r_soft/main/-/raw/main/LoadUB.lua")
v11(v58, "Space Hub", "https://raw.githubusercontent.com/ago106/SpaceHub/refs/heads/main/loader.lua")
v11(v58, "YWXO Hub", "https://raw.githubusercontent.com/ProjectpopCat/ywxoscripts/main/BuildABoatSimulator.lua", "Executed")
local v59 = v1:MakeTab({
    Name = "SCP 3008",
    Icon = v4,
    PremiumOnly = false
})
v59:AddSection({
    Name = "SCP 3008"
})
v11(v59, "manthem123", "https://raw.githubusercontent.com/manthem123/3008/refs/heads/main/main.lua")
v11(v59, "Waylon", "https://raw.githubusercontent.com/welomenchaina/Loader/refs/heads/main/ScriptLoader")
v11(v59, "Neuron", "https://raw.githubusercontent.com/Yumiara/Python/refs/heads/main/SCP3008.py", "Executed")
local v60 = v1:MakeTab({
    Name = "Blade Ball",
    Icon = v4,
    PremiumOnly = false
})
v60:AddSection({
    Name = "Blade Ball"
})
v11(v60, "Lunax Hub (Pc/Mobile)", "https://raw.githubusercontent.com/Alexisisback/Universall/refs/heads/main/Blade%20ball.lua")
v11(v60, "Speed Hub (Pc/Mobile)", "https://raw.githubusercontent.com/Official-Gamer-123/Speed-Hub-Official-Releases-Free/main/SpeedHub_Updated_Key_System_BladeBall.txt")
v11(v60, "Aussie WIRE", "https://api.luarmor.net/files/v3/loaders/4f5c7bbe546251d81e9d3554b109008f.lua")
v11(v60, "FFJ1", "https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/autoparry.lua", "Executed")
local v61 = v1:MakeTab({
    Name = "Rivas",
    Icon = v4,
    PremiumOnly = false
})
v61:AddSection({
    Name = "Rivals"
})
v11(v61, "Script 1", "https://raw.githubusercontent.com/yoyoy979778786745446/rivals-scripts/refs/heads/main/Roblox%20rivals%20script")
v11(v61, "Soluna", "https://raw.githubusercontent.com/endoverdosing/Soluna-API/main/main.lua")
v11(v61, "Rivals (Pc/Mobile)", "https://raw.githubusercontent.com/s-o-a-b/nexus/main/loadstring")
v11(v61, "Rybow Hub", "https://raw.githubusercontent.com/s-o-a-b/nexus/main/loadstring", "Executed")
local v62 = v1:MakeTab({
    Name = "Arsenal",
    Icon = v4,
    PremiumOnly = false
})
v62:AddSection({
    Name = "Arsenal"
})
v11(v62, "Soluna", "https://soluna-script.vercel.app/arsenal.lua")
v11(v62, "Timmy Hub", "https://raw.githubusercontent.com/WinzeTim/timmyhack2/refs/heads/main/arsenal.lua")
v11(v62, "Express Hub", "http://pastebin.com/raw/9ArrNC4L")
v11(v62, "Script 1", "https://raw.githubusercontent.com/JuninhoOGado/ScriptsSite/main/Script278", "Executed")
local v63 = v1:MakeTab({
    Name = "Bed Wars",
    Icon = v4,
    PremiumOnly = false
})
v63:AddSection({
    Name = "Bed Wars"
})
v11(v63, "NightRewrite", "https://raw.githubusercontent.com/warprbx/NightRewrite/refs/heads/main/Night/Loader.luau")
v11(v63, "VapeV4", "https://raw.githubusercontent.com/miacheats/VapeV4ForRoblox/main/NewMainScript.lua")
v11(v63, "Aurora Hub", "https://raw.githubusercontent.com/cocotv666/Aurora/main/Aurora_Loader", "Executed")
local v64 = v1:MakeTab({
    Name = "Anime Champions Simulator",
    Icon = v4,
    PremiumOnly = false
})
v64:AddSection({
    Name = "Anime Champions Simulator"
})
v11(v64, "Yuto Hub", "https://raw.githubusercontent.com/JuninhoOGado/ScriptsSite/main/Script244", "Executed")
local v65 = v1:MakeTab({
    Name = "Egg Empire",
    Icon = v4,
    PremiumOnly = false
})
v65:AddSection({
    Name = "Egg Empire"
})
v11(v65, "Bloxy Hub", "https://raw.githubusercontent.com/bloxyhub-script/bloxyhub/main/Loader", "Executed")
local v66 = v1:MakeTab({
    Name = "Dungeon RNG",
    Icon = v4,
    PremiumOnly = false
})
v66:AddSection({
    Name = "Dungeon RNG"
})
v11(v66, "Script 2", "https://raw.githubusercontent.com/trawma/trawma/main/trawma(upd).lua")
v11(v66, "Script 1", "https://raw.githubusercontent.com/ToraScript/Script/main/DungeonRNG", "Executed")
local v67 = v1:MakeTab({
    Name = "Pop It Trading",
    Icon = v4,
    PremiumOnly = false
})
v67:AddSection({
    Name = "Pop It Trading"
})
v11(v67, "Xdkert1", "https://pastebin.com/raw/tTg5Yjpi", "Executed")
local v68 = v1:MakeTab({
    Name = "Mad City Chapter 2",
    Icon = v4,
    PremiumOnly = false
})
v68:AddSection({
    Name = "Mad City Chapter 2"
})
v11(v68, "Script 1", "https://raw.githubusercontent.com/castyhwprivateez/v1.6666666-w..ww..what-/main/Protected%20(46).lua%22", "Executed")
local v69 = v1:MakeTab({
    Name = "One Fruit",
    Icon = v4,
    PremiumOnly = false
})
v69:AddSection({
    Name = "One Fruit"
})
v11(v69, "Nexus Hub", "https://raw.githubusercontent.com/CrazyHub123/NexusHubMain/main/Main.lua", "Executed")
local v70 = v1:MakeTab({
    Name = "Zombie Attack",
    Icon = v4,
    PremiumOnly = false
})
v70:AddSection({
    Name = "Zombie Attack"
})
v11(v70, "X Universal (Pc/Mobile)", "https://raw.githubusercontent.com/Unknownproooolucky/Unknown-Hub-X-Universal-Games/main/Games/Zombie-Attack", "Executed")
local v71 = v1:MakeTab({
    Name = "Gym League",
    Icon = v4,
    PremiumOnly = false
})
v71:AddSection({
    Name = "Gym League"
})
v11(v71, "Speed Hub X", "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/GameList.lua")
v11(v71, "Lightux", "https://raw.githubusercontent.com/cool83birdcarfly02six/Lightux/main/README.md")
v11(v71, "Demonic Hub V2", "https://raw.githubusercontent.com/Prosexy/Demonic-HUB-V2/main/DemonicHub_V2.lua")
local v72 = v1:MakeTab({
    Name = "Sakura Stand",
    Icon = v4,
    PremiumOnly = false
})
v72:AddSection({
    Name = "Sakura Stand"
})
v11(v72, "Nex Hub", "https://raw.githubusercontent.com/CopyReal/NexHub/main/NexHubLoader", "Executed")
local v73 = v1:MakeTab({
    Name = "Frontlines",
    Icon = v4,
    PremiumOnly = false
})
v73:AddSection({
    Name = "Frontlines"
})
v11(v73, "Pinguin", "https://raw.githubusercontent.com/PUSCRIPTS/PINGUIN/refs/heads/main/FrontLines")
v11(v73, "Main Hub", "https://scripts.waza80.com/script/Frontlines")
v11(v73, "Forge Hub", "https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua", "Executed")
local v74 = v1:MakeTab({
    Name = "Ninja Legends",
    Icon = v4,
    PremiumOnly = false
})
v74:AddSection({
    Name = "Ninja Legends"
})
v11(v74, "Venture Hub", "https://raw.githubusercontent.com/NukeVsCity/TheALLHACKLoader/main/NukeLoader")
v11(v74, "Zerpqe", "https://raw.githubusercontent.com/zerpqe/script/main/NinjaLegends.lua")
v11(v74, "AppleScript001", "https://raw.githubusercontent.com/AppleScript001/Ninjas_Legends/main/README.md")
v11(v74, "LSndiFye Hub", "https://pastebin.com/raw/LSndiFye", "Executed")
local v75 = v1:MakeTab({
    Name = "Arm Wrestle Simulator",
    Icon = v4,
    PremiumOnly = false
})
v75:AddSection({
    Name = "Arm Wrestle Simulator"
})
v11(v75, "LDS HUB", "https://api.luarmor.net/files/v3/loaders/49f02b0d8c1f60207c84ae76e12abc1e.lua")
v11(v75, "RaCc0oN Hub", "https://raw.githubusercontent.com/RaCc0oN1/RobloxObf/main/MainHub")
v11(v75, "Userp1", "https://raw.githubusercontent.com/userp1/self/main/Main.lua")
v11(v75, "Script New Upd", "https://lua-library.btteam.net/script-auth.txt", "Executed")
local v76 = v1:MakeTab({
    Name = "PETS GO!",
    Icon = v4,
    PremiumOnly = false
})
v76:AddSection({
    Name = "PETS GO!"
})
v11(v76, "Speed Hub X", "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua")
v11(v76, "Reaper Hub", "https://reaperscripts.com/loader.lua")
v11(v76, "Zap Hub", "loadstring(game:HttpGet(\'https://zaphub.xyz/Exec\'))()")
v11(v76, "AtherHub", "https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua", "Executed")
local v77 = v1:MakeTab({
    Name = "Survival Stories",
    Icon = v4,
    PremiumOnly = false
})
v77:AddSection({
    Name = "Survival Stories"
})
v11(v77, "Tora IsMe", "https://raw.githubusercontent.com/ToraScript/Script/main/SurvivalStories", "Executed")
local v78 = v1:MakeTab({
    Name = "Speed Run 4",
    Icon = v4,
    PremiumOnly = false
})
v78:AddSection({
    Name = "Speed Run 4"
})
v11(v78, "Script 1", "https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubLoader.lua", "Executed")
local v79 = v1:MakeTab({
    Name = "Lucky Blocks Battlegrounds",
    Icon = v4,
    PremiumOnly = false
})
v79:AddSection({
    Name = "Lucky Blocks Battlegrounds"
})
v11(v79, "Lucky Blocks Hub", "https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md", "Executed")
local v80 = v1:MakeTab({
    Name = "Booga Booga",
    Icon = v4,
    PremiumOnly = false
})
v80:AddSection({
    Name = "Booga Booga"
})
v11(v80, "Slideurs Hub", "https://raw.githubusercontent.com/boogauser3533/natsuloader/main/SlideursHub-Loader.lua", "Executed")
local v81 = v1:MakeTab({
    Name = "Dandy\'s World",
    Icon = v4,
    PremiumOnly = false
})
v81:AddSection({
    Name = "Dandy\'s World"
})
v11(v81, "Script 1", "https://pastebin.com/raw/H3u62n7D", "Executed")
local v82 = v1:MakeTab({
    Name = "Escape Papa Pizzas Pizzeria",
    Icon = v4,
    PremiumOnly = false
})
v82:AddSection({
    Name = "Escape Papa Pizzas Pizzeria"
})
v11(v82, "ExplotFin", "https://raw.githubusercontent.com/ExploiterGuy/FBC/refs/heads/main/Protected_3203896199155968.txt", "Executed")
local v83 = v1:MakeTab({
    Name = "Stud Jump Obby",
    Icon = v4,
    PremiumOnly = false
})
v83:AddSection({
    Name = "Stud Jump Obby"
})
v11(v83, "Script", "https://raw.githubusercontent.com/imwifi/1FO/main/main.lua", "Executed")
local v84 = v1:MakeTab({
    Name = "Toilet Defense Simulato",
    Icon = v4,
    PremiumOnly = false
})
v84:AddSection({
    Name = "Toilet Defense Simulato"
})
v11(v84, "Script 1", "https://rawscripts.net/raw/Fixes-Toilet-Defense-SEVEN-SCRIPT-9364", "Executed")
local v85 = v1:MakeTab({
    Name = "Project Lazarus",
    Icon = v4,
    PremiumOnly = false
})
v85:AddSection({
    Name = "Project Lazarus"
})
v11(v85, "Script 2", "https://aussie.productions/script")
v11(v85, "Script 1", "https://pastebin.com/raw/AmdBs5Bc", "Executed")
local v86 = v1:MakeTab({
    Name = "Goal Battles",
    Icon = v4,
    PremiumOnly = false
})
v86:AddSection({
    Name = "Goal Battles"
})
v11(v86, "Script 1", "https://pastebin.com/raw/eGqj2qNk", "Executed")
local v87 = v1:MakeTab({
    Name = "My Pet Rock",
    Icon = v4,
    PremiumOnly = false
})
v87:AddSection({
    Name = "My Pet Rock"
})
v11(v87, "Op stuff", "https://gitlab.com/RobloxiaUntilDawn/robloxia-until-dawn/-/raw/main/script", "Executed")
local v88 = v1:MakeTab({
    Name = "Dragon Adventures",
    Icon = v4,
    PremiumOnly = false
})
v88:AddSection({
    Name = "Dragon Adventures"
})
v11(v88, "Script 1", "https://github.com/h8h88/DAthingy/raw/refs/heads/main/DAhalloween")
v11(v88, "Imp Hub", "https://raw.githubusercontent.com/alan11ago/Hub/refs/heads/main/ImpHub.lua", "Executed")
local v89 = v1:MakeTab({
    Name = "Driving Empire",
    Icon = v4,
    PremiumOnly = false
})
v89:AddSection({
    Name = "Driving Empire"
})
v11(v89, "https://raw.githubusercontent.com/Aaron999S/FiberHub/main/Main", "Fiber Hub", "Executed")
local v90 = v1:MakeTab({
    Name = "Anime Strike Simulator",
    Icon = v4,
    PremiumOnly = false
})
v90:AddSection({
    Name = "Anime Strike Simulator"
})
v11(v90, "Presine", "https://raw.githubusercontent.com/RSenix3/PrestineHub/refs/heads/main/PrestineHubV1", "Executed")
local v91 = v1:MakeTab({
    Name = "Driving Empire",
    Icon = v4,
    PremiumOnly = false
})
v91:AddSection({
    Name = "Driving Empire"
})
v11(v91, "Script", "https://raw.githubusercontent.com/Aaron999S/FiberHub/main/Main", "Executed")
local v92 = v1:MakeTab({
    Name = "Motorcycle Mayhem",
    Icon = v4,
    PremiumOnly = false
})
v92:AddSection({
    Name = "Motorcycle Mayhem"
})
v11(v92, "Script 1", "https://raw.githubusercontent.com/Milan08Studio/ChairWare/main/main.lua", "Executed")
local v93 = v1:MakeTab({
    Name = "Car Race Simlator",
    Icon = v4,
    PremiumOnly = false
})
v93:AddSection({
    Name = "Car Race Simlator"
})
v11(v93, "Tora IsMe", "https://raw.githubusercontent.com/ToraScript/Script/main/CarRace", "Executed")
local v94 = v1:MakeTab({
    Name = "GO FISHING",
    Icon = v4,
    PremiumOnly = false
})
v94:AddSection({
    Name = "GO FISHING"
})
v11(v94, "OhMyGehlee Hub", "https://raw.githubusercontent.com/OhhMyGehlee/go/refs/heads/main/is", "Executed")
local v95 = v1:MakeTab({
    Name = "ALONE",
    Icon = v4,
    PremiumOnly = false
})
v95:AddSection({
    Name = "ALONE"
})
v11(v95, "Fart Script", "https://raw.githubusercontent.com/Sussy-Tech/Scripts/main/FartHub.lua", "Executed")
local v96 = v1:MakeTab({
    Name = "Camera Tower Defense Reborn",
    Icon = v4,
    PremiumOnly = false
})
v96:AddSection({
    Name = "Camera Tower Defense Reborn"
})
v11(v96, "Script 1", "https://raw.githubusercontent.com/ToraScript/Script/main/CameraTower", "Executed")
local v97 = v1:MakeTab({
    Name = "Car Zone Beta",
    Icon = v4,
    PremiumOnly = false
})
v97:AddSection({
    Name = "Car Zone Beta"
})
v11(v97, "Script 1", "https://raw.githubusercontent.com/Tora//main/CarZoneBeta", "Executed")
local v98 = v1:MakeTab({
    Name = "Sols Rng",
    Icon = v4,
    PremiumOnly = false
})
v98:AddSection({
    Name = "Sols Rng"
})
v11(v98, "Erudite Hub", "https://raw.githubusercontent.com/ThacG/EruditeHub/main/Sol\'s%20RNG/V2", "Executed")
local v99 = v1:MakeTab({
    Name = "Shadow Boxing Battles",
    Icon = v4,
    PremiumOnly = false
})
v99:AddSection({
    Name = "Shadow Boxing Battles"
})
v11(v99, "Flare Hub", "https://raw.githubusercontent.com/imwifi/1FO/main/main.lua", "Executed")
local v100 = v1:MakeTab({
    Name = "Murderers VS Sherrifs Duels",
    Icon = v4,
    PremiumOnly = false
})
v100:AddSection({
    Name = "Murderers VS Sherrifs Duels"
})
v11(v100, "Zephyr (Pc/Mobile)", "https://raw.githubusercontent.com/TheRealAvrwm/Projects/main/Xeno%20MVSD%20script.lua", "Executed")
local v101 = v1:MakeTab({
    Name = "Rarity Factory",
    Icon = v4,
    PremiumOnly = false
})
v101:AddSection({
    Name = "Rarity Factory"
})
v11(v101, "Nau Hub", "https://raw.githubusercontent.com/naufalafif080419/NauHubLoadstring/main/Loadstring.lua", "Executed")
local v102 = v1:MakeTab({
    Name = "Welcome to Bloxburg",
    Icon = v4,
    PremiumOnly = false
})
v102:AddSection({
    Name = "Welcome to Bloxburg"
})
v11(v102, "Auto Farm", "https://luxhub.cc/script.lua")
v11(v102, "Aussie WIRE", "https://api.luarmor.net/files/v3/loaders/4f5c7bbe546251d81e9d3554b109008f.lua", "Executed")
local v103 = v1:MakeTab({
    Name = "Westbound",
    Icon = v4,
    PremiumOnly = false
})
v103:AddSection({
    Name = "Westbound"
})
v11(v103, "Westbound Pro", "https://raw.githubusercontent.com/Exunys/westbound.pro-Utilites/main/Main.lua", "Executed")
local v104 = v1:MakeTab({
    Name = "Type or Die",
    Icon = v4,
    PremiumOnly = false
})
v104:AddSection({
    Name = "Type or Die"
})
v11(v104, "Script 1", "https://pastebin.com/raw/A6H1KMF", "Executed")
local v105 = v1:MakeTab({
    Name = "PhantomForces",
    Icon = v4,
    PremiumOnly = false
})
v105:AddSection({
    Name = "PhantomForces"
})
v11(v105, "Homo Hack (Pc/Mobile)", "https://raw.githubusercontent.com/dementiaenjoyer/homohack/main/loader.lua")
v11(v105, "Cooki Hub", "https://raw.githubusercontent.com/SumCooki/Cooki-Hub/refs/heads/main/Cooki%20Hub", "Executed")
local v106 = v1:MakeTab({
    Name = "Survive the Killer!",
    Icon = v4,
    PremiumOnly = false
})
v106:AddSection({
    Name = "Survive the Killer!"
})
v11(v106, "Script 1", "https://raw.githubusercontent.com/Milan08Studio/ChairWare/main/main.lua", "Executed")
local v107 = v1:MakeTab({
    Name = "Haze Piece",
    Icon = v4,
    PremiumOnly = false
})
v107:AddSection({
    Name = "Haze Piece"
})
v11(v107, "Hyper Hub", "https://raw.githubusercontent.com/JuninhoOGado/ScriptsSite/main/Script285", "Executed")
local v108 = v1:MakeTab({
    Name = "Anime Blast Simulator",
    Icon = v4,
    PremiumOnly = false
})
v108:AddSection({
    Name = "Anime Blast Simulator"
})
v11(v108, "Project V", "https://raw.githubusercontent.com/Vmax0/RobloxScripts/main/ProjectVMAX/MainFree.lua", "Executed")
local v109 = v1:MakeTab({
    Name = "Bathroom Attack",
    Icon = v4,
    PremiumOnly = false
})
v109:AddSection({
    Name = "Bathroom Attack"
})
v11(v109, "Script 1", "https://raw.githubusercontent.com/JuninhoOGado/ScriptsSite/main/Script285", "Executed")
local v110 = v1:MakeTab({
    Name = "Grass Cutting Simulator",
    Icon = v4,
    PremiumOnly = false
})
v110:AddSection({
    Name = "Grass Cutting Simulator"
})
v11(v110, "Script 1", "https://raw.githubusercontent.com/AtroxEGO/grass-cutting-simulator/main/grass-cutting-script-AtroxEGO.lua", "Executed")
local v111 = v1:MakeTab({
    Name = "Super League Soccer",
    Icon = v4,
    PremiumOnly = false
})
v111:AddSection({
    Name = "Super League Soccer"
})
v11(v111, "Flare Hub", "https://api.luarmor.net/files/v3/loaders/1d6e39be6b826994a45f4d45d7b40f83.lua", "Executed")
local v112 = v1:MakeTab({
    Name = "Raise a Floppa 2",
    Icon = v4,
    PremiumOnly = false
})
v112:AddSection({
    Name = "Raise a Floppa 2"
})
v11(v112, "Script 1", "https://raw.githubusercontent.com/zReal-King/Raise-A-Floppa-2/main/Gui", "Executed")
local v113 = v1:MakeTab({
    Name = "Punch Monsters",
    Icon = v4,
    PremiumOnly = false
})
v113:AddSection({
    Name = "Punch Monsters"
})
v11(v113, "Script 1", "https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/Loader.lua", "Executed")
local v114 = v1:MakeTab({
    Name = "Broken Bones IV",
    Icon = v4,
    PremiumOnly = false
})
v114:AddSection({
    Name = "Broken Bones IV"
})
v11(v114, "Infinite Money", "https://rawscripts.net/raw/Broken-Bones-IV-Ragdoll-Sim-Infinite-money-19709")
v11(v114, "0x88 Hub", "https://raw.githubusercontent.com/0x88-debug/scripts_solara/main/BrokenBonesIV-autofarm.txt", "Executed")
local v115 = v1:MakeTab({
    Name = "Cheese Factory Tycoon",
    Icon = v4,
    PremiumOnly = false
})
v115:AddSection({
    Name = "Cheese Factory Tycoon"
})
v11(v115, "Raccoon Hub", "https://raw.githubusercontent.com/RaCc0oN1/RobloxObf/main/MainHub", "Executed")
local v116 = v1:MakeTab({
    Name = "SharkBite 2",
    Icon = v4,
    PremiumOnly = false
})
v116:AddSection({
    Name = "SharkBite 2"
})
v11(v116, "Script", "https://raw.githubusercontent.com/mafuasahina/whatever/main/sharkbite2", "Executed")
local v117 = v1:MakeTab({
    Name = "Goalbound",
    Icon = v4,
    PremiumOnly = false
})
v117:AddSection({
    Name = "Goalbound"
})
v11(v117, "Napoleon Hub", "https://raw.githubusercontent.com/raydjs/napoleonHub/refs/heads/main/src.lua", "Executed")
local v118 = v1:MakeTab({
    Name = "Those Who Remain",
    Icon = v4,
    PremiumOnly = false
})
v118:AddSection({
    Name = "Those Who Remain"
})
v11(v118, "Napoleon Hub", "https://raw.githubusercontent.com/raydjs/napoleonHub/refs/heads/main/src.lua", "Executed")
local v119 = v1:MakeTab({
    Name = "Merge Gubby",
    Icon = v4,
    PremiumOnly = false
})
v119:AddSection({
    Name = "Merge Gubby"
})
v11(v119, "Merge Gubby", "https://raw.githubusercontent.com/VylikGylik/Script/refs/heads/main/Merge%20Gubby", "Executed")
local v120 = v1:MakeTab({
    Name = "Gun Grounds FFA",
    Icon = v4,
    PremiumOnly = false
})
v120:AddSection({
    Name = "Gun Grounds FFA"
})
v11(v120, "Script 1", "https://pastefy.app/kYFkLSlG/raw", "Executed")
local v121 = v1:MakeTab({
    Name = "Create a Factory",
    Icon = v4,
    PremiumOnly = false
})
v121:AddSection({
    Name = "Create a Factory"
})
v11(v121, "Script 1", "https://raw.githubusercontent.com/denisisaskidlol/Create-a-Factory-Script/refs/heads/main/5328c0dc04b0bcb7.lua", "Executed")
local v122 = v1:MakeTab({
    Name = "Catch a Brainrot",
    Icon = v4,
    PremiumOnly = false
})
v122:AddSection({
    Name = "Catch a Brainrot"
})
v11(v122, "PolleserHub", "https://raw.githubusercontent.com/Thebestofhack123/2.0/refs/heads/main/Scripts/CatchaBrainrot", "Executed")
local v123 = v1:MakeTab({
    Name = "Volleyball Legends",
    Icon = v4,
    PremiumOnly = false
})
v123:AddSection({
    Name = "Volleyball Legends"
})
v11(v123, "Script 1", "https://raw.githubusercontent.com/Armando221/ProlexHUB/refs/heads/main/Prolex.lua", "Executed")
local v124 = v1:MakeTab({
    Name = "Basketball Legends",
    Icon = v4,
    PremiumOnly = false
})
v124:AddSection({
    Name = "Basketball Legends"
})
v11(v124, "ProlexHUB", "https://raw.githubusercontent.com/Armando221/ProlexHUB/refs/heads/main/Prolex.lua", "Executed")
local v125 = v1:MakeTab({
    Name = "Fling Things and People",
    Icon = v4,
    PremiumOnly = false
})
v125:AddSection({
    Name = "Fling Things and People"
})
v11(v125, "Megahub", "https://raw.githubusercontent.com/ftap-kano/scripts/refs/heads/main/Megahub_Eng.lua", "Executed")
local v126 = v1:MakeTab({
    Name = "TPS: Street Soccer",
    Icon = v4,
    PremiumOnly = false
})
v126:AddSection({
    Name = "TPS: Street Soccer"
})
v11(v126, "Script 1", "https://raw.githubusercontent.com/statedisclosure/state/main/Lorely.lua")
v11(v126, "Steeet Soccer Hub", "https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Tps%3A%20Street%20Soccer", "Executed")
local v127 = v1:MakeTab({
    Name = "Who\'s the Spy?",
    Icon = v4,
    PremiumOnly = false
})
v127:AddSection({
    Name = "Who\'s the Spy?"
})
v11(v127, "SPY ESP", "https://pastefy.app/eeWpIR5D/raw", "Executed")
local v128 = v1:MakeTab({
    Name = "Slap Battles",
    Icon = v4,
    PremiumOnly = false
})
v128:AddSection({
    Name = "Slap Battles"
})
v11(v128, "Giant Hub", "https://raw.githubusercontent.com/ScriptPhantom/script/refs/heads/main/slaphub.lua")
v11(v128, "Gaster Hub", "https://raw.githubusercontent.com/Dusty1234567890/Rob/main/Rob")
v11(v128, "Script 1", "https://raw.githubusercontent.com/Hawk983/Phantom-/main/UNIVERSAL", "Executed")
local v129 = v1:MakeTab({
    Name = "Restaurant Tycoon 2",
    Icon = v4,
    PremiumOnly = false
})
v129:AddSection({
    Name = "Restaurant Tycoon 2"
})
v11(v129, "Zeld Hub", "https://raw.githubusercontent.com/JuninhoOGado/ScriptsSite/main/Script247", "Executed")
local v130 = v1:MakeTab({
    Name = "Click to Aura Farm",
    Icon = v4,
    PremiumOnly = false
})
v130:AddSection({
    Name = "Click to Aura Farm"
})
v11(v130, "Auto Click", "https://raw.githubusercontent.com/GeceUstasi/clicktoaurafarm/refs/heads/main/load.lua", "Executed")
local v131 = v1:MakeTab({
    Name = "Drop a Poop",
    Icon = v4,
    PremiumOnly = false
})
v131:AddSection({
    Name = "Drop a Poop"
})
v11(v131, "Lheny hub", "https://pastefy.app/Pgr8kZPd/raw", "Executed")
local v132 = v1:MakeTab({
    Name = "Cash Every Step",
    Icon = v4,
    PremiumOnly = false
})
v132:AddSection({
    Name = "Cash Every Step"
})
v11(v132, "Lheny hub", "https://pastefy.app/7oRn6gty/raw", "Executed")
local v133 = v1:MakeTab({
    Name = "Tower Defense Simulator",
    Icon = v4,
    PremiumOnly = false
})
v133:AddSection({
    Name = "Tower Defense Simulator"
})
v11(v133, "Script 1", "https://banbus.cf/scripts/autofarmconfig", "Executed")
local v134 = v1:MakeTab({
    Name = "Car Dealership Tycoon",
    Icon = v4,
    PremiumOnly = false
})
v134:AddSection({
    Name = "Car Dealership Tycoon"
})
v11(v134, "Script 1", "https://raw.githubusercontent.com/ToraScript/Script/main/CarDealershipXMAS")
v11(v134, "LDS Hub", "https://api.luarmor.net/files/v3/loaders/49f02b0d8c1f60207c84ae76e12abc1e.lua", "Executed")
local v135 = v1:MakeTab({
    Name = "CHAOS",
    Icon = v4,
    PremiumOnly = false
})
v135:AddSection({
    Name = "CHAOS"
})
v11(v135, "CHAOTIC HUB", "", "Executed")
local v136 = v1:MakeTab({
    Name = "Typical Ramen",
    Icon = v4,
    PremiumOnly = false
})
v136:AddSection({
    Name = "Typical Ramen"
})
v11(v136, "Ramen Hub", "https://raw.githubusercontent.com/coopers1337/ramenhub/refs/heads/main/main.lua", "Executed")
local v137 = v1:MakeTab({
    Name = "Blue Heater 2",
    Icon = v4,
    PremiumOnly = false
})
v137:AddSection({
    Name = "Blue Heater 2"
})
v11(v137, "Script 1", "https://raw.githubusercontent.com/Mentos4/Roblox/refs/heads/main/Main", "Executed")
local v138 = v1:MakeTab({
    Name = "Granny",
    Icon = v4,
    PremiumOnly = false
})
v138:AddSection({
    Name = "Granny"
})
v11(v138, "Zephyr Gr4nny V5", "https://raw.githubusercontent.com/LuaLandy/Scripts/refs/heads/main/Granny%20V5", "Executed")
local v139 = v1:MakeTab({
    Name = "SKY SQUID GAME",
    Icon = v4,
    PremiumOnly = false
})
v139:AddSection({
    Name = "SKY SQUID GAME"
})
v11(v139, "Anti Push Ragdoll", "https://raw.githubusercontent.com/Ro2b2/antipushtypeshit/refs/heads/main/AntiPush.lua", "Executed")
local v140 = v1:MakeTab({
    Name = "Femboy Simulator",
    Icon = v4,
    PremiumOnly = false
})
v140:AddSection({
    Name = "Femboy Simulator"
})
v11(v140, "Script 1", "https://raw.githubusercontent.com/rolezeay/femboy-sim/refs/heads/main/hmmmmmm", "Executed")
local v141 = v1:MakeTab({
    Name = "Prospecting",
    Icon = v4,
    PremiumOnly = false
})
v141:AddSection({
    Name = "Prospecting"
})
v11(v141, "Script 1", "https://raw.githubusercontent.com/Gr0wm3rc/script-OP/refs/heads/main/Prospecting", "Executed")
local v142 = v1:MakeTab({
    Name = "Build a Zoo",
    Icon = v4,
    PremiumOnly = false
})
v142:AddSection({
    Name = "Build a Zoo"
})
v11(v142, "Script 1", "https://raw.githubusercontent.com/ZebuxHub/Main/refs/heads/main/BuildAZoo.lua", "Executed")
local v143 = v1:MakeTab({
    Name = "Slime Slaying Online RPG",
    Icon = v4,
    PremiumOnly = false
})
v143:AddSection({
    Name = "Slime Slaying Online RPG"
})
v143:AddButton({
    Name = "Slime Slaying Online RPG",
    Callback = function()
        script_key = ""
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d8bf54daa5b358826ce74cab275f9135.lua"))()
    end
})
