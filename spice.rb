class Spice < ActiveRecord::Base
  validates_presence_of :spicename
  validates_presence_of :quantity
  validates_presence_of :scale
  validates_presence_of :supplier
  validates_length_of :spicename, :within => 1..99
  validates_length_of :scale, :within => 1..49
  validates_length_of :supplier, :within => 1..99
  validates_numericality_of :quantity, :less_than_or_equal_to => 20, :only_integer => true, :greater_than_or_equal_to => 0
end
