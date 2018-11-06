read -p "Enter the domain of your localhost server(e.g. localhost:3000): " localhost
read -p "Enter the domain of your live website(root domain only, e.g. mysite.com): " livedomain

./download_localhost.sh $localhost
echo

./replace_query_hash_filename.sh
echo

./replace_query_hash_entities.sh
echo

./replace_http_with_https.sh
echo

./replace_localhost_with_live_site.sh $localhost $livedomain
echo

./replace_index_html_with_root.sh
