class Additional < ApplicationRecord
  enum kind_donor: [:systematic, :eventual]  
end
