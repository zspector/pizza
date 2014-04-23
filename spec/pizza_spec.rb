require './pizza'
#require 'pry-debugger'

describe Pizza do
  it "exists" do
    expect(Pizza).to be_a(Class)
  end

  describe '.initialize' do
    let(:toppings) {[
        Topping.new('mushrooms', vegetarian: true),
        Topping.new('pepperoni')
      ]}
    let(:pizza1) { Pizza.new(toppings) }

    let(:pizza2) { Pizza.new }

    it 'records all of the toppings' do

      expect(pizza1.toppings).to eq(toppings)
    end
    it 'defaults the toppings to cheese only, if the pizza has no toppings' do

      expect(pizza2.toppings.size).to eq(1)
      expect(pizza2.toppings.first.name).to eq('cheese')
    end
  end

  describe '.vegetarian?' do
    let(:toppings) {[
        Topping.new('bell peppers', vegetarian: true),
        Topping.new('pepperoni')
      ]}
    let(:pizza1) { Pizza.new(toppings) }
    let(:pizza2) { Pizza.new }

    it 'checks if a pizza is vegetarian' do

      expect(pizza1.vegetarian?).to eq(false)
      expect(pizza2.vegetarian?).to eq(true)
    end
  end

  describe '.add_topping' do
    let(:topping) {[
        Topping.new('bell peppers', vegetarian: true),
        Topping.new('pepperoni')
      ]}

    let(:pizza) {Pizza.new(topping)}

    it 'adds topping to existing pizza' do

      #Adds another pizza topping
      pizza.add_topping(Topping.new('mushrooms', vegetarian: true))

      expect(pizza.toppings.size).to eq(3)
      expect(pizza.toppings.last.name).to eq('mushrooms')
    end
  end
end

describe Topping do
  it "exists" do
    expect(Topping).to be_a(Class)
  end
  describe '.initialize' do
    let(:topping) { Topping.new('olives') }
    it "sets the name of the topping" do

      expect(topping.name).to eq('olives')
    end

    let(:topping1) { Topping.new('bell peppers', vegetarian: true) }
    let(:topping2)  { Topping.new('pepperoni') }

    it "sets whether or not the topping is vegetarian" do

      expect(topping1.vegetarian).to eq(true)
      expect(topping2.vegetarian).to eq(false)
    end
  end
end
