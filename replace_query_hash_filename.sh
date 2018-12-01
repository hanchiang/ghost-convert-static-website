echo "Replacing query hash for css and js..."

# Rename files with filenames "screen.css?v=blahblah" to "screen.css"
# Ghost use this for cache busting. We don't need this cos netlify handles it for us.
find ../ghost-static-generated -iname "*?v=*" -exec rename "s/\?v=.*//" {} \;
echo "Query hash replaced!"
