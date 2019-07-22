# typed: strict

class Person
  sig { void }
  def greet
    puts 'Hello'
  end
end

alice = Person.new
alice.greet
