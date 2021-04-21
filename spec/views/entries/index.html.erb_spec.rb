require "rails_helper"

RSpec.describe "entries/index", type: :view do
  before(:each) do
    assign(:entries, [
      Entry.create!(
        meal_type: "Meal Type",
        calories: 2,
        proteins: 3,
        carbohydrates: 4,
        fats: 5
      ),
      Entry.create!(
        meal_type: "Meal Type",
        calories: 2,
        proteins: 3,
        carbohydrates: 4,
        fats: 5
      )
    ])
  end

  it "renders a list of entries" do
    render
    assert_select "tr>td", text: "Meal Type".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
  end
end
