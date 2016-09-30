require 'rails_helper'

RSpec.describe "walls/edit", type: :view do
  before(:each) do
    @wall = assign(:wall, Wall.create!())
  end

  it "renders the edit wall form" do
    render

    assert_select "form[action=?][method=?]", wall_path(@wall), "post" do
    end
  end
end
