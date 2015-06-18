def dierenspel
  dieren = ["aap", "hond", "kat", "konijn", "rat", "cavia", "muis", "hamster", "paard", "ezel", "buffel", "hert", "varken", "schaap", "eekhoorn", "zebra", "stekelvarken", "kangoeroe", "zwijn", "jak", "maki", "chimpansee", "bever", "luiaard", "wolf", "vos", "wasbeer", "hyena", "puma", "tijger", "panter", "leeuw", "olifant", "das", "neushoorn", "kameel", "giraffe", "bok", "pelikaan", "ijsbeer", "otter", "panda", "koala", "das", "eland", "ooievaar", "flamingo", "eend", "valk", "kalkoen", "uil", "duif", "vogel", "schildpad", "slang", "krokodil", "kikker", "vis", "haai", "schorpioen", "pinguin", "leguaan", "mus", "egel"]
 
  used = []
  counter = 0
 
  puts 'Kies een dier om te oefenen'
  begin_dier = gets.chomp
  laatste_dier = begin_dier
 
  while counter < 1
    puts 'kies een dier met de laatste letter van het vorige dier'
    dier = gets.chomp
 
    laatste_letter = laatste_dier.split("").last
 
    if dieren.include?(dier) && used.include?(dier) == false && dier.split("")[0] == laatste_letter
      puts 'Je koos voor ' + dier
      used.push dier
      laatste_dier = dier
      laatste_letter = laatste_dier.split("").last
 
      while true
        pc = dieren[rand(dieren.length)]
        if dieren.include?(pc) && used.include?(pc) == false && pc.split("")[0] == laatste_letter
          break
        end
      end
      laatste_dier = pc
      used.push pc
      puts 'Je tegenstander koos voor ' + pc
 
 
    elsif (dier.split("")[0] == laatste_letter) == false
      counter += 1
      puts 'KLABATSS je hebt verloren!!'
    else (dier.split("")[0] == laatste_letter) == false
        counter += 1
        puts 'KLABATSS je hebt verloren!!'
      end
  end
end
 
    dierenspel
 
    puts 'Wil je opnieuw spelen? type ja als je opnieuw wil spelen'
        opnieuw = gets.chomp
            if opnieuw == 'ja'
        dierenspel
    end