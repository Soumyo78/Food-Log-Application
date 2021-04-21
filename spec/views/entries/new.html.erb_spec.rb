require "rails_helper"

RSpec.describe "entries/new", type: :view do
  before(:each) do
    assign(:entry, Entry.new(
                     meal_type: "MyString",
                     calories: 1,
                     proteins: 1,
                     carbohydrates: 1,
                     fats: 1
    ))
  end

  it "renders new entry form" do
    render

    assert_select "form[action=?][method=?]", entries_path, "post" do

      assert_select "input[name=?]", "entry[meal_type]"

      assert_select "input[name=?]", "entry[calories]"

      assert_select "input[name=?]", "entry[proteins]"

      assert_select "input[name=?]", "entry[carbohydrates]"

      assert_select "input[name=?]", "entry[fats]"
    end
  end
end
