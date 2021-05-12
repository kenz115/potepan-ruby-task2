def janken_result_display(my_hand, enemy_hand)
    hand_array = ["グー", "チョキ", "パー"]
    puts "------------------------"
    puts "あなた：#{hand_array[my_hand]}を出しました"
    puts "相手：#{hand_array[enemy_hand]}を出しました"
    puts "------------------------"
end

def attimuitehoi_result_display(my_direction, enemy_direction)
    direction_array = ["上", "下", "左", "右"]
    puts "------------------------"
    puts "あなた：#{direction_array[my_direction]}を出しました"
    puts "相手：#{direction_array[enemy_direction]}を向きました"
    puts "------------------------"
end

def janken

    result_array = [["あいこ", "勝ち", "負け"], ["負け", "あいこ", "勝ち"], ["勝ち", "負け", "あいこ"]]

    while true do
        puts "０（グー）１（チョキ）２（パー）"
        my_hand = gets.to_i
        enemy_hand = rand(3)
        if my_hand.between?(0, 2) === false
            puts "0~2の数字を入力してください"
            next
        else
            break
        end
    end
    puts "ポイ！"
    janken_result_display(my_hand, enemy_hand)
    janken_result = result_array[my_hand][enemy_hand]
    return [my_hand, enemy_hand, janken_result]

end

def aikodesho
    
    begin
        puts "あいこで〜"
        janken_result_array = janken
        puts "しょ！"
        janken_result_display(janken_result_array[0], janken_result_array[1])
    end while janken_result_array[2] === "あいこ"

    attimuitehoi(janken_result_array[2])

end

def attimuitehoi(janken_result)

    puts "あっち向いて〜"
    puts "０（上）１（下）２（左）３（右）"
    my_direction = gets.to_i
    enemy_direction = rand(4)
    attimuitehoi_result_display(my_direction, enemy_direction)

    if my_direction === enemy_direction
        case janken_result
        when "勝ち" then
            puts "あなたの勝ちです"
        when "負け" then
            puts "あなたの負けです"
        end
    else
        aikodesho
    end

end
