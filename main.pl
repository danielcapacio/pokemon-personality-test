/*
 * Main file for application entry.
 * 
 * to run:
 *      ?- [gui, main].
 *      ?- run.
 */

:- consult('gui.pl').

% main entry point procedure for the program. Runs the `run_gui/0` procedure from `gui.pl`.
run :-
    gui:run_gui.
