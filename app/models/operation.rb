class Operation < ActiveRecord::Base
  belongs_to :worker
  has_one :inventory
  scope :operation_last_5, -> {order("id desc").limit(5)}
  scope :operations_of_last_day, -> {where(:created_at => last.created_at.beginning_of_day..last.created_at.end_of_day)}
end
