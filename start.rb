module Start
    def start
        numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
        # KEEPS TRACK OF EACH PLAYERS LIFE
        player1_life = 3
        player2_life = 3

        while player1_life > 0 || player2_life > 0 do

            # PICK 2 NUMBERS FROM THE NUMBERS ARRAY
            random_number = numbers.sample(2)

            # SAVE EACH NUMBER IN ITS OWN VARIABLE
            firstNum = random_number[0]
            secondNum = random_number[1]

            # ANSWER WHEN firstNum AND secondNum ARE ADDED
            answer = firstNum + secondNum

            puts "#{current_player}: What does #{firstNum} plus #{secondNum} equal?"
            print "> "
            choice = $stdin.gets.chomp.to_i

            # CHECK IF INPUTED NUMBER IS THE CORRECT ANSWER
            if choice == answer
                puts "YES! Your are correct."
            else
                if current_player == player1
                    player1_life -= 1
                else
                    player2_life -= 1
                end
                puts "Seriously? No!"
            end

            # SHOWS GAME STATUS
            puts "P1: #{player1_life}/3 vs P2: #{player2_life}/3"

            # FIRST CHECKS TO SEE IF EITHER PLAYER'S LIFE IS AT 0 AND
            # IF ANY IS RETURNS A STATEMENT
            if player1_life == 0
                puts "Player 2 wins with a score of #{player2_life}/3"
                puts "----- GAME OVER -----"
                puts "Good bye!"
                return
            elsif player2_life == 0
                puts "Player 1 wins with a score of #{player1_life}/3"
                puts "----- GAME OVER -----"
                puts "Good bye!"
                return
            end

            # PRINTS AFTER A PLAYERS TURN AND THERE STILL ISN'T A WINNER
            puts "----- NEW TURN -----"
            
            # CHANGE PLAYER
            toggle_player()
        end
    end
end