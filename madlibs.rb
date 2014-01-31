class UI

  def prompt
    puts 'Please enter a noun or noun phrase:'
    noun_input = gets.chomp
    puts 'Please enter an adjective or adjectival phrase:'
    adj_input = gets.chomp
    puts 'Please enter a verb or verb phrase:'
    verb_input = gets.chomp
    puts 'Please enter an adverb or adverbial phrase:'
    adv_input = gets.chomp
    puts 'Please enter an object:'
    obj_input = gets.chomp

    gathered_parts = { noun: noun_input, adj: adj_input, verb: verb_input,
                       adv: adv_input, obj: obj_input }
    gathered_parts
  end

end

class SentenceTemplate
  def initialize 
    @templates = ["The (adj) (noun) suddenly and (adv) had to (verb) the (obj).", "A (adj) (noun) likes (obj).", "We (verb)ed (adv) to get the (noun)."]
  end

  def insert(gathered_parts)
    @templates.each do |sentence|
      gathered_parts.each do |part, phrase|
        regex = "\(#{part.to_s}\)"
        sentence.sub!(regex, phrase)
      end
      puts sentence
    end
  end
end

ui = UI.new
gathered_parts = ui.prompt

templates = SentenceTemplate.new
templates.insert gathered_parts
