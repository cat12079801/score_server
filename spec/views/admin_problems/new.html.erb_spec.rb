require 'rails_helper'

RSpec.describe "admin_problems/new", type: :view do
  before(:each) do
    assign(:admin_problem, AdminProblem.new())
  end

  it "renders new admin_problem form" do
    render

    assert_select "form[action=?][method=?]", admin_problems_path, "post" do
    end
  end
end
