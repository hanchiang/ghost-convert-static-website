echo "Replacing $1 with $2..."
find ../ghost-static-generated -type f -iname "*" -exec sed -i "s/$1/$2/g" {} \;

echo "Done!"
