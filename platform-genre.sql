SELECT 'Windows' as Platform,
    MAX(GenreIsNonGame) AS NonGame,
    MAX(GenreIsIndie) AS Indie,
    MAX(GenreIsAction) AS Action,
    MAX(GenreIsAdventure) AS Adventure,
    MAX(GenreIsCasual) AS Casual,
    MAX(GenreIsStrategy) AS Strategy,
    MAX(GenreIsRPG) AS RPG,
    MAX(GenreIsSimulation) AS Simulation,
    MAX(GenreIsEarlyAccess) AS EarlyAccess,
    MAX(GenreIsFreeToPlay) AS FreeToPlay,
    MAX(GenreIsSports) AS Sports,
    MAX(GenreIsRacing) AS Racing,
    MAX(GenreIsMassivelyMultiplayer) AS MassivelyMultiplayer
FROM games
WHERE PlatformWindows = 1
UNION
SELECT 'Mac' as Platform,
    MAX(GenreIsNonGame) AS NonGame,
    MAX(GenreIsIndie) AS Indie,
    MAX(GenreIsAction) AS Action,
    MAX(GenreIsAdventure) AS Adventure,
    MAX(GenreIsCasual) AS Casual,
    MAX(GenreIsStrategy) AS Strategy,
    MAX(GenreIsRPG) AS RPG,
    MAX(GenreIsSimulation) AS Simulation,
    MAX(GenreIsEarlyAccess) AS EarlyAccess,
    MAX(GenreIsFreeToPlay) AS FreeToPlay,
    MAX(GenreIsSports) AS Sports,
    MAX(GenreIsRacing) AS Racing,
    MAX(GenreIsMassivelyMultiplayer) AS MassivelyMultiplayer
FROM games
WHERE PlatformMac = 1
UNION
SELECT 'Linux' as Platform,
    MAX(GenreIsNonGame) AS NonGame,
    MAX(GenreIsIndie) AS Indie,
    MAX(GenreIsAction) AS Action,
    MAX(GenreIsAdventure) AS Adventure,
    MAX(GenreIsCasual) AS Casual,
    MAX(GenreIsStrategy) AS Strategy,
    MAX(GenreIsRPG) AS RPG,
    MAX(GenreIsSimulation) AS Simulation,
    MAX(GenreIsEarlyAccess) AS EarlyAccess,
    MAX(GenreIsFreeToPlay) AS FreeToPlay,
    MAX(GenreIsSports) AS Sports,
    MAX(GenreIsRacing) AS Racing,
    MAX(GenreIsMassivelyMultiplayer) AS MassivelyMultiplayer
FROM games
WHERE Platformlinux = 1;