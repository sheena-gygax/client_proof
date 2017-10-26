class SalesforceClient < ApplicationRecord 
  self.table_name = ENV['HEROKUCONNECT_SCHEMA'] + '.client__c'
  
  before_create :sf_generate_uuid, unless: :client_external_id__c?
  
private
  def sf_generate_uuid
    self.client_external_id__c = SecureRandom.uuid
  end
end
