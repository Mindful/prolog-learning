word(abalone,a,b,a,l,o,n,e).
word(abandon,a,b,a,n,d,o,n).
word(enhance,e,n,h,a,n,c,e).
word(anagram,a,n,a,g,r,a,m).
word(connect,c,o,n,n,e,c,t).
word(elegant,e,l,e,g,a,n,t).

/*
"_" is an anonymous variable; each occurence of it represents a distinct variable and we can use it to fill values we don't need
*/

crosswd(H1,H2,H3,V1,V2,V3) :- 
	word(H1, _, _11, _, _12, _, _13, _),
	word(H2, _, _21, _, _22, _, _23, _),
	word(H3, _, _31, _, _32, _, _33, _),
	word(V1, _, _11, _, _21, _, _31, _),
	word(V2, _, _12, _, _22, _, _32, _),
	word(V3, _, _13, _, _23, _, _33, _).