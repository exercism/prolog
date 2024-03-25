create_rational(Numerator, Denominator, Rational).

add(X, Y, Added).

sub(X, Y, Subtracted).

mul(X, Y, Multiplied).

div(X, Y, Divided).

abs(rational(A, B), Abs).

% You'll need to define the same pow predicate, but one where the first
% parameter is a rational number and one where the second is a rational number
pow(Rational, Power, Raised).
pow(N, Rational, Raised).
