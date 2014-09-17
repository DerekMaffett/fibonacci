# Approach

I first implemented a class method to give a number of the Fibonacci sequence.
After that, I decided it made sense to make the class instantiable with a given
length, and extracted the sequence generation logic into a separate class
function. I added a convenience :to_a method and allowed flexible inputs by
using :to_i. Everything was first backed by a test.
