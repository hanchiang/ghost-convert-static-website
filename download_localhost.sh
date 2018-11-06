# make-offline-mirror-of-a-site-using-wget
# https://www.guyrutenberg.com/2014/05/02/make-offline-mirror-of-a-site-using-wget/

echo "Downloading from $1..."

mkdir -p ../ghost-static-generated
find ../ghost-static-generated -mindepth 1 ! -iname "README.md" ! -iname "\.git" -delete

wget -mkEpnp $1
mv $1/* ../ghost-static-generated
rm -r $1

echo "$1 downloaded!"
