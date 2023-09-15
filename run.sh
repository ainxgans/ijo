start_date="2023-01-01"
end_date="2023-06-24"

formatted_start_date=$(date -d "$start_date" +"%a %b %d 14:00 %Y +0100")
formatted_end_date=$(date -d "$end_date" +"%a %b %d 14:00 %Y +0100")

current_date="$formatted_start_date"
while [ "$current_date" != "$formatted_end_date" ]; do
    for i in {1..100}; do
        echo "Commit ke-$i pada tanggal $current_date" > README.md
        git add README.md
        GIT_COMMITTER_DATE="$current_date" git commit -m "Commit ke-$i pada tanggal $current_date"
    done
done
