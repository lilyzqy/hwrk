require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:brownie) {Dessert.new("Brownie",20,chef)}
  let(:chef) { double("chef",name: "Lily") }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("Brownie")
    end
    it "sets a quantity" do
      expect(brownie.quantity).to eq("20")
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("Brownie","www",chef)}.to raise_error("quantity should be a number")
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(brownie.ingredients).to_not include("suger")
      brownie.add_ingredient("suger")
      expect(brownie.ingredients).to include("suger")
    end
  end

  describe "#mix!" do

    it "shuffles the ingredient array" do
      ingredients = ["suger","flour","egg","chocolate"]
      ingredients.each do |ingredient|
        brownie.add_ingredient(ingredient)
      end
      expect(brownie.ingredient).to eq(["suger","flour","egg","chocolate"])
      brownie.mix!
      expect(brownie.ingredient).to_not eq(["suger","flour","egg","chocolate"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      brownie.eat(5)
      expect(brownie.quantity).to eq(15)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{brownie.eat(30)}.to raise_error("no more left, not enough to eat.")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Lily the Great Baker")
      expect(brownie.serve).to eq("Chef Lily the Great Baker has made 20 brownies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(brownie)
      brownie.make_more
    end
  end
end
