require "rails_helper"

RSpec.describe "editing product" do
  it "should display the form with all the populated value" do
    product = Product.create(name: "Product 1", description: "Product1 description", pricing: 100)
    visit "/products"
    click_link "Edit"
    expect(current_path).to eq("/products/#{product.id}/edit")
    expect(find_field("Name").value).to eq(product.name)
    expect(find_field("Description").value).to eq(product.description)
    expect(find_field("Pricing").value).to eq("#{product.pricing}")
  end
end
