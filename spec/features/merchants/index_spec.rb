require "rails_helper"

RSpec.describe "Merchants" do
  # As a visitor,
  # When I visit '/merchants'
  # I should see a list of merchants by name
  # and when I click the merchant's name
  # I should be on page '/merchants/:id'
  # And I should see a list of items that merchant sells.

  it "should see a list of merchants by name as links" do
    visit "/merchants"

    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Klein, Rempel and Jones")
    expect(page).to have_link("Willms and Sons")
  end

  it "When I click the merchants name I should be on page '/merchants/:id' and I should see a list of items that merchant sells" do
    visit "/merchants"

    click_link("Schroeder-Jerde")

    expect(current_path).to eq("/merchants/1")

    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Expedita Aliquam")
    expect(page).to have_content("Item Provident At")
    expect(page).to have_content("Item Expedita Fuga")
  end
end