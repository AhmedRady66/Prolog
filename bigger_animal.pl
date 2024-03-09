/**
 * Find The Bigger animal between the provided animals.
 */

bigger(elephant, horse).
bigger(horse, donkey).
bigger(horse, dog).
bigger(dog, cat).

biggest(X,Y):- bigger(X, Y).
biggest(X,Y):- bigger(X, Z), biggest(Z, Y).
