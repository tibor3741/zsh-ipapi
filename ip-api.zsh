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

tput setaf 46; echo -n "🌐 Status: "; tput sgr0; echo "$status_code"
tput setaf 46; echo -n "🔁 Reverse DNS: "; tput sgr0; echo "$reverse"
tput setaf 46; echo -n "🏳️Country: "; tput sgr0; echo "$country"
tput setaf 46; echo -n "🌍 Country Code:";tput sgr0;echo "$countryCode"
tput setaf 46; echo -n "📍 Region:"; tput sgr0; echo "$region"
tput setaf 46; echo -n "🏞️  Region Name: "; tput sgr0; echo "$regionName"
tput setaf 46; echo -n "🏙️  City: "; tput sgr0; echo "$city"
tput setaf 46; echo -n "📪 Zip Code:"; tput sgr0; echo "$zip"
tput setaf 46; echo -n "🕒 Timezone: "; tput sgr0; echo "$timezone"
tput setaf 46; echo -n "🔌 ISP: "; tput sgr0; echo "$isp"
tput setaf 46; echo -n "🏢 Organization:"; tput sgr0; echo "$org"
tput setaf 46; echo -n "🕸️  Hosting:";tput sgr0; echo "$hosting"
tput setaf 46; echo -n "📱 Mobile: ";tput sgr0; echo "$mobile"
tput setaf 46; echo -n  "📎 Proxy: ";tput sgr0; echo  "$is_proxy"
tput setaf 46; echo -n "🔒 AS: "; tput sgr0; echo  "$as"
tput setaf 46; echo -n "🔎 IP: "; tput sgr0; echo  "$query"

}

alias ipapi='ipapi_info'
