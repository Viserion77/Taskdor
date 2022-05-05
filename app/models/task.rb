class Task < ApplicationRecord
  after_update_commit { broadcast_append_to "tasks" }
  validates :title, presence: true

  enum status: { pending: 0, done: 1 }
end
