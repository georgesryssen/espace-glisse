class Category < ApplicationRecord
  has_many :lessons
  CATEGORY = [
    {
      field: 'Eau',
      sports: ['Surf','Kitesurf', 'Bodyboard', 'Paddle', 'Windsurf', 'Wingsurf', 'Wingfoil', 'Skimboard',
        'Paddlesurf', 'Wakeboard', 'Ski nautique']
    },
    {
      field: 'Neige',
      sports: ['Ski', 'Snowboard', 'Ski de fond', 'Snowkite', 'Airboard', 'Raquettes', 'Snowscoot']
    }
  ].freeze

end
