class SalesforceClient < ApplicationRecord 
  self.table_name = ENV['HEROKUCONNECT_SCHEMA'] + 'client__c'
  
    before_create :generate_uuid, unless: :contact_external_id__c?
  
private
  def generate_uuid
    self.contact_external_id__c = SecureRandom.uuid
  end
end
