import pandas as pd
import sys


def clean():
    # importing Dataset
    df = pd.read_csv(sys.argv[1])
    if sys.argv[1] == 'Steam_games-features.csv':
        df = df[['ResponseName', 'RecommendationCount', 'IsFree', 'ScreenshotCount', 'PlatformWindows', 'PlatformMac',
                 'PlatformLinux', 'GenreIsNonGame', 'GenreIsIndie', 'GenreIsAction', 'GenreIsAdventure',
                 'GenreIsCasual', 'GenreIsStrategy', 'GenreIsRPG', 'GenreIsSimulation', 'GenreIsEarlyAccess',
                 'GenreIsFreeToPlay', 'GenreIsSports', 'GenreIsRacing', 'GenreIsMassivelyMultiplayer']]

    # cleaning dataset
    df = df.dropna()

    df.drop_duplicates(inplace=True)
    # save dataset
    if sys.argv[1] == 'Steam_games-features.csv':
        df.to_csv('cleaned_Steam_games-features.csv', index=False)
    else:
        df.to_csv('cleaned_dataset.csv')


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    clean()
