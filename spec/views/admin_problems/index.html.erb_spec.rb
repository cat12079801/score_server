require 'rails_helper'

RSpec.describe "admin_problems/index", type: :view do
  before(:each) do
    assign(:admin_problems, [
      AdminProblem.create!(),
      AdminProblem.create!()
    ])
  end

  it "renders a list of admin_problems" do
    render
  end
end
