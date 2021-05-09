echo
echo "Installing private tools"

brew install --cask authy
brew install --cask quitter
brew install --cask bartender
brew install --cask cold-turkey-blocker
brew install --cask typinator
brew install --cask anki
echo "Anki: import Google Drive/backupx/anki"
echo "Anki Plugin: install ankiconnect with config:"
echo '
{
    "apiKey": null,
    "apiLogPath": null,
    "webBindAddress": "127.0.0.1",
    "webBindPort": 8765,
    "webCorsOrigin": "http://localhost",
    "webCorsOriginList": [
        "http://localhost",
        "app://obsidian.md"
    ]
}
'
echo "anki plugin: install image occlusion enhanced for anki 21 alpha"
brew install --cask appcleaner
brew install ical-buddy
# secretsetup.sh: echo "alias agenda='icalBuddy -f -npn -nc -iep "title,datetime" -eed -b "- " -ic "dennis.seidel@example.com" eventsToday'" >>~/.zshrc
brew install --cask google-backup-and-sync
brew install --cask clockify

echo "for my mouse setup logi options: currently no good m1 support: https://support.logi.com/hc/en-gb/community/posts/360051348414-Lag-and-stutter-Mx-Master-3-on-new-M1-MacBook-Air-Big-Sur "

echo "STEAM: optionally run: brew install --cask steam"