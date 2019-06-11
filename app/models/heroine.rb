class Heroine < ApplicationRecord
    belongs_to :power
    validates_uniqueness_of :super_name, :case_sensitive => false

    def self.search(search)
        if search
            power = Power.where('lower(name) LIKE ?', "%#{search.downcase}%")
            if power
                self.where(power_id: power)
            else
                Heroine.all
            end
        else
            Heroine.all
        end
    end
end
