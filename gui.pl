/*
 * Frontend GUI implementation using the XPCE toolkit.
 */

:- use_module(library(pce)).

% main entry point to open and start the gui
run_gui :-
    init_window(Window),
    init_header(Header, Pokeball, Prof),
    init_questions(QuestionDialog),
    display_header(Window, Header, Pokeball, Prof),
    display_questions(Window, Header, QuestionDialog),
    open_window(Window).

% question strings
question_label_1('If you had to describe your personality in one word, what would it be?').
question_label_2('What are three core values that you live by?').
question_label_3('Which do you prefer? Going for a wilderness hike or staying in to read a book?').

% open XQuartz window
open_window(Window) :-
    send(Window, open).

% initialize empty window object
init_window(Window) :-
    new(Window, window("CPSC 312 Project 2: Logic Programming")), % sets window title
    send(Window, size, size(900, 180)). % width x height; 800 x 140 (pixels)

% initialize application heading with text, pokeball, and professor
init_header(Header, Pokeball, Professor) :-
    new(Header, text('Pokemon Personality Test')), % create new object for the header
    send(Header, font, font(helvetica, bold, 30)), % set font and weight
    new(Pokeball, bitmap('assets/images/xpm/pokeball.xpm')), % display pokeball image using `bitmap`
    new(Professor, bitmap('assets/images/xpm/professor.xpm')). % display professor image using `bitmap`

% display header objects onto the window
display_header(Window, Header, Pokeball, Professor) :-
    send(Window, display, Header),
    send(Header, center_x, Window?center_x),
    send(Header, y, 20),
    send(Window, display, Pokeball),
    send(Pokeball, y, 10),
    send(Pokeball, x, 60),
    send(Window, display, Professor),
    send(Professor, y, 15),
    send(Professor, x, 690).
    

% initialize questions dialog
init_questions(QuestionDialog) :-
    new(QuestionDialog, dialog),
    send(QuestionDialog, gap, size(0, 20)),
    send(QuestionDialog, append, label('Answer the following questions:')),
    question_label_1(Label1), % use separate variables for question labels
    question_label_2(Label2),
    question_label_3(Label3),
    send(QuestionDialog, append, new(Question1, text_item(Label1))),
    send(QuestionDialog, append, new(Question2, text_item(Label2))),
    send(QuestionDialog, append, new(Question3, text_item(Label3))),
    send(QuestionDialog, append, button('Submit', message(@prolog, show_answers,
        Question1?selection, Question2?selection, Question3?selection))),
    send(QuestionDialog, default_button, 'Submit').

% display questions dialog onto the window
display_questions(Window, Header, QuestionDialog) :-
    send(Window, display, QuestionDialog),
    send(QuestionDialog, below, Header),
    send(QuestionDialog, center_x, Window?center_x),
    send(QuestionDialog, open_centered).

% show answers to questions
show_answers(Q1, Q2, Q3) :-
    new(ResponseDialog, dialog('Answers')),
    send(ResponseDialog, append, label('Your answers:')),
    send(ResponseDialog, append, new(Q1Label, text('Answer to Question 1: '))),
    send(ResponseDialog, append, new(Q1Response, text(Q1))),
    send(ResponseDialog, append, new(Q2Label, text('Answer to Question 2: '))),
    send(ResponseDialog, append, new(Q2Response, text(Q2))),
    send(ResponseDialog, append, new(Q3Label, text('Answer to Question 3: '))),
    send(ResponseDialog, append, new(Q3Response, text(Q3))),
    send(ResponseDialog, append, button('OK', message(ResponseDialog, destroy))),
    send(ResponseDialog, default_button, 'OK'),
    send(Q1Label, right, Q1Response),
    send(Q2Label, right, Q2Response),
    send(Q3Label, right, Q3Response),
    send(ResponseDialog, open_centered).
