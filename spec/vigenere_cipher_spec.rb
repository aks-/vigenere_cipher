require 'vigenere_cipher'

describe Vigenere do
  class TestClass
  end

  before(:all) do
    @test = TestClass.new
    @test.extend Vigenere
  end

  describe 'vigenere cipher tests' do
    it 'should work for simple strings' do
      @test.vigenere_encrypt('LEMON', 'ATTACK AT DAWN').should == 'LXFOPVEFRNHR'
      @test.vigenere_decrypt('LEMON', 'LXFOPVEFRNHR').should == 'ATTACKATDAWN'
    end

    it 'should be case-insensitive' do
      @test.vigenere_encrypt('LEMON', 'ATtack aT DawN').should == 'LXFOPVEFRNHR'
      @test.vigenere_decrypt('LEMON', 'LXFOPVEFRNHR').should == 'ATTACKATDAWN'
    end

    it 'should ignore all the puncuations and non characters' do
      @test.vigenere_encrypt('LEMON', 'ATtack! - aT   \ Da-|wN').should == 'LXFOPVEFRNHR'
      @test.vigenere_decrypt('LEMON', 'LXFOPVEFR--N|HR').should == 'ATTACKATDAWN'
    end

    it 'should raise an error when either key or text is empty' do
      expect{ @test.vigenere_encrypt('', 'A') }.to raise_error(NameError)
      expect{ @test.vigenere_decrypt('B', '') }.to raise_error(NameError)
    end
  end
end
