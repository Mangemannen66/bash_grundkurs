file=greptest

echo Lines that start with a T:
grep '^T' $file
echo ================================

echo Blank lines:
grep '^$' $file
echo ================================

echo Lines thet have two or more a\'s anywhere in them:
grep 'aa' $file
echo ================================

echo lines that have a two-or-more-digit number in them:
grep '[0-9][0-9]' $file
# or grep -E '[0-9]{2,}' $file
echo ================================

echo Lines that have the pattern [x,y] in them, where x and y are any numbers:
grep -E '\[[0-9]+,[0-9]+\]' $file
