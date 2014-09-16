class Spree::ContactsController < Spree::StoreController

  helper "spree/products"

  def new
    @contact = Spree::Contact.new
    render 'spree/contacts/contact'
  end


  def create
    @contact = Spree::Contact.new(permit_attributes)

    if @contact.save
      #todo mailer here

      redirect_to(spree.root_path, :notice => Spree.t('contacts.notices.success'))
    else
      render 'spree/contacts/contact'
    end
  end

  private
  def permit_attributes
    params.require(:contact).permit!
  end

  def accurate_title
    Spree.t('contacts.new.contact')
  end

end