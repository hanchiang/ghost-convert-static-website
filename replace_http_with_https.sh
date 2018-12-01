echo "Replacing http with https..."

# Replace http:// with https://
find ../ghost-static-generated -type f -iname "*" -exec sed -i "s/http:\/\//https:\/\//g" {} \;

sed -i "s/\/\/yaphc\.com\/sitemap\.xsl/\/sitemap\.xsl/" ../ghost-static-generated/sitemap.xml;

echo "Done!"
