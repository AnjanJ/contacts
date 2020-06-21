class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        ContactMailer.with(contact: @contact).new_contact_email.deliver_later # notify about new contact
        format.html { redirect_to root_path, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Set strong params
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :email, :phone_number, :message)
    end
end
