# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Comment.destroy_all

first_post = Post.create(author: "Robert Benjamin", title: "Local Peaks", text: "A local peak is a small hill next to a hundred other small hills, next to a few medium mountains, and a bit aways from the towering Everest. It’s getting really damn good at  walking to the end of your driveway but never trying to run a mile. It’s the entire concept of steampunk. It’s obsessing over getting better and better at your job without really thinking if it’s the right job.", date: "May 1, 2015")
second_post = Post.create(author: "Benjamin Franklin", title: "On Money", text: "Money has never made man happy, nor will it, there is nothing in its nature to produce happiness. The more of it one has the more one wants.", date: "December 12, 1764")
third_post = Post.create(author: "Ernest Hemingway", title: "A Serious Writer", text: "A serious writer is not to be confounded with a solemn writer. A serious writer may be a hawk or a buzzard or even a popinjay, but a solemn writer is always a bloody owl.", date: "July 4, 1943")
fourth_post = Post.create(author: "Donna Tart", title: "A Great Sorrow", text: "A great sorrow, and one that I am only beginning to understand: we don’t get to choose our own hearts. We can’t make ourselves want what’s good for us or what’s good for other people. We don’t get to choose the people we are.", date: "September 23, 2013"

Comment.create(author: "Fred Fredkins", text: "Great post bro! I loved this one! Absolutely fantastic!", post: first_post.id)
Comment.create(author: "Bob Bobbins", text: "I have nothing to say, at all.", post: first_post.id)
Comment.create(author: "Captain Jack Sparrow", text: "Where's the rum gone?", post: second_post.id)