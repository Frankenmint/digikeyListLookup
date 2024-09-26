#!/bin/bash



urls=(
"https://api.digikey.com/products/v4/search/490-1309-1-ND/pricing"
"https://api.digikey.com/products/v4/search/490-8257-1-ND/pricing"
"https://api.digikey.com/products/v4/search/490-14306-1-ND/pricing"
"https://api.digikey.com/products/v4/search/311-1127-1-ND/pricing"
"https://api.digikey.com/products/v4/search/732-7431-1-ND/pricing"
"https://api.digikey.com/products/v4/search/1276-1566-1-ND/pricing"
"https://api.digikey.com/products/v4/search/587-5514-1-ND/pricing"
"https://api.digikey.com/products/v4/search/490-10746-1-ND/pricing"
"https://api.digikey.com/products/v4/search/1276-1782-1-ND/pricing"
"https://api.digikey.com/products/v4/search/1276-1096-1-ND/pricing"
"https://api.digikey.com/products/v4/search/1276-3376-1-ND/pricing"
"https://api.digikey.com/products/v4/search/1276-1234-1-ND/pricing"
"https://api.digikey.com/products/v4/search/839-54-00164CT-ND/pricing"
"https://api.digikey.com/products/v4/search/2073-USB4105-GF-ACT-ND/pricing"
"https://api.digikey.com/products/v4/search/WM4330-ND/pricing"
"https://api.digikey.com/products/v4/search/SLC1175-271MEC_COC/pricing"
"https://api.digikey.com/products/v4/search/311-8.25KLRCT-ND/pricing"
"https://api.digikey.com/products/v4/search/YAG2984CT-ND/pricing"
"https://api.digikey.com/products/v4/search/311-0.0JRCT-ND/pricing"
"https://api.digikey.com/products/v4/search/311-3.74KLRCT-ND/pricing"
"https://api.digikey.com/products/v4/search/YAG2958CT-ND/pricing"
"https://api.digikey.com/products/v4/search/YAG3213CT-ND/pricing"
"https://api.digikey.com/products/v4/search/311-10.0LRCT-ND/pricing"
"https://api.digikey.com/products/v4/search/CSR1206FT1R00CT-ND/pricing"
"https://api.digikey.com/products/v4/search/311-20.0KLRCT-ND/pricing"
"https://api.digikey.com/products/v4/search/13-RC0402FR-135K6LCT-ND/pricing"
"https://api.digikey.com/products/v4/search/311-49.9LRCT-ND/pricing"
"https://api.digikey.com/products/v4/search/311-10KJRCT-ND/pricing"
"https://api.digikey.com/products/v4/search/311-1.00KLRCT-ND/pricing"
"https://api.digikey.com/products/v4/search/311-100LRCT-ND/pricing"
"https://api.digikey.com/products/v4/search/2449-CS1213AGF260CT-ND/pricing"
"https://api.digikey.com/products/v4/search/296-TPS546D24ARVFRCT-ND/pricing"
"https://api.digikey.com/products/v4/search/1028-1509-1-ND/pricing"
"https://api.digikey.com/products/v4/search/1965-ESP32-S3-WROOM-1-N16R8CT-ND/pricing"
"https://api.digikey.com/products/v4/search/MCP1824T-1202E/OTCT-ND/pricing"
"https://api.digikey.com/products/v4/search/MCP1824T-0802E/OTCT-ND/pricing"
"https://api.digikey.com/products/v4/search/0-JO32-B-1V3-1-T1-LF/pricing"
"https://api.digikey.com/products/v4/search/296-24739-1-ND/pricing"
"https://api.digikey.com/products/v4/search/EMC2101-R-ACZL-CT-ND/pricing"
)

