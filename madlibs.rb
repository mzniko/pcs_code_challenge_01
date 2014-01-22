require 'pry'

def parts
  puts "Please enter a noun or noun phrase:"
  noun_input = gets.chomp

  puts "Please enter an adjective or adjectival phrase:"
  adj_input = gets.chomp

  puts "Please enter a verb or verb phrase:"
  verb_input = gets.chomp

  puts "Please enter an adverb or adverbial phrase:"
  adv_input = gets.chomp

  puts "Please enter an object:"
  obj_input = gets.chomp

  gathered_parts = { noun: noun_input, adj: adj_input, verb: verb_input,
                     adv: adv_input, obj: obj_input }
 
  binding.pry

  gathered_parts
end

def template gathered_parts
  
  template_a = "The #{gathered_parts[:adj]} #{gathered_parts[:noun]} suddenly and #{gathered_parts[:adv]} had to #{gathered_parts[:verb]} the #{gathered_parts[:obj]}."

  template_b = "A #{gathered_parts[:adj]} #{gathered_parts[:noun]} likes #{gathered_parts[:obj]}."
  
  template_c = "We #{gathered_parts[:verb]}ed #{gathered_parts[:adv]} to get the #{gathered_parts[:noun]}."
  
  templates = [template_a, template_b, template_c]

  templates.each { |template|
    puts template
    binding.pry
  }

end

template parts