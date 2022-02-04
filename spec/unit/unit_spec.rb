# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'JK Rowling', price: 25, published: '2022-02-03')

  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a date' do
    subject.published = nil
    expect(subject).not_to be_valid
  end

  it 'is valid with title' do 
    expect(subject.title).to match "harry potter"
  end

  it 'is valid with author' do 
    expect(subject.author).to match "JK Rowling"
  end

  it 'is valid with price' do 
    expect(subject.price).to match 25
  end

  it 'is valid with date' do 
    expect(subject.published).to match Date.parse("2022-02-03")
  end
end