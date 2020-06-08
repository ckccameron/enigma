# Enigma

### Functionality

* 3 - The Enigma class successfully runs encryption and decryption. Both
methods are also functional in the CLI.

### OOP

* 3 - None of my classes are ridiculously long, neither are any of them super
short. My classes each have access to the information they need to function,
and build in a way that helper methods make the code more efficient.

### Ruby Conventions

* 3 - My code looks clean and organized with indentations and spacing. I was
able to implement all of the useful methods provided (Array#rotate,
Date#strftime, Date::today, Enumerator#with_index) and use them in ways that
made sense to achieving a functional project. I have multiple hashes that I
used to organize and access the data.

### TDD

* 4 - I used stubs in my enigma_test file to test that the encrypt and decrypt
methods work without a date provided. The project requires that the
date used should be today's date when no date is provided. However, depending
when you run the project and the tests, the date is going to change. By using
stubs, I was able to weed out the randomness of the date changing and test that
each method still functions. I also used multiple stubs to check that the
encryption works without key and date provided. My test coverage is 100%.

### Version Control

* 4 - I have 50+ commits with 10 branches. Each branch deals with specific
chunks of functionality, and each commit within these branches is separated by
pieces of implementation. My commit messages are clear and descriptive, and my
PRs have comments and notes to document the work that I made on the branch.
