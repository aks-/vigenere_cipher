require '/home/nikolaidante/Documents/vigenere_cipher/lib/vigenere_cipher.rb'

describe 'vigenere cipher' do
  it 'should work for simple strings' do
    vigenere_encrypt('LEMON', 'ATTACK AT DAWN').should == 'LXFOPVEFRNHR'
    vigenere_decrypt('LEMON', 'LXFOPVEFRNHR').should == 'ATTACKATDAWN'
  end

  it 'should be case-insensitive' do
    vigenere_encrypt('LEMON', 'ATtack aT DawN').should == 'LXFOPVEFRNHR'
    vigenere_decrypt('LEMON', 'LXFOPVEFRNHR').should == 'ATTACKATDAWN'
  end

  it 'should ignore all the puncuations and non characters' do
    vigenere_encrypt('LEMON', 'ATtack! - aT   \ Da-|wN').should == 'LXFOPVEFRNHR'
    vigenere_decrypt('LEMON', 'LXFOPVEFR--N|HR').should == 'ATTACKATDAWN'
  end
end
