# == Schema Information
#
# Table name: entries
#
#  id            :bigint           not null, primary key
#  calories      :integer
#  carbohydrates :integer
#  fats          :integer
#  meal_type     :string
#  proteins      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Entry < ApplicationRecord
  def day
    self.created_at.strftime("%b %e, %Y")
  end
end
