# make-offline-mirror-of-a-site-using-wget
# https://www.guyrutenberg.com/2014/05/02/make-offline-mirror-of-a-site-using-wget/

echo "Downloading from $1..."

mkdir -p ../ghost-static-generated
find ../ghost-static-generated -mindepth 1 ! -iname "README.md" ! -path "*.git*" -delete

wget -mkEpnp $1

# get sitemap!
wget $1/sitemap.xml

mv $1/* ../ghost-static-generated
mv sitemap.xml ../ghost-static-generated

rm -r $1
echo "$1 downloaded!"
