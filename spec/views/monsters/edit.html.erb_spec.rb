require 'rails_helper'

RSpec.describe "monsters/edit", type: :view do
  before(:each) do
    @monster = assign(:monster, Monster.create!(
      :name => "MyString",
      :cr => "MyString",
      :xp => 1,
      :ac => 1,
      :hp => 1,
      :str => 1,
      :dex => 1,
      :con => 1,
      :wis => 1,
      :cha => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit monster form" do
    render

    assert_select "form[action=?][method=?]", monster_path(@monster), "post" do

      assert_select "input#monster_name[name=?]", "monster[name]"

      assert_select "input#monster_cr[name=?]", "monster[cr]"

      assert_select "input#monster_xp[name=?]", "monster[xp]"

      assert_select "input#monster_ac[name=?]", "monster[ac]"

      assert_select "input#monster_hp[name=?]", "monster[hp]"

      assert_select "input#monster_str[name=?]", "monster[str]"

      assert_select "input#monster_dex[name=?]", "monster[dex]"

      assert_select "input#monster_con[name=?]", "monster[con]"

      assert_select "input#monster_wis[name=?]", "monster[wis]"

      assert_select "input#monster_cha[name=?]", "monster[cha]"

      assert_select "textarea#monster_description[name=?]", "monster[description]"
    end
  end
end
