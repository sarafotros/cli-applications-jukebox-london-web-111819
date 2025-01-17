require "pry"
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
   puts "I accept the following commands:"
   puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end
 
def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index +1}. #{song}"
 end
end

def play(songs)
 puts "Please enter a song name or number:"
 user_response = gets.stip  
  if songs.include?(user_response)  
    puts "Playing #{user_response}"
  elsif 0 < user_response < songs.length+1
    puts "Playing #{song[user_response + 1]}"
  else
    puts "Invalid input, please try again"
end

def exit_jukebox()
    puts "Goodbye"
  end
  
  def prompt()
    puts "Please enter a command:"
    gets.chomp()
  end
#binding.pry