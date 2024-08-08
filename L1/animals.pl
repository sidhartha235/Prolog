skin(dog, fur).
skin(cat, fur).
skin(duck, feathers).

sound(dog, woof).
sound(cat, meow).
sound(duck, quack).

animal(Category, Skin, Sound):- skin(Category, Skin), sound(Category, Sound).

/* ?- animal(Category, Skin, Sound). */