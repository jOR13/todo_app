class Todo < ApplicationRecord
    include Visible
    has_many :comments, dependent: :destroy 

    validates :task, presence: true, length: { minimum: 5 }
    # validates :completed, presence: true

    VALID_STATUSES = ['public', 'private', 'archived']

    validates :status, inclusion: { in: VALID_STATUSES }

    def archived?
        status == 'archived'
    end
end
