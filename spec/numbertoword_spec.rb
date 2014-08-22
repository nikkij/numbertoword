require 'spec_helper'

describe Numbertoword do
  before(:each) do
    @converter = Numbertoword::Convert.new
  end

  it "should take a one digit number and return a word" do
    expect(@converter.num_to_word(3)).to eq("three")
  end

  it "should take a two digit number and return words" do
    expect(@converter.num_to_word(54)).to eq("fifty four")
  end

  it "should take a three digit number and return words" do
    expect(@converter.num_to_word(123)).to eq("one hundred twenty three")
  end

  it "should take a four digit number and return words" do
    expect(@converter.num_to_word(2345)).to eq("two thousand three hundred forty five")
  end

  it "should take a five digit number and return words" do
    expect(@converter.num_to_word(45678)).to eq("forty five thousand six hundred seventy eight")
  end

  it "should take a six digit number and return words" do
    expect(@converter.num_to_word(987654)).to eq("nine hundred eighty seven thousand six hundred fifty four")
  end

  it "should take a seven digit number and return words" do
    expect(@converter.num_to_word(1234567)).to eq("one million two hundred thirty four thousand five hundred sixty seven")
  end

  it "should raise an ArgumentError when input is not numeric" do
    expect{@converter.num_to_word("403")}.to raise_error("ArgumentError")
  end

  it "should raise an ArgumentError when input is out of range" do
    expect{@converter.num_to_word(4000000000000)}.to raise_error("ArgumentError")
  end  
end