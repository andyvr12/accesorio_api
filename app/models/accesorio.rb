class Accesorio < ActiveRecord::Base
  attr_accessible :description, :name, :price, :created_at, :update_at
end
