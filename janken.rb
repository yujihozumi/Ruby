jankens = ["グー", "チョキ", "パー"]
choices = ["上","下","左","右"]

while true do
  puts "じゃんけん"
  puts "0[グー] 1[チョキ] 2[パー] 3[戦わない]"
  
  player_hand = gets.to_i
  program_hand = 0 #あとでrand(3)に変える
  
  unless player_hand == 3
    puts "ホイ！"
    puts "---------------"
    puts "あなた：#{jankens[player_hand]}を出しました"
    puts "相手：#{jankens[program_hand]}を出しました"
    puts "---------------"
    
    while player_hand == program_hand do
      puts "あいこで"
      player_hand = gets.to_i
      program_hand = 0 #あとでrand(3)に変える
      puts "ホイ！"
      puts "---------------"
      puts "あなた：#{jankens[player_hand]}"
      puts "相手：#{jankens[program_hand]}"
      puts "---------------"
    end
  
    if (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
      player_hand_win = true
    else 
      player_hand_win =false
    end
    
    puts "あっち向いて"
    puts "0[上] 1[下] 2[左] 3[右]"
    player_choice = gets.to_i
    program_choice = 0 #あとでrand(4)に変える
    puts "ホイ！"
    puts "---------------"
    puts "あなた：#{choices[player_choice]}"
    puts "相手：#{choices[program_choice]}"
    puts "---------------"
    
    if player_hand_win && player_choice == program_choice
      puts "あなたの勝ちです"
    elsif !player_hand_win && player_choice == program_choice
      puts "相手の勝ちです"
    end
  else
    break
  end
  
end