Ultraurls=(
    "https://api.digikey.com/products/v4/search/1292-1639-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/587-5514-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/718-1028-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/732-8422-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/399-C0402C689C5GAC7867CT-ND/pricing"
    "https://api.digikey.com/products/v4/search/490-6539-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/1276-6471-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/1276-1552-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/311-1114-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/311-1128-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/1276-1096-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/1292-1580-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/P16200CT-ND/pricing"
    "https://api.digikey.com/products/v4/search/445-6008-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/SK310A-LTPMSCT-ND/pricing"
    "https://api.digikey.com/products/v4/search/839-54-00164CT-ND/pricing"
    "https://api.digikey.com/products/v4/search/455-B2B-XH-A-ND/pricing"
    "https://api.digikey.com/products/v4/search/WM4330-ND/pricing"
    "https://api.digikey.com/products/v4/search/2073-USB4105-GF-ACT-ND/pricing"
    "https://api.digikey.com/products/v4/search/513-1568-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/296-27625-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/2N7002KWCT-ND/pricing"
    "https://api.digikey.com/products/v4/search/311-10KJRCT-ND/pricing"
    "https://api.digikey.com/products/v4/search/13-RC0402FR-135K6LCT-ND/pricing"
    "https://api.digikey.com/products/v4/search/RMCF0402JT5K10CT-ND/pricing"
    "https://api.digikey.com/products/v4/search/311-1.00MLRCT-ND/pricing"
    "https://api.digikey.com/products/v4/search/311-3.83KLRCT-ND/pricing"
    "https://api.digikey.com/products/v4/search/RMCF0402FT4K12CT-ND/pricing"
    "https://api.digikey.com/products/v4/search/311-1.33KLRCT-ND/pricing"
    "https://api.digikey.com/products/v4/search/311-4.99KLRCT-ND/pricing"
    "https://api.digikey.com/products/v4/search/311-3.32KLRCT-ND/pricing"
    "https://api.digikey.com/products/v4/search/311-80.6KLRCT-ND/pricing"
    "https://api.digikey.com/products/v4/search/2449-CS1213AGF260CT-ND/pricing"
    "https://api.digikey.com/products/v4/search/1908-O250-JO32-B-1V3-1-T1-LFCT-ND/pricing"
    "https://api.digikey.com/products/v4/search/296-21930-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/MCP1824T-1802E/OTCT-ND/pricing"
    "https://api.digikey.com/products/v4/search/MCP1824T-0802E/OTCT-ND/pricing"
    "https://api.digikey.com/products/v4/search/EMC2101-R-ACZL-CT-ND/pricing"
    "https://api.digikey.com/products/v4/search/296-45218-5-ND/pricing"
    "https://api.digikey.com/products/v4/search/296-37445-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/DS4432U+-ND/pricing"
    "https://api.digikey.com/products/v4/search/1028-1509-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/1965-ESP32-S3-WROOM-1-N16R8CT-ND/pricing"
    "https://api.digikey.com/products/v4/search/728-1074-1-ND/pricing"
    "https://api.digikey.com/products/v4/search/S5596-ND/pricing"
)


# Client ID and Authorization Bearer token
client_id="C4H3.....................Vv4KQ"
client_secret="Ka.........RRq"

# Fetch the Bearer token
bearer_token=$(curl -s -X POST \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -d "client_id=$client_id" \
    -d "client_secret=$client_secret" \
    -d "grant_type=client_credentials" \
    "https://api.digikey.com/v1/oauth2/token")

# Extract the access_token using jq
access_token=$(echo "$bearer_token" | jq -r '.access_token')

# Counter for loop control
counter=0
max_attempts=${#urls[@]}

# Loop to iterate over URLs
while [ $counter -lt $max_attempts ]
do
  # URL to request
  url="${urls[$counter]}"

  # Make the curl request, capture both response body and status code
  response=$(curl -s -w "\n%{http_code}" -H "X-DIGIKEY-Client-Id: $client_id" -H "authorization: Bearer $access_token" "$url")
  
  # Extract body and HTTP code separately
  http_body=$(echo "$response" | head -n -1)
  http_code=$(echo "$response" | tail -n1)
  
  # Check if the HTTP code is 401 (unauthorized)
  if [ "$http_code" = "401" ]; then
    echo "Bearer token is expired. Please refresh the token."
    break
  fi

  # Check if the response contains valid ProductPricings data
  if echo "$http_body" | jq -e '.ProductPricings' > /dev/null 2>&1; then
    echo "Request successful for $url"
    
    # Extract and filter pricing information using jq
    echo "$http_body" | jq -r '
      .ProductPricings[] | 
      .ManufacturerProductNumber as $id | 
      .ProductVariations[] |
      .DigiKeyProductNumber as $productNumber |
      .StandardPricing[] | 
      select(.BreakQuantity >= 1000 and .BreakQuantity < 20000) |
      "Product ID: \($productNumber) | Quantity: \(.BreakQuantity) | Unit Price: \(.UnitPrice)"
    '
  else
    echo "Request failed for $url with invalid response or no pricing data"
  fi

  # Increment the counter
  counter=$((counter + 1))

  # Sleep for 1 second between requests (optional)
  sleep 1
done
