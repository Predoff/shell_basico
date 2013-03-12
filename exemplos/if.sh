# Exemplo do uso de IF

if (true) then
  echo "true is true!"
else
  echo "true is false"
fi

if (false) then
  echo "false is true"
else
  echo "false is false"
fi

num=5

# Exemplo com ELSE IF e uso do método 'test' em confunto com operadores matemáticos.
if (test $num -eq 6) then
  echo "Num equal 6"
elif (test $num -gt 6) then
  echo "Num greater then 6"
else
  echo "Num less then 6"
fi


# Exit 0

if (exit 0) then
  echo "0 is true"
fi

# Exit 1

if (exit 1) then
  echo "exit 1 is true"
else
  echo "exit 1 is false"
fi

# Exit 1

if (exit -1) then
  echo "exit -1 is true"
else
  echo "exit -1 is false"
fi
