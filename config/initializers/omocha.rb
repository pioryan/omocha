class String
  def to_wiki_slug
    self.parameterize.underscore.camelize
  end
end
