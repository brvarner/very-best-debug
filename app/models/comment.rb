# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  venue_id   :integer
#

class Comment < ApplicationRecord
  validates(:commenter, { :presence => true })

  def commenter
    author_id = self.author_id
    
    the_user = User.find(author_id)
    
    return the_user
  end
end
