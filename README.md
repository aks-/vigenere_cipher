##Vigenere Cipher

A ruby module, that can be used to encode plaintext to vigenere ciphertext, or the other way around(i.e. decoding).
By default it works only on common ascii alphabets, i.e.`abcdefghijklmnopqrstuvwxyz`.
You can change it's behaviour by changing the `regex` in `filter` method and change the `SIZE`'s value

##Usage

*You can embed this module in a class. To embed a module in a class, you use the include statement in the class and make sure the file is in your path:

`include Vigenere`

##API

###`vigenere_encrypt(key, text)`

This method takes a short key and text as input and encrypts text using vigenere cipher.

```
vigenere_encrypt('LEMON', 'ATTACK AT DAWN')
// --> 'LXFOPVEFRNHR'
```

###`vigenere_decrypt(key, text)`

This method takes a short key and text as input and decrypts text using vigenere cipher.

```
vigenere_decrypt('LEMON', 'LXFOPVEFRNHR')
//--> 'ATTACKATDAWN'
```












