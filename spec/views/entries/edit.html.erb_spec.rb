require "rails_helper"

RSpec.describe "entries/edit", type: :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
                              meal_type: "MyString",
                              calories: 1,
                              proteins: 1,
                              carbohydrates: 1,
                              fats: 1
    ))
  end

  it "renders the edit entry form" do
    render

    assert_select "form[action=?][method=?]", entry_path(@entry), "post" do

      assert_select "input[name=?]", "entry[meal_type]"

      assert_select "input[name=?]", "entry[calories]"

      assert_select "input[name=?]", "entry[proteins]"

      assert_select "input[name=?]", "entry[carbohydrates]"

      assert_select "input[name=?]", "entry[fats]"
    end
  end
end
