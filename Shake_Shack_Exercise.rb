class MilkShake
  def initialize(flavor, price)
    @flavor = flavor
    @price = price
  end
end
milkshake = MilkShake.new("Chocolate", 7)
class Ingredient
  def initialize(name, price)
    @name = name
    @price = price
  end
end