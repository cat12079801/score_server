json.array!(@admin_problems) do |admin_problem|
  json.extract! admin_problem, :id
  json.url admin_problem_url(admin_problem, format: :json)
end
