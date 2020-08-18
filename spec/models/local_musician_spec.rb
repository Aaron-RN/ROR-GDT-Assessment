# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LocalMusician, type: :model do
  describe 'Validations For Local Musician' do
    let(:musician) { build(:local_musician) }
    let(:musicianTwo) { build(:local_musician) }
    it 'should validate Musician\'s name presence' do
      musician.name = ''
      expect(musician.save).to eq(false)
    end
    it 'should validate Musician\'s name uniqueness' do
      musician.save
      expect(musicianTwo.save).to eq(false)
    end
    it 'should validate Musician\'s age is less than or equal to 150' do
      musician.age = 151
      expect(musician.save).to eq(false)
    end
    it 'should validate Musician\'s age is an integer not float' do
      musician.age = 21.5
      expect(musician.save).to eq(false)
    end
    it 'should validate Musician\'s age is an integer not string' do
      musician.age = '18l'
      expect(musician.save).to eq(false)
    end
  end

  describe 'Create valid Musician' do
    let(:musician) { build(:local_musician) }
    it 'should save Musician' do
      expect(musician.save).to eq(true)
    end
  end
end
