# お菓子の虜 Web APIからランダムなお菓子をjson形式&日本語で取得する
# 参考) https://sysbird.jp/toriko/webapi/
for i in $((RANDOM % 1640)); do
    curl -s "https://www.sysbird.jp/webapi/?apikey=guest&format=json&id="$i | python3 -m json.tool | sed 's/\\\u\(....\)/\&#x\1;/g' | nkf --numchar-input -w ;
done