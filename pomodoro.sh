function notif() {
  osascript -e "display notification \"$2\" with title \"$1\""
}

function pwork() {
  echo "--- work starts ---"
  for i in {1..25}; do 
    sleep 60
    echo "work: $i minutes elapsed"
  done
  notif "work is over" "time to take a break"
  echo "--- work ends ---"
}

function pbreak() {
  echo "--- break starts ---"
  for i in {1..5}; do 
    sleep 60
    echo "break: $i minutes elapsed"
  done
  notif "break is over" "time to start working"
  echo "--- break ends ---"
}