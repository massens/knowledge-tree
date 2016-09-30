require 'rails_helper'

RSpec.describe "walls/show", type: :view do
  before(:each) do
    @wall = assign(:wall, Wall.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
