require('spec_helper')

describe(Purchase) do
  describe("#purchases") do
    it("tells what items are in a purchase") do
      test_item1 = Item.create({:name => "goldfish", :price => 5.0 })
      test_item2 = Item.create({:name => "dog", :price => 45.0 })
      test_purchase = Purchase.new()
      test_purchase.add_item(test_item1)
      test_purchase.add_item(test_item2)
      expect(test_purchase.purchases()).to(eq([test_item1, test_item2]))
    end
  end
end
