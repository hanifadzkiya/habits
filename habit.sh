ACTION=$1

habits=()

echoerr() {
  echo $1 1>&2; 
}

print_habits() {
  echo $habits
}

save_habits() {
  echo "${habits[*]}" > habits.txt
}

add_habit() {
  habits+=("$1")
  save_habits
  echo "Habit \"${1}\" successfully added.. Do your habits everyday although it is small, cheers !"
  print_habits
  exit 0
}

case $ACTION in
  add) add_habit "$2" ;;
  *) echoerr 'Command not found' ; exit 1;; 
esac
