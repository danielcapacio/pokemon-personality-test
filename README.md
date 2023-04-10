# Pokémon Personality Test
CPSC 312 Project 2: Logic Programming

### To Run:
In root directory, run `swipl` then
```
[gui, main].
run.
```

### What is the problem?
The [Big Five](https://en.wikipedia.org/wiki/Big_Five_personality_traits), also known as the Five Factor Model, is a widely accepted theory of personality that describes five core dimensions: **openness**, **conscientiousness**, **extraversion**, **agreeableness**, and **neuroticism**.

[Pokémon](https://en.wikipedia.org/wiki/Pok%C3%A9mon) come in many different shapes and sizes, each with its own unique abilities and characteristics. They can be classified into different types such as Fire, Water, Electric, Grass, and many others, which reflect their elemental affinities and determine their strengths and weaknesses in battles.

Our application combines these two popular concepts by essentially matching a user’s personality measures to one of 16 pure Pokémon typings, along with a specific Pokémon of that matched type.

This would be accomplished by:
1. Placement of pure typings on each Big Five dimension
   - up to us to decide how each type fits – i.e. fire and electric might be more higher in extraversion
2. Prompting users to answer personality questions
3. Matching a single, pure-type Pokémon based on user’s answered questions
4. Providing user with a description of their matched Pokémon and personality type

### What is the "something extra"?
Some kind of GUI for:
- Users to input their answers to questions
- Displaying images of matched Pokémon and pure typings

### What did we learn from doing this?
(This should be written after you have done the work.)
- What is the bottom-line?
- Is logic programming suitable for (part-of) the task?
- Make sure you include the evidence for your claims.

### External Resource Links
- [XPCE](https://www.swi-prolog.org/packages/xpce/): official documentation for the SWI-Prolog native GUI library we used on frontend
- [Bulbapedia](https://bulbapedia.bulbagarden.net/): for pokemon images
- [Convertio](https://convertio.co/png-xpm/): image conversion (specifically to .xpm format)
- [IE](https://the-image-editor.com/image/resize): image editing (resizing mainly)
