class Post < ActiveRecord::Base
  #attr_accessible :title, :body

  validates :title, :presence => true,
                    :length => { :minimum => 5 }

  has_many :comments, :dependent => :destroy
end
