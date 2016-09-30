require 'rails_helper'

RSpec.describe "walls/new", type: :view do
  before(:each) do
    assign(:wall, Wall.new())
  end

  it "renders new wall form" do
    render

    assert_select "form[action=?][method=?]", walls_path, "post" do
    end
  end
end
