print 'Please enter a word: '
word_input = gets.chomp
until word_input.split(' ').all? {|word| word.match?(/\A[a-zA-Z]*\z/)} do
    print 'Please enter a word (alpha only): '
    word_input = gets.chomp
end

print 'Please enter a number (1-26): '
number_input = gets.chomp
until number_input.to_i.between?(1, 26) do
    print 'Please enter a NUMBER (1-26): '
    number_input = gets.chomp
end

def cipher(word, factor)
    arr = []
    split = word.split('')
    split.each do |letter|
        letter == letter.upcase ? letter == ' ' ? arr.push(' ') :
        arr.push((letter.ord + factor > 90 ? ((letter.ord + factor) - 26).chr : letter.ord + factor).chr)
        : arr.push((letter.ord + factor > 122 ? ((letter.ord + factor) - 26).chr : letter.ord + factor).chr)
    end
    puts arr.join('')
end

cipher(word_input, number_input.to_i)
 