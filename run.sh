#!/bin/sh
export PATH="/app/.heroku/dotnet:${PATH}"

echo "Running NadekoBot with auto restart normally!"
sleep 5s
dotnet GenerateJson/GenerateJson.dll > bin/credentials.json
cd bin
while :; do dotnet NadekoBot.dll; sleep 5s; done
echo ""
echo "That didn't work? Please report to ScarletKuro"
sleep 3s
echo "Done"
exit 0