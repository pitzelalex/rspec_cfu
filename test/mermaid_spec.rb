# mermaid_spec.rb
require 'rspec'
# write your code in a file named mermaid
require './lib/mermaid'

describe Mermaid do
  it 'is an instance of mermaid' do
  # since a mermaid object is being created from a Mermaid class, write a class named Mermaid

  # Also - since and argument is being passed to Mermaid, the initialize method needs to accept one
    mermaid = Mermaid.new('Sereia')
    expect(mermaid).to be_a Mermaid
  end

  it 'has a name' do
    mermaid = Mermaid.new('Sereia')
   # We need to call the name attribute and get back the string that was passed in
   # We also need an attr_reader so we can read the name attribute
    expect(mermaid.name).to eq 'Sereia'
  end

  it 'has an age' do
    mermaid = Mermaid.new('Sereia')
    # we need to call the age attribute and get back the integer that was passed in
    # we will again need an attr_reader so we can read the age attribute
    expect(mermaid.age).to eq 22
  end

  it 'has can get older' do
    mermaid = Mermaid.new('Sereia')
    # we will need the age attribute of the mermaid to increase when we call the get_older method
    mermaid.get_older
    expect(mermaid.age).to eq 23
  end
end
