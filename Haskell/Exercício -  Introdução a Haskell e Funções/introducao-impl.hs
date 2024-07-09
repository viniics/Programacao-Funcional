xor a b = (a || b) && (not (a && b))

impl a b = (not a) || (b)

{-equiv a b = impl(a b) && impl(b a)
-}


pow x 0 = 1
pow x 1 = x
pow x y = x * (pow x (y-1))

fatorial 0 = 1
fatorial x = x* fatorial (x-1)

{-
Primeira abordagem, falta colocar pra verificar se eh o proprio numero
isPrime x = (`rem`2 != 0) && (x`rem`3 != 0) && (x`rem`5 != 0) && (x`rem`7 != 0)
-}


{-
Segunda abordagem com estrutura auxiliar
-}
isPrime x = isPrimeHelper x (x - 1)
isPrimeHelper _ 1 = True
isPrimeHelper x y = if (x `rem` y == 0) then False else isPrimeHelper x (y - 1)


fib 0 = 0
fib 1 = 1
fib x = fib(x-1) + fib(x-2)

mmc x y = mmcAux x y x y

mmcAux :: Int -> Int -> Int -> Int -> Int
mmcAux x y xhelp yhelp 
    |x==y = x
    |x>y = mmcAux x (y + yhelp) xhelp yhelp
    |otherwise = mmcAux(x + xhelp) y xhelp yhelp