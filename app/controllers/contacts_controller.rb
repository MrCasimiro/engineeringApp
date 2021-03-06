class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Agradecemos a sua mensagem!'
    else
      flash.now[:error] = 'Não foi possível enviar a mensagem.'
      render :new
    end
  end
end
