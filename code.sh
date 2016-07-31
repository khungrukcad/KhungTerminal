# Written by HakaseShounen
# August 01, 2016
# Feel free to contact me at: hakaseshounen@gmail.com
# 0.1v

hakaseshounen_hijra () {
hs_tarikh='date +%Y%m%d'
hs_url="http://hijrah.mfrapps.com/api/hijrah-api.php?tarikh=$tarikh"
hs_xml=$(curl -k --silent "$hs_url")
hs_hijra_day=$(printf '%s\n' "$hs_xml" | xmlstarlet sel -t -v "date/hijrah/day")
hs_hijra_month=$(printf '%s\n' "$hs_xml" | xmlstarlet sel -t -v "date/hijrah/month")
hs_hijra_year=$(printf '%s\n' "$hs_xml" | xmlstarlet sel -t -v "date/hijrah/year")
hs_masihi_day=$(printf '%s\n' "$hs_xml" | xmlstarlet sel -t -v "date/masihi/day")
hs_masihi_month=$(printf '%s\n' "$hs_xml" | xmlstarlet sel -t -v "date/masihi/month")
hs_masihi_month_name=$(printf '%s\n' "$hs_xml" | xmlstarlet sel -t -v "date/masihi/month_name")
hs_masihi_year=$(printf '%s\n' "$hs_xml" | xmlstarlet sel -t -v "date/masihi/year")
echo "Today in hijra: $hs_hijra_day $hs_hijra_month $hs_hijra_year"
echo "Today in masihi: $hs_masihi_day $hs_masihi_month_name $hs_masihi_year"
}
hakaseshounen_hijra
