ipapi() {
  local result=$(curl -s "http://ip-api.com/json/$1")
  local status_code=$(echo "$result" | jq -r '.status')
  local country=$(echo "$result" | jq -r '.country')
  local countryCode=$(echo "$result" | jq -r '.countryCode')
  local region=$(echo "$result" | jq -r '.region')
  local regionName=$(echo "$result" | jq -r '.regionName')
  local city=$(echo "$result" | jq -r '.city')
  local zip=$(echo "$result" | jq -r '.zip')
  local lat=$(echo "$result" | jq -r '.lat')
  local lon=$(echo "$result" | jq -r '.lon')
  local timezone=$(echo "$result" | jq -r '.timezone')
  local isp=$(echo "$result" | jq -r '.isp')
  local org=$(echo "$result" | jq -r '.org')
  local as=$(echo "$result" | jq -r '.as')
  local query=$(echo "$result" | jq -r '.query')

  echo "🌐 Status: $status_code"
  echo "🏳️ Country: $country"
  echo "🌍 Country Code: $countryCode"
  echo "📍 Region: $region"
  echo "🏞️ Region Name: $regionName"
  echo "🏙️ City: $city"
  echo "📪 Zip Code: $zip"
  echo "🌐 Latitude: $lat"
  echo "🌐 Longitude: $lon"
  echo "🕒 Timezone: $timezone"
  echo "🔌 ISP: $isp"
  echo "🏢 Organization: $org"
  echo "🔒 AS: $as"
  echo "🔎 IP: $query"
}
