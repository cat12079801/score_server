require 'rails_helper'

RSpec.describe "admin_problems/show", type: :view do
  before(:each) do
    @admin_problem = assign(:admin_problem, AdminProblem.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
