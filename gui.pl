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
question_label_2('What is a core value that you live by?').
question_label_3('Which do you prefer? Going for a wilderness hike or staying in to read a book?').
% TODO: maybe more questions to ask user?

% define personality types with their corresponding images and explanations
personality_type(bug, 'assets/images/xpm/typings/bug.xpm', 'Bug-type Pokémon embody traits such as resourcefulness, persistence, and attention \nto detail, which are often valued in human problem-solving and \nanalytical skills. People with these traits tend to be analytical, \nobservant, and detail-oriented, with a natural talent for finding creative \nsolutions to problems. They are also adaptable and can easily \nthink on their feet in challenging situations.').
personality_type(dark, 'assets/images/xpm/typings/dark.xpm', 'Dark-type Pokémon embody traits such as intelligence, cunning, and loyalty, \nwhich are often valued in human interactions. People with these \ntraits tend to be highly intelligent and analytical, able to \nread and understand motivations and emotions of those around them. They are also \nloyal to their close friends and family, but can be \nperceived as mysterious or unpredictable to others.').
personality_type(dragon, 'assets/images/xpm/typings/dragon.xpm', 'Dragon-type Pokémon embody traits such as strength, resilience, and ambition, \nwhich are often admired in human leaders. People with these \ntraits tend to be ambitious, driven, and focused, always pushing \nthemselves to achieve their goals. They are also passionate about \ntheir work and tend to inspire those around them with \ntheir charisma and leadership.').
personality_type(electric, 'assets/images/xpm/typings/electric.xpm', 'Electric-type Pokémon embody traits such as energy, curiosity, and innovation, \nwhich are often valued in human creativity and ingenuity. People \nwith these traits tend to be curious and playful, with \na natural talent for innovation and problem-solving. They are also \nhighly energetic and driven, always seeking out new challenges and \nadventures.').
personality_type(fairy, 'assets/images/xpm/typings/fairy.xpm', 'Fairy-type Pokémon embody traits such as empathy, compassion, and creativity, \nwhich are often valued in human artists and caregivers. People \nwith these traits tend to be highly empathetic and compassionate, \nwith a natural talent for helping others. They are also \nhighly creative and imaginative, often drawn to the beauty and \naesthetics of the world around them.').
personality_type(fighting, 'assets/images/xpm/typings/fighting.xpm', 'Fighting-type Pokémon embody traits such as discipline, focus, and determination, \nwhich are often valued in human athletes and high-achievers. People \nwith these traits tend to be highly disciplined and focused, \nwith a strong sense of purpose and direction. They are \nalso highly motivated and driven, always striving to improve themselves \nand their skills.').
personality_type(fire, 'assets/images/xpm/typings/fire.xpm', 'Fire is a type of element that is often associated \nwith passion, energy, and intensity. In humans, a fiery personality \nmay manifest as being bold, confident, and assertive, with a \nstrong sense of purpose and a desire to achieve their \ngoals. Similarly, Fire-type Pokémon like Charmander and Arcanine are known \nfor their fiery personalities and fierce fighting abilities. However, just like \nin humans, a fiery personality can also be proneto impulsivity, \nimpatience, and a quick temper. It is important for both \nFire-type Pokémon and humans with a fiery personality to learn to \nmanage their emotions and channel their energy in productive ways, rather \nthan letting it lead to conflict or burnout.').
personality_type(flying, 'assets/images/xpm/typings/flying.xpm', 'Flying-type Pokémon embody traits such as freedom, independence, and confidence, \nwhich are often valued in human adventurers and risk-takers. People \nwith these traits tend to be highly independent and self-sufficient, \nwith a natural talent for exploration and adventure. They are \nalso highly confident and assertive, with a strong sense of \nself and a desire to soar to new heights.').
personality_type(ghost, 'assets/images/xpm/typings/ghost.xpm', 'Ghost-type Pokémon embody traits such as mystery, introspection, and sensitivity, \nwhich are often valued in human artists and introspective individuals. \nPeople with these traits tend to be highly sensitive and \nintrospective, with a natural talent for exploring the mysteries of \nthe world around them. They are also highly imaginative and \ncreative, drawn to the beauty and complexity of the world \naround them.').
personality_type(grass, 'assets/images/xpm/typings/grass.xpm', 'Grass is a type of element that is often associated \nwith growth and vitality. In humans, a growth-oriented personality may \nmanifest as being curious, open-minded, and willing to learn and \nexplore new things. Similarly, Grass-type Pokémon like Treecko and Snivy \nare known for their agility and versatility, able to traverse \nthe treetops with ease and launch powerful Grass-type moves like \nBullet Seed and Leaf Blade. However, just like in humans, \na growth-oriented personality can also be prone to being too \nrestless and constantly seeking novelty. It is important for both \nGrass-type Pokémon and humans to find a balance between exploring \nnew things and being grounded in the present moment.').
personality_type(ground, 'assets/images/xpm/typings/ground.xpm', 'Ground-type Pokémon embody traits such as stability, practicality, and patience, \nwhich are often valued in human professionals and leaders. People \nwith these traits tend to be highly practical and goal-oriented, \nwith a natural talent for finding stability and balance in \ntheir lives. They are also highly patient and resilient, able \nto weather the storms of life and emerge stronger on \nthe other side.').
personality_type(ice, 'assets/images/xpm/typings/ice.xpm', 'Ice-type Pokémon embody traits such as purity, clarity, and intuition, \nwhich are often valued in human healers and intuitives. People \nwith these traits tend to be highly intuitive and empathetic, \nwith a natural talent for healing and helping others. They \nare also highly focused and disciplined, able to channel their \nenergy and intention toward their goals with clarity and purity.').
personality_type(normal, 'assets/images/xpm/typings/normal.xpm', 'Normal-type Pokémon embody traits such as adaptability, balance, and versatility, \nwhich are often valued in human professionals and problem-solvers. People \nwith these traits tend to be highly adaptable and versatile, \nable to handle a variety of tasks and challenges with \nease. They are also highly balanced and pragmatic, able to \nfind the middle ground between different perspectives and opinions.').
personality_type(poison, 'assets/images/xpm/typings/poison.xpm', 'Poison-type Pokémon embody traits such as cunning, strategy, and perseverance, \nwhich are often valued in human strategists and planners. People \nwith these traits tend to be highly strategic and analytical, \nable to anticipate and plan for potential obstacles and challenges. \nThey are also highly persevering and resilient, able to overcome \nsetbacks and obstacles with determination and focus.').
personality_type(psychic, 'assets/images/xpm/typings/psychic.xpm', 'Psychic-type Pokémon embody traits such as intuition, insight, and sensitivity, \nwhich are often valued in human healers and intuitives. People \nwith these traits tend to be highly empathetic and intuitive, \nable to sense and understand the emotions and motivations of \nothers. They are also highly insightful and introspective, with a \nnatural talent for exploring the mysteries of the mind and \nspirit.').
personality_type(rock, 'assets/images/xpm/typings/rock.xpm', 'Rock-type Pokémon embody traits such as strength, endurance, and resilience, \nwhich are often valued in human athletes and adventurers. People \nwith these traits tend to be highly resilient and enduring, \nable to handle the challenges and obstacles of life with \nstrength and determination. They are also highly focused and disciplined, \nable to channel their energy and intention toward their goals \nwith focus and determination.').
personality_type(steel, 'assets/images/xpm/typings/steel.xpm', 'Steel-type Pokémon embody traits such as strength, resilience, and determination, \nwhich are often valued in human professionals and leaders. People \nwith these traits tend to be highly disciplined and focused, \nwith a natural talent for finding stability and balance in \ntheir lives. They are also highly resilient and enduring, able \nto weather the storms of life and emerge stronger on \nthe other side.').
personality_type(water, 'assets/images/xpm/typings/water.xpm', 'Water is a type of element that is often associated \nwith calmness and adaptability. In humans, a calm and adaptable \npersonality may manifest as being patient, flexible, and able to \ncope with changes and challenges. Similarly, Water-type Pokémon like Mudkip \nand Lapras are known for their tenacity and adaptability, able \nto thrive in a variety of environments and learn moves \nlike Surf and Hydro Pump to help them in battle. \nHowever, just like in humans, a calm personality can also \nbe prone to being too passive and indecisive. It is \nimportant for both Water-type Pokémon and humans to learn to \nassert themselves when necessary and not let their calm nature \nlead to inaction.').

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
    send(QuestionDialog, gap, size(0, 20)), % sets gap size between elements
    send(QuestionDialog, append, label('Answer the following questions:')),
    question_label_1(Label1), % use separate variables for question labels
    question_label_2(Label2),
    question_label_3(Label3),
    send(QuestionDialog, append, new(Question1, text_item(Label1))),
    send(QuestionDialog, append, new(Question2, text_item(Label2))),
    send(QuestionDialog, append, new(Question3, text_item(Label3))),
    send(QuestionDialog, append, button('Get Results',
        message(@prolog,
            get_personality_match,
            Question1?selection,
            Question2?selection,
            Question3?selection))), % extract user's input and pass as arguments into `get_personality_match/3` predicate
    send(QuestionDialog, default_button, 'Get Results').

