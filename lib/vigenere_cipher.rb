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
  repeat_key = filter key
  plain_text = filter text.upcase

end

vigenere_encrypt 'a| ', 'b lkj ; '




