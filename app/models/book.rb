class Book < ApplicationRecord
 validates :name, presence: true
 validates :author, presence: true
 validates :name, length: { minimum: 2 }
 validates :name, uniqueness: true


 before_save :merge_names

 after_destroy :update_log

 def merge_names
  self.name = self.name + " by " + self.author
 end

 def update_log
   logger.info "===========A book has been deleted with name #{self.name}========"
 end
end
