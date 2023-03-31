% Reference Implementation
%
% Rebuilding Binary Trees from Traversals (medium)
%  Inorder and Preorder
%

/* Default content can be this stub.
tree_traversals(Tree, Preorder, Inorder) :- fail.
*/

preorder(nil)         --> [].
preorder(node(L,V,R)) --> [V],preorder(L),preorder(R).

% Left recursive definitions can cause infinite loops.
% E.g. in a naive implementation 
%   ?- phrase(inorder(T),[a,b,c]). 
% unifies once and then loops.
% (remove extra arguments from inorder//3 below to see this in action). 
% Notice the second rule directly consumes one item from the traversal.
% The loop can be broken by applying the second rule only if there are
% still items in the traversal. To encode this requirement the traversal's
% length can be used to count the number of times the 2nd rule has been
% applied. Each time the 2nd rule is applied an _arbitrary_ item is dropped
% ([_|B1]) corresponding to the one item directly consumed by the rule. When
% the traversal has been completely consumed the extra argument is [] which
% does not match [_|B1] so the recursion is "bounded".
inorder(nil, Ls,Ls)             --> [].
inorder(node(L,V,R), [_|B1],B3) --> inorder(L, B1,B2),[V],inorder(R, B2,B3).

tree_traversals(Tree, Preorder, Inorder) :-
    phrase(preorder(Tree),Preorder),
    phrase(inorder(Tree,Inorder,_),Inorder).
