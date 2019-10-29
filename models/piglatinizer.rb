class PigLatinizer

    attr_reader :text

    def piglatinize(text)
        vowels = 'aeiou'
        # split str into array of str, ex: "what is this" #=> ["what", "is", "this"]
        arr_of_str = text.split(' ')
        converted_arr_of_str = []

        # iterate through the array, ex: ["what", "is", "this"]
        arr_of_str.each do |str|

            # if the first char in str is a vowel, add "way" and shovel
            # otherwise, find position of first vowel
            # ex: "what" is index 2
            if vowels.include?(str[0].downcase)
                converted_arr_of_str << str + "way"
            else
                first_vowel_index = str.index(/[aeiou]/)
                new_str = str[first_vowel_index..-1] + str[0...first_vowel_index] + "ay"
                converted_arr_of_str << new_str
            end
        end
    
        # join array of str back into a str
        converted_str = converted_arr_of_str.join(' ')
    end

end