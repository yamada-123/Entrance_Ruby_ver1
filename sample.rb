
puts "数字を入力してください"
puts "0:グー"
puts "1:チョキ"
puts "2:パー"

class Player
  def hand
    input_hand = gets.chomp
  # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
  end
end


class Enemy
  def hand
    enemy_hand = rand(3)
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
  end
end
    
    
class Janken
        
  def pon(player_hand, enemy_hand)
        
    hands=["グー", "チョキ","パー"]
    
     if (player_hand != "0" && player_hand != "1" && player_hand !="2")
     puts "もう一度入力してください。"
     player = Player.new
     enemy = Enemy.new
     janken = Janken.new
      janken.pon(player.hand, enemy.hand)
     

     

     elsif (player_hand.to_i - enemy_hand+3) % 3 == 2 
      puts "あなたは#{hands[player_hand.to_i]}、相手は#{hands[enemy_hand.to_i]}です。勝ち"

    elsif (player_hand.to_i - enemy_hand+3) % 3 == 1
       puts "あなたは#{hands[player_hand.to_i]}、相手は#{hands[enemy_hand.to_i]}です。負け"
        

    elsif (player_hand.to_i - enemy_hand+3) % 3 == 0
       puts "あなたは#{hands[player_hand.to_i]}、相手は#{hands[enemy_hand.to_i]}です。引き分け"
        player = Player.new
        enemy = Enemy.new
        janken = Janken.new
       janken.pon(player.hand, enemy.hand)

    end
      
  end  
        # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
        # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをす     # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
end
    
    
    
    

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される

janken.pon(player.hand, enemy.hand)

