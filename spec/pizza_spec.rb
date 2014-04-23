require './pizza'

describe Pizza do
  it "exists" do
    expect(Pizza).to be_a(Class)
  end
end

describe Topping do
  it "exists" do
    expect(Topping).to be_a(Class)
  end
  describe '.initialize' do
    it "sets the name of the topping" do
      topping = Topping.new('olives')

      expect(topping.name).to eq('olives')
    end

    it "sets whether or not the topping is vegetarian" do
      topping = Topping.new 'bell peppers', vegetarian: true
      topping2 = Topping.new 'pepperoni'

      expect(topping.vegetarian).to eq(true)
      expect(topping2.vegetarian).to eq(false)
    end
  end
end
