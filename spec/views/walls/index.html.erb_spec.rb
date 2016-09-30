require 'rails_helper'

RSpec.describe "walls/index", type: :view do
  before(:each) do
    assign(:walls, [
      Wall.create!(),
      Wall.create!()
    ])
  end

  it "renders a list of walls" do
    render
  end
end
