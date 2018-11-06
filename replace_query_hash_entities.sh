# Find all index.html in static_website folder, remove query hash of css and js files.
# e.g. <link rel ="stylesheet" href="screen.css%3Fblahblahblah" /> to <link rel ="stylesheet" href="screen.css" />
#      by replacing '%3Fblahblahblah"' with '"'

echo "Replacing query hash encoded entities in all index.html..."
find ../ghost-static-generated -iname "index.html" -exec sed -i "s/%3F.*\"/\"/" {} \;
echo "Done!"
