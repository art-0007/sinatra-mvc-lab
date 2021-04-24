
class PigLatinizer 
#     attr_reader :text
  
#     def initialize(text)
#       @text = text.downcase
#     end

    def piglatinize(sentance)
        new_sentance = []
        sent_arr = sentance.split(" ")
        sent_arr.each do |word|
            new_word = to_pig_latin(word)
            new_sentance << new_word
        end
          new_sentance.join(' ')
    end

    def  to_pig_latin(text)
        
            vowels = ['a','e','o','u','i','A','E','O','U','I']
            arr = text.split('')
            new_world = []
        if vowels.include?(arr[0])
              return text.concat("way")
        else
            arr.each_with_index do |v,i|
                if !vowels.include?(v)
                 new_world << v
                else 
                 pig_word = arr[i..-1] + new_world
                return pig_word.join("").concat("ay")
                end 
            end
        end
    end
end


