# User configurables below:
# Uncomment this line for fahrenheit:
#metric='imperial' && unit='F'
# Otherwise comment above line, uncomment here for celcius:
metric='metric' && unit='C'
api='82d74cf67382bc1f0aa01d41b8e4d4c0'

# First, geolocate our IP:
ipinfo=$(curl -s ipinfo.io)
latlong=$(echo $ipinfo | jq -r '.loc')
# Parse the latitude and longitude into their own values
lat=${latlong%,*}
long=${latlong#*,}
#echo $lat
#echo $long
weather=$(curl -s http://api.openweathermap.org/data/2.5/weather\?lat\=${lat}\&lon\=${long}\&units\=${metric}\&appid=${api})
#http://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b1b15e88fa797225412429c1c50c122a1
#echo $weather
city=$(echo $weather | jq -r '.name')
temperature=$(printf '%.0f' $(echo $weather | jq '.main.temp'))
condition=$(echo $weather | jq -r '.weather[0].main')

echo -n "$city - $condition: "
echo $temperature °$unit