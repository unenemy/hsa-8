echo "First request"
curl -v --silent "localhost/images/1.jpg" 2>&1 | grep X-Cache-Status
echo "Second request"
curl -v --silent "localhost/images/1.jpg" 2>&1 | grep X-Cache-Status
echo "Third request"
curl -v --silent "localhost/images/1.jpg" 2>&1 | grep X-Cache-Status
echo "Purging..."
curl "localhost/purge/images/1.jpg"
echo "Fourth request"
curl -v --silent "localhost/images/1.jpg" 2>&1 | grep X-Cache-Status
echo "Fifth request"
curl -v --silent "localhost/images/1.jpg" 2>&1 | grep X-Cache-Status
