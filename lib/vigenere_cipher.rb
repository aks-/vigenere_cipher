ENCRYPT_FUNC = :+
DECRYPT_FUNC = :-
SIZE = 26
START = 'A'.ord

def filter data
  data.upcase.gsub /[^A-Z]/, ''
end

def vigenere_encrypt key, text
  vigenere key, text, ENCRYPT_FUNC
end

def vigenere_decrypt key, text
  vigenere key, text, DECRYPT_FUNC
end

def iterator key
  key.chars.map {|character| character.ord - START }.cycle
end


def vigenere key, text, func
  raise NameError, 'Please provide valid key and text' if text.empty? or key.empty?
  iterator = iterator filter key
  plain_text = filter text
  plain_text.each_char.inject('') do |encrypted_text, encrypted_letter|
    position = iterator.next
    encrypted_text += ((encrypted_letter.ord - START).send(func, position) % SIZE + START).chr
  end
end

