echo "Replacing query hash for css and js..."

# Rename files with filenames "screen.css?v=blahblah" to "screen.css"
find ../ghost-static-generated -iname "*?v=*" -exec rename "s/\?v=.*//" {} \;
echo "Query hash replaced!"
