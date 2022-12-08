class Team

 # オブジェクトの変数
 attr_accessor(:name, :win, :lose, :draw)
 
 def initialize(win, lose, draw)
  name = name
  self.win = win
  self.lose = lose
  self.draw = draw
 end

# インスタンスが持つメソッド（勝率）
 def calc_win_rate(name)
  win.to_f/(win + lose)  
 end
 
# インスタンスが持つメソッド（チームの成績をターミナルに表示する）
# ○○ の2020年の成績は △△勝 □□敗 ☆☆分、勝率は 0.▽▽▽▽▽▽です。
 def show_team_result(name)
    puts "#{name} の2020年の成績は #{self.win} 勝 #{self.lose}敗 #{self.draw}分、勝率は #{win.to_f/(win + lose) } です。"
 end
 
end


# インスタンスの生成と、変数への代入
team_A = Team.new(67, 45, 8)
team_B = Team.new(60, 53, 7)
team_C = Team.new(60, 55, 5)
team_D = Team.new(56, 58, 6)
team_E = Team.new(52, 56, 12)
team_F = Team.new(41, 69, 10)

# インスタンスの使用
team_A.show_team_result('Giants')
team_B.show_team_result('Tigers')
team_C.show_team_result('Dragons')
team_D.show_team_result('BayStars')
team_E.show_team_result('Carp')
team_F.show_team_result('Swallows')

p team_A
p team_B
p team_C
p team_D
p team_E
p team_F