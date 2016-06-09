require 'rubygems'
require 'rspec'

require File.join(File.dirname(__FILE__), '..', 'lib', 'ntos')

describe Fixnum do
  mapping = {
    0 => 'zero',
    1 => 'one',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    20 => 'twenty',
    21 => 'twenty one',
    30 => 'thirty',
    50 => 'fifty',
    99 => 'ninety nine',
    100 => 'one hundred',
    110 => 'one hundred ten',
    111 => 'one hundred eleven',
    120 => 'one hundred twenty',
    200 => 'two hundred',
    500 => 'five hundred',
    1_000 => 'one thousand',
    1_526 => 'one thousand five hundred twenty six',
    10_000 => 'ten thousand',
    11_000 => 'eleven thousand',
    20_000 => 'twenty thousand',
    100_000 => 'one hundred thousand',
    1_000_000 => 'one million',
    10_000_000 => 'ten million',
    11_000_000 => 'eleven million',
    100_000_000 => 'one hundred million',
    1_000_000_000 => 'one billion',
    1_000_000_000_000 => 'one trillion',
    -1_000_000_000_000 => 'minus one trillion',
    -21 => 'minus twenty one',
    -11_000_000 => 'minus eleven million'
  }

  mapping.each do |k, v|
    it "should return string '#{v}' if #to_text called for Fixnum #{k}"  do
      expect(k.to_text).to eq(v)
    end
  end
end