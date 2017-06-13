#Michael Braun
#
# The Game of Your Life
#
def continue_story
  print "press enter to continue\n"
  gets
  print "            \r" # extra space to overwrite in case next sentence is short
end #method - click return to move continue the story

def linebreak
  puts ("\n\n")
end # method next line \n \n

def synopsis
  linebreak
  puts ("Another long day in the life. You're 15, you already dropped out of school, you're mom left when you were 9 and your dad's abusive and YOU WANT OUT.")

  continue_story

  puts ("You can either live with your friend Joey or a girl you're seeing, Amy.")

  continue_story

  #deatils about Joey
  puts ("Joey's a big shot you've known since high school, he did mention that he can use an assistant...\n")
  #
  continue_story
  #details about Martha
  linebreak
  puts ("Amy is the girl you've been seeing, though, lets not lie, you're seeing many girls. You're a playa!\n")
  puts ("\n")
end # pre decision making # pre-decision-making

def decisions
  # =>                            FIRST DECISION (Q/A)
  linebreak
  puts ("Do you decide to go live with Joey or Amy? \n")
  puts ("Options\n 1) Joey\n 2) Amy\n")
  staying_with = Integer(gets.chomp)


  # =>                             SECOND DECSION (Q/A)
  if staying_with == 1
    puts ("\nYou show up at your friend Joey's place. You and Joey are playing video
     games. And then all of a sudden, there's a loud BANG BANG BANG on the door.
     'OPEN UP, ITS THE POLICE'\n\n 'SHIT!!', Joey whispers. 'we have to leave, NOW'
     Joey starts leaving through the fire escape. So are you coming?! : Options:\n 1) Leave with Joey \n 2) Or stay and wait for police\n")
     leaving = Integer(gets.chomp)
  elsif staying_with == 2
    puts ("\nAmy lets you stay with her for the time being. But she says that if you want to stay, you gotta stop talking to the other girls you're seeing.\n\n")
    continue_story
    puts ("\nMid-conversation, your phone makes a noise. Amy asks to see your phone.\n")
    linebreak
    puts ("Do you either :\n 1) Give Amy your phone.\n 2) Deny Amy access to your phone \n 3) Try to change the subject")
    amy_option = Integer(gets.chomp)
    # unless martha_option == 1 or 2 or 3
    #   puts ("Please select either 1 2 or 3")
    #   mary_option = Integer(gets.chomp)
    # end
  elsif staying_with != (1 or 2)
    puts ("Please select either option 1 or 2")
    staying_with = Integer(gets.chomp)
  end

  # =>            Joey => options
  linebreak
  if leaving == 1
    puts ("You leave through the fire escape behind Joey. You guys run for miles and finally stop when its clear. You're mad at Joey, he then tells you that he's a drug dealer. He asks you to work for him. \nDo you either :\n 1) Say yes and start working for him\n2) Or say 'Nahhhh bish'")
    work = Integer(gets.chomp)
  elsif leaving == 2
    puts ("'Have a nice life!' Joey says as he dips. The police crash in and put you under arrest...\n")
    linebreak
    puts ("At the police station, you get one call. Who do you call? \n1)Your Uncle Fred\n2)Joey\n3)Mary")
    phone_call = Integer(gets.chomp)
  end

  # =>            Joey => Work => options
  if work == 1
    puts ("After 6 months of selling drugs on the street, the police finally catch you and throw you in jail. THE END.")
  elsif work == 2
    puts ("Good choice. Immediately after you leave you find a job at a hedge fund and make lots of money. You go on to live happily ever after, THE END.")
  end
  # =>            Joey => Stay => options
  if phone_call == 1
    puts ("You call your Uncle Fred and he bails you out of jail. He ends up letting you stay with him 'til you get back on your own two feet. You have a nice life. THE END.")
    linebreak
  elsif phone_call == 2
    puts ("You call your friend Joey. He doesn't answer the phone. You don't have any more phone calls. You spend the night in jail and upon release from jail, you become a homeless bum. THE END.")
    linebreak
  elsif phone_call == 3
    puts ("Mary comes to bail you out of jail. She's mad at you, but you patch things up and start working with her as a barista at Starbucks. THE END.")
    linebreak
  end

  if amy_option == 1
    puts ("You give Amy your phone. Amy reminds you that she is a computer hacker and tells you how much it means to her that you would trust her with your phone.\n")
    puts ("Amy then proceeds to hack into your phone. Now whatever you see, she can see.")
    linebreak
    puts ("At this point, you're in too deep. Either get out now or you're in it for the long hall.. so which is it?")
    linebreak
    puts ("Options:\n1)Run away\n2)Stay for the long hall")
    phone_hack = Integer(gets.chomp)
    linebreak
  elsif amy_option == 2
    puts ("You tell Amy that you don't feel comfortable handing over your phone.\n")
    puts ("\nShe says, 'Oh.' Amy gets upset and the following day she kicks you out of her place.")
    linebreak
    puts ("Now you must decide where to go: \nOptions:\n1)McDonalds\n2)The Liquor Store\n3)Code School")
    new_trade = Integer(gets.chomp)
    linebreak
  elsif amy_option == 3
    puts ("Smooth move big fella! She totally falls for it. 'Nice weather we've been having, aint it?' you say. Clever lad!'")
    continue_story
    puts ("Two years goes by, it's you and Amy's second anniversary. What will you get her?\n")
    puts("Options:\n1)A ring\n2)Perfume")
    gift = Integer(gets.chomp)
    linebreak
  end

  if phone_hack == 1
    puts ("You run away to Mexico and begin your new life working at a bar on the beach. You love it. THE END")
  end
  if phone_hack == 2
    puts ("You and Amy end up getting married, have 3 kids, 2 dogs and a gerbil. THE END.")
  end

  if new_trade == 1
    puts ("On your way into McDonalds, you slip and fall and break your hip. You then threaten to sue, but decide to settle for $5 million. You're alright. THE END")
  end
  if new_trade == 2
    puts ("Good call dumbass, you become a drunk homeless bum. THE END")
  end
  if new_trade == 3
    puts ("WAY TO GO! You made it Code School, nice!!! THE END")
  end


  if gift == 1
    puts ("You and Amy decide to get married, happily ever after! THE END")
  end
  if gift == 2
    puts ("Amy doesn't take the gift well... 'Do you think I smell?!'")
    linebreak
    puts ("Amy breaks up with you. THE END")
  end

end # decision making # desicion-making

synopsis

decisions

#jason was here
