Basic Rails application showing issue with non reloadable classes
=================================================================

Setup the database with `rake db:reset` and then run `rails console`. Run this code inside the console and the exception will be raised:

    User.first.posts.first.comment
    reload!
    User.first.posts.first.comment
