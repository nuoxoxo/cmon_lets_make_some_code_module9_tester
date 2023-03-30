GRN='\033[1;32m'
NOC='\033[0m'

printf "${GRN} Sanity tests I :: Error ${NOC}"

./RPN ""
./RPN "("
./RPN "a"
./RPN "["
./RPN "}"
./RPN "(("
./RPN "(("
./RPN "()"
./RPN "{}"
./RPN "1 2 3 4 +++//"
./RPN "~"
./RPN "*"
./RPN "&"
./RPN "."
./RPN "@"
./RPN ">"
./RPN "<"
./RPN " "
./RPN "  "
./RPN ""
./RPN "\b"
./RPN "\t"
./RPN "\n\n"
./RPN "\v"
./RPN "\f"
./RPN "\r"
./RPN "0 0 /"
./RPN "3 -4 5 + -"
./RPN "(1 + 1)"
./RPN "1 + (2 + 1)"
./RPN "1 + 0 6 9 3 + -11 * / * 17 + 5 +"



printf "${GRN} Basic tests ${NOC}"

./RPN "3 4 +"
printf "7 \n\n"

./RPN "3 5 6 + *"
printf "33 \n\n"

./RPN "3 10 5 + *"
printf "5 \n\n"

./RPN "12 * 2 / 5 + 46 * 6 / 8 * 2 / + 2 * 2 -"
printf "42 \n\n"

./RPN "99 3 -4 + 2 - 6 + -2 +"
printf "\-3 \n\n"

./RPN "123 + -2 3 * 7 + -4 +"
printf "\-13 \n\n"

./RPN "4 12 -764 + 23 * 23 1 -"
printf "2 \n\n"




printf "${GRN} Subject tests ${NOC}"

./RPN "8 9 * 9 - 9 - 9 - 4 - 1 +"
printf "42 \n\n"

./RPN "7 7 * 7 -"
printf "42 \n\n"

./RPN "1 2 * 2 / 2 * 2 4 - +"
printf "0 \n\n"

./RPN "(1 2 + 1)"
printf "1 \n\n"




printf "${GRN} Subject tests with a twist ${NOC}"


./RPN "10 6 9 3 + -11 * / * 17 + 5 +"
printf "13 \n\n"

./RPN "2 1 + 3 *"
printf "9 \n\n"

./RPN "21 +3*"
printf "9 \n\n"

./RPN "4135/+"
printf "1 \n\n"

./RPN "4 13 5 / +"
printf "1 \n\n"



printf "${GRN} Eval ${NOC}"

./RPN "8 9 * 9 - 9 - 9 - 4 - 1 +"
printf "42 \n\n"

./RPN "9 8 * 4 * 4 / 2 + 9 - 8 - 8 - 1 - 6 -"
printf "42 \n\n"

./RPN "1 2 * 2 / 2 + 5 * 6 - 1 3 * - 4 5 * * 8 /"
printf "15 \n\n"
