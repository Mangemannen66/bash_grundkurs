###################################################
# Skript som visar antaletmöjliga användare       #
# Hur många som för tillfället är inloggade       #
# och hur många processer som körs för tillfället #
###################################################
#
# Antal möjliga användare till systemtet.
#
echo -n "Antal möjliga användare i systemet: "
cat /etc/passwd | wc -l
#
# Antal användare som är inloggade.
#
echo -n "Antal användare som är inloggade:   "
who | wc -l
#
# Antal processer som är i gång i nuläget
echo -n "Antal processer som är igång nu:    "
ps -e | wc -l
