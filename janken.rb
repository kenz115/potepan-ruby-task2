require "./functions.rb"

puts "じゃんけん・・・"
janken_result_array = janken
puts "ポイ！"

if janken_result_array[2] === "あいこ"
    aikodesho
else
    attimuitehoi(janken_result_array[2])
end
