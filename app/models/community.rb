class Community < ActiveRecord::Base
  
  validates :name, presence: true, uniqueness: true, :case_sensitive => false
  
  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%")
  end
end
