class HeroPower < ApplicationRecord
    belongs_to :hero
    belongs_to :power

    validates :category, inclusion: {in: %w(Strong  Weak  Average)}
end
