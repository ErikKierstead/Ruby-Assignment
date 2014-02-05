# Part1: Hello World

class HelloWorldClass
    
    #Initialization Method:
    def initialize(name)
       @name = name.capitalize
    end

    def sayHi
        puts "Hello #{@name}!"
    end

end

hello = HelloWorldClass.new("Erik Kierstead")
hello.sayHi










