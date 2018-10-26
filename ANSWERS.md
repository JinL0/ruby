# Q0: Why are these two errors being thrown?
ActiveRecord::PendingMigrationError
Solve method: bin/rails db:migrate RAILS_ENV=development
uninitialized constant HomeController::Pokemon


# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? 
A wild Pikachu has appeared!
A wild Squirtle has appeared!
A wild Bulbasaur has appeared!
A wild Charmander has appeared!
The 3 start pokemon plus pishen

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
Add the throw a pokeball button, pass the pokemon in to capture method. 
capture_path(pok) pass the pok in the capture, then we change the tranier id to current traner

# Question 3: What would you name your own Pokemon?
Bulbasaur

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
controller action id 
redirect to a dynmaic path with trianer's id and show this trianer

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
I put in my create function in order to check if this pokemon is vaild or not

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
