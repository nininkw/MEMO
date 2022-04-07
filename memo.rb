require "csv"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_s.chomp

if memo_type == "1"
  puts "拡張子を除いた新規ファイル名を入力してください"
  
  file_name = gets.chomp

  puts "メモしたい内容を記入してください"
  puts "完了したらしたらCtrl + Dを押します"

  CSV.open("#{file_name}.csv","w") do |csv|
    csv << [gets.chomp]
  end 
elsif memo_type == "2"
  puts "拡張子を除いた編集するファイル名を入力してください"
  
  exist_file_name = gets.chomp

  puts "メモしたい内容を記入してください"
  puts "完了したらしたらCtrl + Dを押します"

  CSV.open("#{exist_file_name}.csv","a") do |csv|
    csv << [gets.chomp]
  end
else
  puts "1(新規でメモを作成) 2(既存のメモ編集する)"
end