# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/eventCreator'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc
julie = User.new("julies@com", 12)
luc = User.new("luc@com", 23)
claude = User.new("claude@claude.com", 75)
user_1 = User.find_by_email("claude@claude.com")

#puts "Salut, tu veux créer un événement ? Cool !"
#puts "\nCommençons. Quel est le nom de l'événement ?"
#print "> "
#title = gets.chomp
#puts "\nSuper. Quand aura-t-il lieu ? (AAAA-MM-DD hh:mm)"
#print "> "
#date = gets.chomp
#puts "\nAu top. Combien de temps va-t-il durer (en minutes) ?"
#print "> "
#time = gets.chomp
#puts "\nGénial. Qui va participer ? Balance leurs e-mails ('email' ; 'email' ; etc)"
#mails = gets.chomp.split(' ; ')
#my_event = Event.new(date, time, title, mails)
#puts my_event.to_s
event1 = Event.new("2019-11-03 08:00", 45, "Project", ["luc@com", "olg@com"])
event2 = Event.new("2019-11-10 16:10", 45, "truc", ["luc@com", "olg@com"])
event3 = Event.new("2019-11-22 22:40", 45, "oui", ["luc@com", "olg@com"])
event4 = Event.new("2019-11-16 10:00", 45, "non", ["luc@com", "olg@com"])
event5 = Event.new("2019-11-29 14:40", 45, "peutetre", ["luc@com", "olg@com"])
event6 = Event.new("2019-11-06 07:30", 45, "quepas", ["luc@com", "olg@com"])
event7 = Event.new("2019-11-06 07:30", 45, "quepas2", ["luc@com", "olg@com"])
event_array = (event1, event2, event3, event4, event5, event6, event7)

#puts my_event.to_s
