-- Maintenance Kick Script for FiveM
-- Quando la risorsa è avviata, espelle tutti i giocatori e mostra un messaggio.

-- Messaggio di manutenzione
local maintenanceMessage = "Il server è in manutenzione. Riprova più tardi. Grazie per la comprensione!"

-- Evento attivato quando la risorsa viene avviata
AddEventHandler("onResourceStart", function(resourceName)
    if GetCurrentResourceName() == resourceName then
        -- Espelle tutti i giocatori attualmente connessi
        for _, playerId in ipairs(GetPlayers()) do
            DropPlayer(playerId, maintenanceMessage)
        end
        -- Mostra un messaggio nella console del server
        print("^1Tutti i giocatori sono stati espulsi per manutenzione.")
    end
end)