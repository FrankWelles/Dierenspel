def dierenspel
  dieren = ["aap", "hond", "kat", "konijn", "rat", "nijlpaard", "cavia", "muis", "hamster", "paard", "ezel", "buffel", "hert", "varken", "schaap", "eekhoorn", "zebra", "stekelvarken", "kangoeroe", "zwijn", "jak", "maki", "chimpansee", "bever", "luiaard", "wolf", "vos", "wasbeer", "hyena", "puma", "tijger", "panter", "leeuw", "olifant", "das", "neushoorn", "kameel", "giraffe", "bok", "pelikaan", "ijsbeer", "otter", "panda", "koala", "das", "eland", "ooievaar", "flamingo", "eend", "valk", "kalkoen", "uil", "duif", "vogel", "schildpad", "slang", "krokodil", "kikker", "vis", "haai", "schorpioen", "pinguin", "leguaan", "mus", "egel"]
 
  gebruikt = []
  score = 0
 
  puts 'Kies een dier om te oefenen'
  begin_dier = gets.chomp.downcase
  laatste_dier = begin_dier
 
  while score < 1
    puts ' '
    puts 'kies een dier met de laatste letter van het vorige dier'
    dier = gets.chomp.downcase
 
    laatste_letter = laatste_dier.split("").last
 
    if dieren.include?(dier) && gebruikt.include?(dier) == false && dier.split("")[0] == laatste_letter
      puts 'Je koos voor ' + dier
      gebruikt.push dier
      laatste_dier = dier
      laatste_letter = laatste_dier.split("").last
      puts ' '
      while true
        computer = dieren[rand(dieren.length)]
        if dieren.include?(computer) && gebruikt.include?(computer) == false && computer.split("")[0] == laatste_letter
          break
        end
      end
      laatste_dier = computer
      gebruikt.push computer
      puts 'Je tegenstander koos voor ' + computer
    else (dier.split("")[0] == laatste_letter) == false
        score += 1
        puts 'KLABATSS je hebt verloren!!'
        puts ' '
      end
  end
end
 
    dierenspel
 
    puts 'Wil je opnieuw spelen? type ja als je opnieuw wil spelen'
        opnieuw = gets.chomp.downcase
            if opnieuw == 'ja'
        dierenspel
    end