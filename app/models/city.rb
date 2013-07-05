class City < ActiveRecord::Base
  attr_accessible :code, :name
  #Validations
  validates_presence_of :name, :code, :message => I18n.t(:blank)
  validates_uniqueness_of :name, :code, :message => I18n.t(:uniqueness)
end
