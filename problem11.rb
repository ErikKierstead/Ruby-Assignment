class CartesianProduct

    include Enumerable

    def initialize(listA, listB)
       @listA = listA
       @listB = listB
    end

   #Theresa, Alec, and Danielle Helped Here.
   #My original version didn't use 'yield'
   #but used a nested 'each' statement instead.

   def each
      @listA.each do |listA|
          @listB.each { |listB| yield [listA, listB] }
      end
   end
end

c = CartesianProduct.new([1,2,3],["a","b","c"])
c.each { |elt| puts elt.inspect}

d = CartesianProduct.new([],[])
d.each { |elt| puts elt.inspect}
