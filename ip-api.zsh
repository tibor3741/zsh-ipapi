ipapi_info() {
  local result=$(curl -s "http://ip-api.com/json/$1?fields=status,message,continent,continentCode,country,countryCode,region,regionName,city,district,zip,lat,lon,timezone,offset,currency,isp,org,as,asname,reverse,mobile,proxy,hosting,query")
  local status_code=$(echo "$result" | jq -r '.status')
  local country=$(echo "$result" | jq -r '.country')
  local countryCode=$(echo "$result" | jq -r '.countryCode')
  local region=$(echo "$result" | jq -r '.region')
  local regionName=$(echo "$result" | jq -r '.regionName')
  local city=$(echo "$result" | jq -r '.city')
  local zip=$(echo "$result" | jq -r '.zip')
  local timezone=$(echo "$result" | jq -r '.timezone')
  local isp=$(echo "$result" | jq -r '.isp')
  local org=$(echo "$result" | jq -r '.org')
  local as=$(echo "$result" | jq -r '.as')
  local query=$(echo "$result" | jq -r '.query')
  local reverse=$(echo "$result" | jq -r '.reverse')
  local hosting=$(echo "$result" | jq -r '.hosting')
  local mobile=$(echo "$result" | jq -r '.mobile')
  local is_proxy=$(echo "$result" | jq -r '.proxy')

  echo "🌐 Status: $status_code"
  echo "🔁 Reverse DNS: $reverse"
  echo "🏳️  Country: $country"
  echo "🌍 Country Code: $countryCode"
  echo "📍 Region: $region"
  echo "🏞️  Region Name: $regionName"
  echo "🏙️  City: $city"
  echo "📪 Zip Code: $zip"
  echo "🕒 Timezone: $timezone"
  echo "🔌 ISP: $isp"
  echo "🏢 Organization: $org"
  echo "🕸️  Hosting: $hosting"
  echo "📱 Mobile: $mobile"
  echo "📎 Proxy: $is_proxy"
  echo "🔒 AS: $as"
  echo "🔎 IP: $query"

}

alias ipapi='ipapi_info'
