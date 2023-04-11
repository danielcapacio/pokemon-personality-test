# Pokémon Personality Test
CPSC 312 Project 2: Logic Programming

### To Run:
In root directory, run `swipl` then
```
[main, gui, text].
```
followed by
```
run.
```

### What is the problem?
The [Big Five](https://en.wikipedia.org/wiki/Big_Five_personality_traits), also known as the Five Factor Model, is a widely accepted theory of personality that describes five core dimensions: **openness**, **conscientiousness**, **extraversion**, **agreeableness**, and **neuroticism**.

[Pokémon](https://en.wikipedia.org/wiki/Pok%C3%A9mon) come in many different shapes and sizes, each with its own unique abilities and characteristics. They can be classified into different types such as Fire, Water, Electric, Grass, and many others, which reflect their elemental affinities and determine their strengths and weaknesses in battles.

Our application combines these two popular concepts by essentially matching a user’s personality measures to one of 18 pure Pokémon typings, along with a specific Pokémon of that matched type.

This would be accomplished by:
1. Prompting users to answer personality questions
2. Matching a single, pure-type Pokémon based on user’s answered questions
3. Providing user with a description of their matched Pokémon and personality type

### What is the "something extra"?
Our application incorporates [XPCE](https://www.swi-prolog.org/packages/xpce/), a **SWI-Prolog native GUI library**, that was used as the entirety of our frontend. This library provides simple to use features such as sliders, images, text fields, and dialog boxes; very similar to [Java Swing components](https://en.wikipedia.org/wiki/Swing_(Java)).

In addition, the main reasons we opted for a GUI was to:
- make our user experience more **intuitive** and **streamlined** (allowing users to freely play and change their inputs)
- establish clear, **visual representations** of each Pokémon

We also incorporated the Big Five Personality theory into our project. It was a challenge to convert relatively abstract ideas of personality into numbers that we can calculate to deduce useful information. While it does have arbitrary components, we carefully followed the definition of each core dimension and matched it to a Pokémon largely based on **type**, **appearance**, and **description**.

### What did we learn from doing this?
Prolog was a good choice for our project because we could easily form connections between facts (for example, `values_type` is a connection between the type and the personality values). This made it easy to query types based on the personality values, and then to use the type to find the corresponding description. This use of the connections would be difficult to replicate concisely in other languages, and Prolog also allows us to name the connections itself, which increases the clarity.

While Prolog is very useful to solve certain applications through logic, it is an older generation of language with less online resources compared to more modern languages such as Python or Javascript. This proved to be a challenge to debug when the official [user manual](http://eu.swi-prolog.org/download/xpce/doc/userguide/userguide.pdf) for our GUI library, XPCE, was last updated in 2002. Similar to Haskell, being forced to use recursion to iterate through an array was also a downside since our team members were mostly used to imperative programming languages.

Lastly, one of the main challenges we faced when implementing our frontend was that XPCE is not as responsive compared to other frontend approaches like web applications. For example, we had to find workarounds for proper text-wrapping, resizing, and formatting images and dialog boxes which would have been solved easier through more responsive, dynamic frameworks such as [React](https://react.dev/).

### External Resource Links
- [XPCE](https://www.swi-prolog.org/packages/xpce/): official documentation for library we used on the frontend
- [XPCE/Prolog User Manual](http://eu.swi-prolog.org/download/xpce/doc/userguide/userguide.pdf): user guide for XPCE
- [Bulbapedia](https://bulbapedia.bulbagarden.net/): for Pokémon images
- [Convertio](https://convertio.co/png-xpm/), [AnyConv](https://anyconv.com/png-to-xpm-converter/): image conversion (specifically to .xpm format)
- [Image Editor](https://the-image-editor.com/image/resize): image editing (resizing mainly)
