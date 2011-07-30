class ClientsController < ApplicationController
  before_filter :require_logged_in

  def index
    @clients = current_user.clients
  end

  def show
    @client = Client.where(user_id: current_user.id).find_by_id(params[:id])

    redirect_to root_url, error: "Client not found" unless @client
  end

  def create
  end

  def update
  end

  def destroy
  end

end
