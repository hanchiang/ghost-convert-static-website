echo "Replacing index.html with /..."

# prettify URL
# Replace "index.html" with /
# e.g. <a href="index.html">my website</a>
find ../ghost-static-generated -iname "index.html" -exec sed -i "s/\"index\.html/\"\//g" {} \;

# Replace /index.html with /
# e.g. <a href="../index.html">my website</a>
find ../ghost-static-generated -iname "index.html" -exec sed -i "s/\/index\.html/\//g" {} \;

echo "Done!"