% display questions dialog onto the window
display_questions(Window, Header, QuestionDialog) :-
    send(Window, display, QuestionDialog),
    send(QuestionDialog, below, Header),
    send(QuestionDialog, center_x, Window?center_x),
    send(QuestionDialog, open_centered).

/*
 * matches a typing based on the user inputs
 * note: this gets called each time the `Get Results` button is pressed (submits)
 */
get_personality_match(Q1, Q2, Q3) :-
    new(ResponseDialog, dialog('Your match!')),
    send(ResponseDialog, gap, size(0, 20)),
    /*
     * here is the logic to determine a user's personality type
     * TODO: update logic with other queries based on input?
     */
    (
        (Q1 = 'honest', Q2 = 'loyalty', Q3 = 'wilderness hike') ->
            (writeln('Fire type matched.'), display_personality_type(ResponseDialog, fire, Q1, Q2, Q3));
        (Q1 = 'creative', Q2 = 'flexibility', Q3 = 'read a book') ->
            (writeln('Water type matched.'), display_personality_type(ResponseDialog, water, Q1, Q2, Q3));
        (Q1 = 'organized', Q2 = 'efficiency', Q3 = 'wilderness hike') ->
            (writeln('Grass type matched.'), display_personality_type(ResponseDialog, grass, Q1, Q2, Q3));
        % TODO: add more conditions here for other types
        
        % default response if input combos do not match any condition
        (
            writeln('No condition matched.'),
            send(ResponseDialog, label('Oops!')), % change dialog title
            send(ResponseDialog, append, new(NoMatch, text('Cannot match a typing based on your inputs. Try again.'))),
            send(NoMatch, font, font(helvetica, bold, 20))
        )
    ),
    send(ResponseDialog, open_centered).

