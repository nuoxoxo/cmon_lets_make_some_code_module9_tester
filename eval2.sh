name=`./PmergeMe`

echo "(misc.)"
././PmergeMe 42 80 82 96 64 58 69 71 73 1000
echo ""
echo ""

echo "(misc.)"
././PmergeMe 20 88 47 86 64 2 30 71 3 57 63 68 54 22 70 19 34 90 44 97 32 87 50 78 56 91 4242 52 18 89 8 49 51 4 24 16 15 65 5 9 66 26
echo ""
echo ""

echo "(Subject #1)"
././PmergeMe 3 5 9 7 4
echo ""
echo ""

echo "(Subject #2)"
././PmergeMe `shuf -i 1-100000 -n 3000 | tr "\n" " "`
echo ""
echo ""

echo "(Eval)"
././PmergeMe `shuf -i 1-1000 -n 3000 | tr "\n" " " `
echo ""
echo ""

echo "(Err)"
printf "./PmergeMe "
echo ""
echo ""

echo "(Err)"
printf "./PmergeMe \"\""
echo ""
echo ""