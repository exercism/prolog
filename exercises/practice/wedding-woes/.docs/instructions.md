# Instructions

Your task is to find the perfect table seating.
You'll do this by declaring _facts_ (things that are always true) and _rules_ (things that are conditionally true).

## 1. List the chatty people

Define the `chatty` fact to represent the chatty people.
The `chatty` fact takes a single argument: the chatty person's lowercase name.

```prolog
chatty(gustavo).
true.
```

## 2. List who likes whom

Define the `likes` fact to represent who likes whom.
The `likes` fact takes two arguments:

1. The lowercase name of the person liking the other person
2. The lowercase name of the person being liked

```prolog
likes(esteban, malena).
true.
```

## 3. People who like each other make a good pairing

Define the `pairing` rule to be true when the two people both like each other.
The pairing rule takes two arguments:

1. The lowercase name of the first person
2. The lowercase name of the second person

```prolog
pairing(malena, esteban).
true.
```

## 4. Chatty people pair with anyone

Define the `pairing` rule to be true when (at least) one of the two people being paired is chatty.

```prolog
pairing(valeria, jaime).
true.
```

## 5. Check seating arrangement

Define the `seating` rule to be true when all five pairs are good pairings.

The pairing rule takes fives arguments:

1. The lowercase name of the first person
2. The lowercase name of the second person
3. The lowercase name of the third person
4. The lowercase name of the fourth person
5. The lowercase name of the fifth person

Use the just defined facts and rules to check the seating arrangement.

```prolog
seating(esteban, jaime, gustavo, malena, valeria).
false.
```