% display the personality type image and explanation for the given type
display_personality_type(ResponseDialog, Type, Q1, Q2, Q3) :-
    personality_type(Type, ImagePath, Explanation),
    new(Image, bitmap(ImagePath)),
    send(ResponseDialog, append, Image),
    send(Image, y, 50),
    send(Image, x, 100),
    send(ResponseDialog, append, new(ExplanationLabel, text(Explanation))),
    send(ExplanationLabel, x, 0),
    
    % line separator
    send(ResponseDialog, append, new(Line1, line(0, 0, 800, 0))),
    send(Line1, y, 200),
    send(Line1, x, 50),
    
    % display the user's input
    send(ResponseDialog, append, new(Q1Label, text('Answer to Question 1: '))),
    send(ResponseDialog, append, new(Q1Response, text(Q1))),
    send(ResponseDialog, append, new(Q2Label, text('Answer to Question 2: '))),
    send(ResponseDialog, append, new(Q2Response, text(Q2))),
    send(ResponseDialog, append, new(Q3Label, text('Answer to Question 3: '))),
    send(ResponseDialog, append, new(Q3Response, text(Q3))),
    send(Q1Label, right, Q1Response),
    send(Q2Label, right, Q2Response),
    send(Q3Label, right, Q3Response),

    % line separator
    send(ResponseDialog, append, new(Line2, line(0, 0, 800, 0))),
    send(Line2, y, 200),
    send(Line2, x, 50),
    
    send(ResponseDialog, append, button('OK', message(ResponseDialog, destroy))),
    send(ResponseDialog, default_button, 'OK').
