# ticket_price
Du har blivit inhyrd för att skriva den del av mjukvaran i en biljettautomat som räknar ut vad biljetten kostar.

Priserna ser ut som följer

* Från och med 0 till och med 17 år: 10 kr
* Från och med 18 till och med 64 år: 20 kr
* Från och med 65 år: 15kr.

Du skall skriva två funktioner: `ask_age` och `ticket_price`

`ask_age` skriver ut "`Please enter your age:`", låter användaren *mata in* sin ålder, och **returnerar** åldern *som en integer*.

`ticket_price` tar en ålder (`age:`) **som argument**, och **returnerar** biljettens pris *som en integer*.

### Flödesschema ###

Skapa ett flödesschema för varje funktion.

Testa flödesschemat med penna och papper.

### Exempel ###

```ruby
  < ask_age
  > "Please enter your age:"
  < 16
  #=> 16
  
  < ticket_price(age: 16)
  #=> 10


  #Båda funktionerna tillsammans:
  customer_age = ask_age
  puts ticket_price(age: customer_age)
  
  #Nästning
  puts ticket_price(age: ask_age)
```

Testning

Kör `bundle install` i projektets rotmapp för att installera alla bibliotek.

Kör `ruby test/test_funktionens_namn.rb`

Eller `rake test` för att köra alla testerna

### Bonusbana ###

Vad händer om användaren skriver in "grillkorv" som ålder? 

Uppdatera programmet så det hanterar felaktig input

### Länkar ###

Läs mer om villkor och if-satser i övning 27-30 i [*Learn Ruby the Hard Way*](http://ruby.learncodethehardway.org/book)

* [Learn Ruby the Hard Way - Exercise 27: Memorizing Logic](http://ruby.learncodethehardway.org/book/ex27.html)
* [Learn Ruby the Hard Way - Exercise 28: Boolean Practice](http://ruby.learncodethehardway.org/book/ex28.html)
* [Learn Ruby the Hard Way - Exercise 29: What If](http://ruby.learncodethehardway.org/book/ex29.html)
* [Learn Ruby the Hard Way - Exercise 30: Else and If](http://ruby.learncodethehardway.org/book/ex30.html)
