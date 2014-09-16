class Spree::Contacts::FormPresenter < Spree::CommonPresenter

  presents :form

  def name_field?
    true
  end

  def name_field
    @form.text_field(:name, class: 'required') + @form.error_message_on(:name)
  end

  def email_field
    @form.email_field(:email, class: 'required email') + @form.error_message_on(:email)
  end

  def topic_field?
    Spree::Topic.all.any?
  end

  def topic_field
    @form.collection_select(:topic_id, Spree::Topic.all, :id, :title, class: 'required') + @form.error_message_on(:topic_id)
  end

  def order_field
    @form.text_field(:order_number) + @form.error_message_on(:order_name)
  end

  def message_field
    @form.text_area(:message, class: 'required') + @form.error_message_on(:message)
  end

  def submit_button
    @form.submit Spree.t('submit'), :alt => Spree.t('submit'), :id => 'contact_us_contact_submit', :title => Spree.t('submit')
  end
end