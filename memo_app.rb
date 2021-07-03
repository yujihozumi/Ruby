require "csv"

  puts "1(新規でメモを作成)" "2(既存のメモを編集する)"

  memo_type = gets.to_i

  if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.chomp
    CSV.open("#{file_name}.csv",'w') do |memo|
  
    puts "メモしたい内容を書き込んでください"
    puts "完了したら Ctrl + D をおしてください"
    memo_message = gets.chomp
    memo << [memo_message]
  end
  
  elsif memo_type == 2
    puts "編集したいファイルを入力してください"
    file_name = gets.chomp
    CSV.open("#{file_name}.csv", "a") do |memo|
    puts "編集内容を入力してください"
    puts "完了したら Ctrl + D をおしてください"
    memo_message = gets.chomp
    memo << [memo_message]
  end
end
