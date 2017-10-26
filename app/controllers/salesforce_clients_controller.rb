class SalesforceClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @sf_clients = SalesforceClient.all
    respond_to do |format|
      format.html { render action: 'index' }
      format.json { render json: @sf_clients } 
    end
  end

  def show
  end

  def new
    @sf_client = SalesforceClient.new
  end

  def edit
  end

  def create
    @sf_client = SalesforceClient.new(client_params)

    respond_to do |format|
      if @sf_client.save
        format.html { redirect_to @sf_client, notice: 'Client was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sf_client }
      else
        format.html { render action: 'new' }
        format.json { render json: @sf_client.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @sf_client.update(client_params)
        format.html { redirect_to @sf_client, notice: 'Client was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sf_client.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @sf_client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @sf_client = SalesforceClient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:salesforce_client).permit(:name, :urn__c, :vertical__c, :client_external_id__c)
    end
end
