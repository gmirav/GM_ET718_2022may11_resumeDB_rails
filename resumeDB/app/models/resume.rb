class Resume < ApplicationRecord
  has_many :skills, dependent: :destroy
end
