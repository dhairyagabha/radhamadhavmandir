module ArticlesHelper
  def find_by_tag(tag)
    @article = Webmanager::Article.tagged_with(tag)
  end
end
