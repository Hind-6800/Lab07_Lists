% Lab Activity - Shopping Program 

% Type: "start_shopping." to run the program

start_shopping :-
    Basket = [pen, notebook, pencil, eraser, ruler],
    menu(Basket).

menu(Basket) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    write('|: '),
    read(Choice),
    handle_choice(Choice, Basket).

handle_choice(d, Basket) :-
    display_list(Basket),
    menu(Basket).

handle_choice(a, Basket) :-
    write('enter the item you want to add it'), nl,
    write('|: '),
    read(Item),
    add(Item, Basket, NewBasket),
    write('The item has been added'), nl,
    menu(NewBasket).

handle_choice(e, _) :-
    write('Exiting shopping program. Goodbye!'), nl.

display_list([]).

display_list([H|T]) :-
    write(H), nl,
    display_list(T).

add(X, L, [X|L]).