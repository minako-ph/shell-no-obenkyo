# /bash/bin

gender=$1
age=$2

if [ $# -ne 2 ];
then
  exit 1;
fi

if [ $age -lt 0 ]
then
  exit 1;
fi

if [ $gender = 'man' ];
then
  if [ $age -lt 20 ];
  then
    echo 'Man:子供';
  elif [ $age -lt 60 ];
  then
    echo 'Man:成人';
  else
    echo 'Man:老人';
  fi

elif [ $gender = 'women' ];
then
  if [ $age -lt 20 ];
  then
    echo 'Woman:子供';
  elif [ $age -lt 60 ];
  then
    echo 'Woman:成人';
  else
    echo 'Woman:老人';
  fi

else
  exit 1;
fi
