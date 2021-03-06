require 'rails_helper'

RSpec.describe "admin_problems/edit", type: :view do
  before(:each) do
    @admin_problem = assign(:admin_problem, AdminProblem.create!())
  end

  it "renders the edit admin_problem form" do
    render

    assert_select "form[action=?][method=?]", admin_problem_path(@admin_problem), "post" do
    end
  end
end
