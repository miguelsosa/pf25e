require 'rails_helper'

RSpec.describe "monsters/index", type: :view do
  before(:each) do
    assign(:monsters, [
      Monster.create!(
        :name => "Name",
        :cr => "Cr",
        :xp => 2,
        :ac => 3,
        :hp => 4,
        :str => 5,
        :dex => 6,
        :con => 7,
        :wis => 8,
        :cha => 9,
        :description => "MyText"
      ),
      Monster.create!(
        :name => "Name",
        :cr => "Cr",
        :xp => 2,
        :ac => 3,
        :hp => 4,
        :str => 5,
        :dex => 6,
        :con => 7,
        :wis => 8,
        :cha => 9,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of monsters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cr".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
