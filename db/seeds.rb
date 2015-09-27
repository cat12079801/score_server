Genre.create(name: '赤いの')
Genre.create(name: '青いの')
Genre.create(name: '黄色いの')
Genre.create(name: '白いの')
Genre.create(name: '黒いの')

def r
  if rand(100) > 50
    true
  else
    false
  end
end

def p
  [100, 200, 300, 400, 500].sample
end

def g
  (1..5).to_a.sample
end

Problem.create(title: 'てすと1',  question: 'てすとの問題文', flag: 'flag_1',  point: p, opened: r, genre_id: g)
Problem.create(title: 'てすと2',  question: 'てすとの問題文', flag: 'flag_2',  point: p, opened: r, genre_id: g)
Problem.create(title: 'てすと3',  question: 'てすとの問題文', flag: 'flag_3',  point: p, opened: r, genre_id: g)
Problem.create(title: 'てすと4',  question: 'てすとの問題文', flag: 'flag_4',  point: p, opened: r, genre_id: g)
Problem.create(title: 'てすと5',  question: 'てすとの問題文', flag: 'flag_5',  point: p, opened: r, genre_id: g)
Problem.create(title: 'てすと6',  question: 'てすとの問題文', flag: 'flag_6',  point: p, opened: r, genre_id: g)
Problem.create(title: 'てすと7',  question: 'てすとの問題文', flag: 'flag_7',  point: p, opened: r, genre_id: g)
Problem.create(title: 'てすと8',  question: 'てすとの問題文', flag: 'flag_8',  point: p, opened: r, genre_id: g)
Problem.create(title: 'てすと9',  question: 'てすとの問題文', flag: 'flag_9',  point: p, opened: r, genre_id: g)
Problem.create(title: 'てすと10', question: 'てすとの問題文', flag: 'flag_10', point: p, opened: r, genre_id: g)
