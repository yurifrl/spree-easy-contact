class Spree::Contacts::ContactPresenter < Spree::CommonPresenter
  presents :contact

  def contact_form
    form_for(@contact, :html => {}) do |form|
      render partial: 'spree/contacts/form', locals: {form: form}
    end
  end
end