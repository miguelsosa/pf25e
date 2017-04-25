require 'rails_helper'

RSpec.describe "monsters/show", type: :view do
  before(:each) do
    @monster = assign(:monster, Monster.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Cr/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/MyText/)
  end
end
