# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord

    COLORS = ["black", "white", "orange", "brown"]
    validate :birth_date_cannot_be_future
    validates :birth_date, :color, :name, :sex, presence: true
    validates :color, inclusion: { in: (COLORS) }
    validates :sex, inclusion: { in: ["M", "F"] }

    def birth_date_cannot_be_future
        if birth_date.present? && birth_date > Date.today
            errors.add(:birth_date, "can't be in the future")
          end
    end

    def age
        year_born = birth_date.year
        Date.today.year - (year_born)
    end

end
