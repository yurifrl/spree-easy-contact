require 'spree/core/validators/email'
module Spree
  class Contact < ActiveRecord::Base
    belongs_to :topic
    # accepts_nested_attributes_for :topic
    # delegate_belongs_to :topic, :id
    # delegates_attributes_to :topic
    # delegate_belongs_to :topic, :topic_id
    # accepts_nested_attributes_for :topic

    validates :name, :topic_id, :message, :presence => true
    validates :email, email: true

    after_save do
      ContactMailer.notification(self).deliver # to submitter
      ContactMailer.confirmation(self).deliver # to admin
    end
  end
end
