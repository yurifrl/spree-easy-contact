class Spree::ContactMailer::ConfirmationPresenter < Spree::CommonPresenter
  presents :contact

  def name
    @contact.name
  end

  def email
    @contact.email
  end

  def topic
    @contact.topic.title
  end

  def order_number?
    !@contact.order_number.blank?
  end

  def order_number
    @contact.order_number
  end

  def message
    @contact.message
  end

  def site_name
    Spree::Config[:site_name]
  end
end