echo "Replacing index.html with /..."

find ../ghost-static-generated -iname "index.html" -exec sed -i "s/\"index\.html/\"\//g" {} \;

find ../ghost-static-generated -iname "index.html" -exec sed -i "s/\/index\.html/\//g" {} \;

echo "Done!"
