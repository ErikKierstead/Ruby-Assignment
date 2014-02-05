class Dessert

    def initialize(name, calories)
       @name = name
       @calories = calories
    end

    def name
       @name
    end

    def calories
       @calories
    end
    
    def name=(newName)
       @name = newName
    end


    def calories=(newCalories)
       @calories = newCalories
    end

    def healthy?
       return @calories < 200
    end

    def delicious?
       return true    # Your code here
    end

end

class JellyBean < Dessert

    def initialize(name, calories, flavor)
       @name = name
       @calories = calories
       @flavor = flavor# Your code here
    end

    def flavor
       @flavor
    end

    def flavor=(newFlavor)
       @flavor = newFlavor
    end

    def delicious?
        return flavor != "black licorice"
    end

end

jellyBean = JellyBean.new("red jellybean", 5, "strawberry")
p jellyBean.flavor
p jellyBean.flavor = "black licorice"
p jellyBean.delicious?

pudding = Dessert.new("pudding", 4839278)
p pudding.name
p pudding.healthy?
p pudding.delicious?
