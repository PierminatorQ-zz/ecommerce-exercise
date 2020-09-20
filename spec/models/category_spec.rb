require 'rails_helper'

RSpec.describe Category, type: :model do
  
  
  it "destroy children" do
    cat_parent = Category.create(name: "categoria uno")
    cat_child = Category.create(name: "categoria hijo", parent: cat_parent)
    cat_parent.destroy
    
    assert_nil Category.find_by_id(cat_child.id)
    #expect(category).to be_valid
  end


  it "is not valid without a parent" do
    category = Category.new(name:"nueva categoria", parent: nil)
    expect(category).to_not be_valid
  end


  
end
