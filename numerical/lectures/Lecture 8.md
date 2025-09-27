- Pivoting is done by simply finding the largest value in the current column that has not been reached yet
	- Imagine this as exclusively searching downwards

Pivoting uses about $n^{2} /2$ operations, but because this is less than the requirement for LU factorisation ($n^{3} /3$), it does not change the asymptotic behaviour and therefore is the same speed.