class Estimation < ApplicationRecord
  THEMATIC = [
    'couverture',
    'zinguerie',
    'charpenterie'
  ]

  belongs_to :user
  validates :thematic, inclusion: { in: THEMATIC, message: 'zinguerie, couverture ou charpenterie' }
  validates :description, presence: true
  # validates :terms_of_service, acceptance: { message: 'validation nécessaire' }
end
