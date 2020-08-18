# frozen_string_literal: true

# Model for LocalMusicians
class LocalMusician < ApplicationRecord
  validates :name, length: { in: 3..32 }, presence: true
  validates :age, numericality: { only_integer: true }
  validates :active, inclusion: { in: [true, false] }
  validates_uniqueness_of :name
end
