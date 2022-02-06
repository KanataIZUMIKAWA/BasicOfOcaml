let rec sigma n =
  if (n = 1)
  then 1
  else n + sigma(n - 1);;


sigma 9;;
sigma 10;;