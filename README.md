# Reading Is Fundamental

## Iteration 1

Use TDD to create a `Review` class that responds to the following interaction pattern:

Reviews should have a precision to the tenth place.

```ruby
pry(main)> require './lib/review'
# => true

pry(main)> review = Review.new({name: "Aral Nuraduum", score: "4.5"})
# => #<Review:0x00007fd8273d21e0...>

pry(main)> review.reviewer_first_name
# => "Aral"

pry(main)> review.reviewer_last_name
# => "Nuraduum"

pry(main)> review.score
# => 4.5

```

## Iteration 2

Use TDD to create a `Book` class that responds to the following interaction pattern:

* `#reviews` returns an array of review objects that belong to the book.

```ruby
pry(main)> require './lib/review'
# => true


pry(main)> require './lib/book'
# => true

pry(main)> book = Book.new({title: 'Practical Object Oriented Design in Ruby', author: 'Sandi Metz'})
# => #<Book:0x00007fe0d0851138...>

pry(main)> book.title
# => 'Practical Object Oriented Design in Ruby'

pry(main)> book.author
# => 'Sandi Metz'

pry(main)> book.read?
# => false

pry(main)> book.read = true

pry(main)> book.read?
# => true

pry(main)> review_1 = Review.new({name: "Aral Nuraduum", score: "3.5"})
# => #<Review:0x00007fd8273d21e0...>

pry(main)> review_2 = Review.new({name: "Aniz Arazak", score: "5.0"})
# => #<Review:0x0012fdabcd3d21e0...>

pry(main)> book.add_review(review_1)

pry(main)> book.add_review(review_2)

pry(main)> book.reviews
# => [#<Review:0x00007fd8273d21e0...>, #<Review:0x0012fdabcd3d21e0...>]

pry(main)> book.reviews_greater_than(3)
# => [#<Review:0x00007fd8273d21e0...>, #<Review:0x0012fdabcd3d21e0...>]

pry(main)> book.reviews_greater_than(4)
# => [#<Review:0x0012fdabcd3d21e0...>]
```

## Iteration 3

Use TDD to create a `BookClub` object.

* A `BookClub` has a name.
* You can add `Book` objects to a `BookClub`
* There is a method `#read_books` on `BookClub` that will return an array of `Book` objects that have been read.
* There is a method `#unread_books` on `BookClub` that will return an array of `Book` objects that have not been read.
* There is a method `#average_reviews_per_book` on `BookClub` that will return a float to one decimal point of the number of average reviews per book.
* There is a method `#authors` on `BookClub` that returns a hash where the keys are the authors names as strings, and the values are arrays of Book Objects written by that author.

## Iteration 4

These methods all belong to `BookClub`.

* `#most_prolific_reviewer` is a method on `BookClub` that returns a hash. The key is a string with the name of the person who has written the most reviews, and the value is an array of all of their `Review` objects.
