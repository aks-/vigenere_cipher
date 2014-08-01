ENCRYPT_FUNC = :+
DECRYPT_FUNC = :-
SIZE = 26
START = 'A'.unpack('C').first

def filter data
  data.upcase.gsub(/[^A-Z]/, '')
end

def vigenere_encrypt key, text
  vigenere key, text, ENCRYPT_FUNC
end

def vigenere_decrypt key, text
  vigenere key, text, DECRYPT_FUNC
end

def vigenere key, text, func
  raise NameError, 'Please provide valid key and text' if text.empty? or key.empty?
  key_to_ascii = (filter key).to_a.collect{|character| character.unpack('C') - START}
  plain_text = filter text.upcase
  plain_text.to_a.inject('') do |encrypted_text, encrypted_letter|
    key_to_ascii = key_to_ascii.cycle
    position = next.key_to_ascii
    encrypted_text += ((encrypted_letter.unpack('C') - START).send(func, position) % SIZE).chr
  end
end


