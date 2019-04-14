class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_one_attached :picture

  def self.search(search)
    if search
      article = Article.find_by(title: search)
      if article
        self.where(id: article)
      else
        Article.all
      end
    else
      Article.all
    end
  end
end