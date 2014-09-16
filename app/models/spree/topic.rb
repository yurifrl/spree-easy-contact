require 'spree/core/validators/email'
module Spree
  class Topic < ActiveRecord::Base
    has_many :contacts
    validates :title, :email, :presence => true
    validates :email, email: true
  end
end