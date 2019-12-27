module Inviado
  module Etl
    # all Sequel Models used for ETL jobs
    module DBModels
      require 'sequel'

      DB = Sequel.connect('postgres://jan.prill:@localhost:5432/inviado') # requires pg
      
      class Link < Sequel::Model(DB[:links])
        many_to_one :organization, :class => :Organization
      end
      
      class Searchresult < Sequel::Model(DB[:searchresults])
        many_to_one :organization, :class => :Organization
      end
      
      class Organization < Sequel::Model(DB[:organizations])
        one_to_many :links, :class => :Link
        one_to_many :searchresults, :class => :Searchresult
      end
    end
  end
end