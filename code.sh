# Written by khungrukcad
# August 01, 2016
# Feel free to contact me at: khungrukcad@gmail.com
# 0.1v

khungrukcad_khung () {
hs_tarikh='date +%Y%m%d'
hs_url="http://hijrah.mfrapps.com/api/hijrah-api.php?tarikh=$tarikh"
hs_xml=$(curl -k --silent "$hs_url")
hs_khung_day=$(printf '%s\n' "$hs_xml" | xmlstarlet sel -t -v "date/khung/day")
hs_khung_month=$(printf '%s\n' "$hs_xml" | xmlstarlet sel -t -v "date/khung/month")
hs_khung_year=$(printf '%s\n' "$hs_xml" | xmlstarlet sel -t -v "date/khung/year")
hs_masihi_day=$(printf '%s\n' "$hs_xml" | xmlstarlet sel -t -v "date/masihi/day")
hs_masihi_month=$(printf '%s\n' "$hs_xml" | xmlstarlet sel -t -v "date/masihi/month")
hs_masihi_month_name=$(printf '%s\n' "$hs_xml" | xmlstarlet sel -t -v "date/masihi/month_name")
hs_masihi_year=$(printf '%s\n' "$hs_xml" | xmlstarlet sel -t -v "date/masihi/year")
echo "Today in khung: $hs_khung_day $hs_khung_month $hs_khung_year"
echo "Today in masihi: $hs_masihi_day $hs_masihi_month_name $hs_masihi_year"
}
khungrukcad_khung
