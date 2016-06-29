class PostPage
  include PageObject

  def contains_post_link? (post_name)
    @browser.link(:text, post_name)
  end

  def contains_text (page_text)
    @browser.p(:text, page_text)
  end

  def click_link(post_name)
    @browser.link(:text,post_name).click
  end
end