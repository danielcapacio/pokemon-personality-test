/*
 * Frontend GUI implementation using the XPCE toolkit.
 */

:- use_module(library(pce)).
:- consult('text.pl').

% main entry point to open and start the gui
run_gui :-
    init_window(Window),
    init_header(Header, Pokeball, Prof),
    init_questions(QuestionDialog),
    display_header(Window, Header, Pokeball, Prof),
    display_questions(Window, Header, QuestionDialog),
    open_window(Window).

% open XQuartz window
open_window(Window) :-
    send(Window, open).

% initialize empty window object
init_window(Window) :-
    new(Window, window("CPSC 312 Project 2: Logic Programming")), % sets window title
    send(Window, size, size(900, 180)). % width x height; 900 x 180 (pixels)

% initialize application heading with text, pokeball, and professor
init_header(Header, Pokeball, Professor) :-
    new(Header, text('Pokemon Personality Test')), % create new object for the header
    send(Header, font, font(helvetica, bold, 30)), % set font, weight, and size
    new(Pokeball, bitmap('assets/images/xpm/pokeball.xpm')), % display pokeball image using `bitmap`
    new(Professor, bitmap('assets/images/xpm/professor.xpm')). % display professor image using `bitmap`

% display header objects onto the window
display_header(Window, Header, Pokeball, Professor) :-
    send(Window, display, Header),
    send(Header, center_x, Window?center_x),
    send(Header, y, 20),
    send(Window, display, Pokeball),
    % set positioning
    send(Pokeball, y, 10),
    send(Pokeball, x, 60),
    send(Window, display, Professor),
    send(Professor, y, 15),
    send(Professor, x, 690).
    
% initialize questions dialog
init_questions(QuestionDialog) :-
    new(QuestionDialog, dialog),
    send(QuestionDialog, gap, size(0, 50)), % sets gap size between elements
    send(QuestionDialog, append, label('Answer the following questions:')),
    question_label_1(Label1), % use separate variables for question labels
    question_label_2(Label2),
    question_label_3(Label3),
    question_label_4(Label4),
    question_label_5(Label5),
    %send(QuestionDialog, append, new(Question1, text_item(Label1))),
    send(QuestionDialog, append, new(Question1, slider(Label1, 1, 10, 1))),
    send(QuestionDialog, append, new(Question2, slider(Label2, 1, 10, 1))),
    send(QuestionDialog, append, new(Question3, slider(Label3, 1, 10, 1))),
    send(QuestionDialog, append, new(Question4, slider(Label4, 1, 10, 1))),
    send(QuestionDialog, append, new(Question5, slider(Label5, 1, 10, 1))),
    send(QuestionDialog, append, button('Get Results',
        message(@prolog,
            get_personality_match,
            Question1?selection,
            Question2?selection,
            Question3?selection,
            Question4?selection,
            Question5?selection))), % extract user's input and pass as arguments into `get_personality_match/3` predicate
    send(QuestionDialog, default_button, 'Get Results').

% display questions dialog onto the window
display_questions(Window, Header, QuestionDialog) :-
    send(Window, display, QuestionDialog),
    send(QuestionDialog, below, Header),
    send(QuestionDialog, center_x, Window?center_x),
    send(QuestionDialog, open_centered).

% find the difference between two lists
sub(X, Y, Z) :- Z is X - Y.
subtractList([], [], []).
subtractList([X|XR], [Y|YR], [R|RR]) :-
    sub(X, Y, R),
    subtractList(XR, YR, RR).

% find sum of list
sum_list([], 0).
sum_list([H|T], Sum) :-
   sum_list(T, Rest),
   Sum is abs(H) + Rest.

findDifferenceSum(Values, Response, Sum) :-
    subtractList(Values, Response, Difference),
    sum_list(Difference, Sum).

findType(Type, Response) :-
    values_type(Type, Value),
    findDifferenceSum(Value, Response, Sum),
    \+ (values_type(OtherType, OtherValue), OtherType \= Type, findDifferenceSum(OtherValue, Response, OtherSum), OtherSum < Sum).

/*
 * matches a typing based on the user inputs
 * note: this gets called each time the `Get Results` button is pressed (submits)
 */
get_personality_match(R1, R2, R3, R4, R5) :-
    new(ResponseDialog, dialog('Your match!')),
    send(ResponseDialog, gap, size(0, 20)),
    /*
     * here is the logic to determine a user's personality type
     */
    findType(Type, [R1, R2, R3, R4, R5]),
    write(Type),
    writeln(' type matched.'), 
    display_personality_type(ResponseDialog, Type),
    send(ResponseDialog, open_centered).

% display the personality type image and explanation for the given type
display_personality_type(ResponseDialog, Type) :-
    personality_type(Type, ImagePath, Explanation),
    new(Image, bitmap(ImagePath)),
    send(ResponseDialog, append, Image),
    send(Image, y, 50),
    send(Image, x, 100),
    send(ResponseDialog, append, new(ExplanationLabel, text(Explanation))),
    send(ExplanationLabel, x, 0),
    
    % line separator
    send(ResponseDialog, append, new(Line2, line(0, 0, 800, 0))),
    send(Line2, y, 200),
    send(Line2, x, 50),
    
    send(ResponseDialog, append, button('OK', message(ResponseDialog, destroy))),
    send(ResponseDialog, default_button, 'OK').

