/*
 * Main file for application entry.
 * 
 * to run:
 *      ?- [gui, main].
 *      ?- run.
 */

:- consult('gui.pl').

% Main entry point procedure for the program. Runs the `run/0` procedure from `gui.pl`.
run :-
    gui:run_gui.
