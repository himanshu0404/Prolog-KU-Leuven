/*Write a Prolog Program that finds the common elements in two lists. Lets say I have two lists [1,2,3,4] and [2,4,5,1]. The common elements in these two lists are [1,2]. */
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

common_element([], _, []).
common_element([H|T],[H2|T2],[H|L]):-
    (   member(H,[H2|T2])->!,common_element(T,[H2|T2],L);
    common_element(T,[H2|T2],L)).
    
    
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
/*Execute the Program:
?-common_element([1,2,3],[5,2,6]).
OUTPUT:-
[2]
?-common_element([2,5,7,6],[5,6,3,7]).
OUTPUT:-
[5,7,6]
*/
