module Spree
  module Admin
    module ContactsHelper
      def link_to_show(resource, options={})
        link_to_with_icon 'link', Spree.t(:display), object_url(resource), options
      end
      
      def link_to_resend(resource, options={})
        link_to_with_icon 'envelope', Spree.t(:resend), object_url(resource), options
      end
    end
  end
end