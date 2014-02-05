class Class

    def attr_accessor_with_history(attr_name)
      attr_name = attr_name.to_s           # make sure it's a string
      attr_history = attr_name+"_history"  # New History Variable

      attr_reader attr_name            # create the attribute's getter
      attr_reader attr_name+"_history" # create bar_history getter

      #The Great Theresa Becker Helped Here!
      #%Q{} is like a Double Quoted String

      self.class_eval %Q{
         def #{attr_name}=(val)
            @#{attr_history} = [nil] if @#{attr_history}.nil?
            @#{attr_history} << val
            @#{attr_name}=val
         end }

   end
end

class Foo
      attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 3
f.bar = :wowzo
f.bar = "boo!"
p f.bar
p f.bar_history
