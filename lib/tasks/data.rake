namespace :data do
  desc "ダミーのユーザを作成"
  task :dummy_user => :environment do
    30.times do |i|
      User.create(screen_name: 'test_user_' + (i+1).to_s, uid: (i+1).to_s, provider: 'test')
    end
  end

  desc "ダミーの問題を作成"
  task :dummy_problem => :environment do
    g = Genre.all.pluck(:id)
    p = [100, 200, 300, 400, 500]
    30.times do |i|
      Problem.create(title: 'test_problem_' + (i+1).to_s, question: 'q', flag: 'flag_hoge', opened: true, point: p.sample, genre_id: g.sample)
    end
  end

  desc "適当に問題を解く"
  task :solve_problem => :environment do
    User.all.each do |user|
      user.problems << Problem.all.sample(10)
      user.save
      user.points = user.point
      user.save
      sleep(3)
      puts 'complete ' + user.screen_name
    end
  end
end
