require 'colorize'

module Adventures
  def self.intro
    unless File.file?('lib/calculator.rb')
      puts " Welcome to " + "TDD Adventures!".bold
      puts
      puts ' ---------------------------------------------------------------------'
      puts " Evil Villians, Warlords and Monsters across the land have stolen your"
      puts " code. Luckily for you the tests have been left behind. You must"
      puts " navigate your way across the land, solving the clues and recovering "
      puts " the code to complete the mission."
      puts
      puts " Good luck!"
      puts
      puts " To continue, run:"
      puts "   rspec"
      puts
    end
  end

  def self.continue
    return finished if class_exists?('NextNumber')
    return level_4 if class_exists?('Anagram')
    return level_3 if class_exists?('FizzBuzzer')
    return level_2 if class_exists?('SecretKey')
    level_1
  end

  def self.level_1
    puts
    puts " Muahahhahahah. You think you're smart?! Wait until you meet the Evil "
    puts " Warlord... Hans!"
    puts
    puts " To continue, 'git merge origin/warlord_hans'"
  end

  def self.level_2
    puts
    puts " Nooooooo! You have defeated the Evil Warlord Hans, who has now crawled"
    puts " back to his cave. I hope you're ready to challenge Dr. John Fizz-Buzz!"
    puts
    puts " To continue, 'git merge origin/dr_john_fizz_buzz'"
  end

  def self.level_3
    puts
    puts " Wow, you took your time on that one #sneer# I think your powers are"
    puts " weakening. Time to put you through your paces with the Reiss Piece"
    puts " Monster!"
    puts
    puts " To continue, 'git merge origin/reiss_piece_monster'"
  end

  def self.level_4
    puts
    puts ' ---------------------------------------------------------------------'
    puts " Not so eash, huh? Are you ready to meet the next beast? Its Hassan "
    puts " The Heinous! "
    puts
    puts " To continue, 'git merge origin/hassan_the_heinous'"
  end

  def self.finished

    puts
    puts ' Congratulations, you have defeated all the monsters. You are a true '
    puts ' TDD Adventurer!!! '
    puts
    puts ' . '
    puts ' . '
    puts ' . '
    puts
    puts '    ___________ .__                   ___________              .___'.light_blue
    puts '    \__    ___/ |  |__     ____       \_   _____/   ____     __| _/'.light_blue
    puts '      |    |    |  |  \  _/ __ \       |    __)_   /    \   / __ |'.light_blue
    puts '      |    |    |   Y  \ \  ___/       |        \ |   |  \ / /_/ |'.light_blue
    puts '      |____|    |___|  /  \___  >     /_______  / |___|  / \____ |'.light_blue
    puts '                     \/       \/              \/       \/       \/'.light_blue
    puts
    sleep 2
    puts '                                                          FOR NOW!'.red
    sleep 1.5
    puts '                                                 ha ha haaaaaaaaaa'.red
    sleep 1.5
    puts '                                               mu ha haaaa haaaaaa'.red

  end

  def self.header
    puts
    puts '    __________  ____                                                   '.light_blue
    puts '   /_  __/ __ \/ __ \    '.light_blue + '           /                     '.yellow
    puts '    / / / / / / / / /    '.light_blue + '   *//////{<>==================- '.yellow
    puts '   / / / /_/ / /_/ /     '.light_blue + '           \                     '.yellow
    puts '  /_/ /_____/_____/                                                    '.light_blue
    puts '              ___       __                 __                          '.light_blue
    puts '             /   | ____/ /   _____  ____  / /___  __________  _____    '.light_blue
    puts '            / /| |/ __  / | / / _ \/ __ \/ __/ / / / ___/ _ \/ ___/    '.light_blue
    puts '           / ___ / /_/ /| |/ /  __/ / / / /_/ /_/ / /  /  __(__  )     '.light_blue
    puts '          /_/  |_\__,_/ |___/\___/_/ /_/\__/\__,_/_/   \___/____/      '.light_blue
    puts '                                                                       '.light_blue
    puts ' --------------------------------------------------------------------- '.light_blue.bold
  end

  def self.class_exists?(class_name)
    klass = Module.const_get(class_name)
    return klass.is_a?(Class)
  rescue NameError
    return false
  end
end




