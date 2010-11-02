class AddTranslations2ToPage < ActiveRecord::Migration
  def self.up
    Page.create_translation_table! :title => :string, :body => :text,:navlabel => :string    
  end

  def self.down
    Page.drop_translation_table!    
  end
end
