require "rails_helper"

RSpec.describe "entries/show", type: :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
                              meal_type: "Meal Type",
                              calories: 2,
                              proteins: 3,
                              carbohydrates: 4,
                              fats: 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Meal Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
