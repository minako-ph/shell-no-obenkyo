#! /bin/basah
$1='gender'
if test $gender = "woman";
then
    echo "Woman:"
elif $1 = "man":
then
    echo "Man:"
fi

if test $2 -lt 20;
then
    echo "Child"
elif test $2 -ge 60;
then
    echo "Elderly"
else
    echo "Adult"
fi
