print_solution([Head|Tail]) :-
	write(Head),
	nl,
	print_solution(Tail).

solution(S) :-

	S = [[Name1,Age1,Color1,Animal1],
		 [Name2,Age2,Color2,Animal2],
		 [Name3,Age3,Color3,Animal3]],


		 Names = [huey, dewey, louie],
		 Names = [Name1,Name2,Name3],

		 Age = [4,5,6],
		 permutation(Age,[Age1,Age2,Age3]),
		 
		 Colors = [green, white, yellow],
		 permutation(Colors,[Color1,Color2,Color3]),

		 Animal = [camel, giraffe, panda],
		 permutation(Animal,[Animal1,Animal2,Animal3]),



	% 1 Huey is younger than the nephew in the green shirt.
	member([huey,Age1,Color1,Animal1],S), Age1\= 6, Color1 \= green, Color1 \= yellow, Animal1 \= giraffe,
	
	% 2 the 5 year old wears the shirt with a camel on item
	member([_,5,_,camel],S),
	
	% 3 deweys shirt is yellow
	member([dewey,D,yellow,_],S),  D \=6,
	
	% 4 louie wears the shirt with the giraffe
	member([louie,_,_,giraffe],S),
	
	% 5 the panda is not on the white shirt
	member([_,_,G,panda],S), G \= white,
	
	print_solution(S).
	

