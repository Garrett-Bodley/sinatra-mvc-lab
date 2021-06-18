class PigLatinizer


  def piglatinize(text)
    latinized = []
    words = text.split(" ")
    words.each do |word| 
      if word[0].match(/[aeiouyAEIOUY]/) 
        latinized << "#{word + "way"}"
      else
        index = word =~ (/[aeiouyAEIOUY]/)
        latinized << "#{word[index..-1] + word[0..index-1] + "ay"}"
      end
    end
    latinized.join(" ")
  end

end