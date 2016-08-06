module Adventures
  def self.intro
    unless File.file?('lib/calculator.rb')
      puts " Welcome to TDD Adventures!"
      puts
      puts " Your mission is to recover your code using only the tests as your"
      puts " guide. Once you fix the first test you will be given further"
      puts " instructions."
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
    puts " Nooooooo! You have defeated the Evil Warlord Hans, who has now crawled "
    puts " back to his cave. I hope you're ready to challenge Dr. John Fizz-Buzz!"
    puts
    puts " To continue, 'git merge origin/dr_john_fizz_buzz'"
  end

  def self.level_3
    puts
    puts " Wow, you took your time on that one #sneer# I think your powers are "
    puts " weakening. Time to put you through your paces with the Reiss Piece "
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
    puts '    ___________ .__                   ___________              .___'
    puts '    \__    ___/ |  |__     ____       \_   _____/   ____     __| _/'
    puts '      |    |    |  |  \  _/ __ \       |    __)_   /    \   / __ |'
    puts '      |    |    |   Y  \ \  ___/       |        \ |   |  \ / /_/ |'
    puts '      |____|    |___|  /  \___  >     /_______  / |___|  / \____ |'
    puts '                     \/       \/              \/       \/       \/'

  end

  def self.header
    puts
    puts '    __________  ____ '
    puts '   /_  __/ __ \/ __ \ '
    puts '    / / / / / / / / / '
    puts '   / / / /_/ / /_/ / '
    puts '  /_/ /_____/_____/ '
    puts '              ___       __                 __ '
    puts '             /   | ____/ /   _____  ____  / /___  __________  _____ '
    puts '            / /| |/ __  / | / / _ \/ __ \/ __/ / / / ___/ _ \/ ___/ '
    puts '           / ___ / /_/ /| |/ /  __/ / / / /_/ /_/ / /  /  __(__  ) '
    puts '          /_/  |_\__,_/ |___/\___/_/ /_/\__/\__,_/_/   \___/____/ '
    puts
    puts ' ---------------------------------------------------------------------'
  end

  def self.class_exists?(class_name)
    klass = Module.const_get(class_name)
    return klass.is_a?(Class)
  rescue NameError
    return false
  end
end