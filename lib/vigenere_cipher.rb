ENCRYPT_FUNC = :+
DECRYPT_FUNC = :-
SIZE = 26
START = 'A'.unpack('C').first


def vigenere_encrypt(text, key)
  vigenere(key, text, ENCRYPT_FUNC)
end

def vigenere_decrypt(key, text)
  vigenere(key, text, DECRYPT_FUNC)
end

def vigenere(text, key, func)
  p 'to be done'
end

vigenere_encrypt('hello', 'hello')
