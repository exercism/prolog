% Wordy Module -- Built for SWI-PL v8.0.3

:- use_module(library(dcg/basics)).

% wordy(+Question, -Answer)
% predicate with takes an instantiated string `Question` representing a simple mathematical word problem.
% uses phrase and a DCG to unify a list of terms with a character list.  The list of terms is then reduced
% to the integer answer, which is returned.
wordy(Question, Answer) :-
  string_codes(Question, QuestionChars),
  phrase(parse(Ts), QuestionChars),
  !,
  compute(Ts, Answer).

% compute(+InfixOperationList, -Answer)
compute([T | Ts], Answer) :- compute(Ts, T, Answer).

compute([], Answer, Answer).

compute(["+", T | Ts], Acc, Answer) :-
  Next is Acc + T,
  compute(Ts, Next, Answer).

compute(["-", T | Ts], Acc, Answer) :-
  Next is Acc - T,
  compute(Ts, Next, Answer).

compute(["*", T | Ts], Acc, Answer) :-
  Next is Acc * T,
  compute(Ts, Next, Answer).

compute(["/", T | Ts], Acc, Answer) :-
  Next is div(Acc, T),
  compute(Ts, Next, Answer).

% Wordy DCG
% DCG describing a simple mathematical word problem
% phrase --> What is <integer> [<operator> <integer> [...]]?
parse(E) -->
  `What is`,
  math_expr(E, number),
  `?`.

parse(_) -->
  { throw(error(unknown_operation_error, wrong_form)) }.

math_expr(E, T) --> blank, math_expr(E, T).

math_expr([I | Es], number) -->
  integer(I),
  math_expr(Es, operator).

math_expr(_, number) -->
  { throw(error(syntax_error, integer_expected)) }.

math_expr([], operator) --> [].

math_expr([O | Es], operator) -->
  operator(O),
  math_expr(Es, number).

math_expr(_, operator) -->
  { throw(error(unknown_operation_error, operator_not_implemented)) }.

operator("+") --> `plus`.
operator("-") --> `minus`.
operator("*") --> `multiplied by`.
operator("/") --> `divided by`.
operator(I)   -->
  integer(I),
  { throw(error(syntax_error, integer_found_rather_than_operator)) }.
