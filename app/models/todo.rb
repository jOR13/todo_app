class Todo < ApplicationRecord
    validates :task, presence: true, length: { minimum: 5 }
    # validates :completed, presence: true
end
