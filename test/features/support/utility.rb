def text_contains_string?(text, string)
  return true if string.class == String && text =~ /#{string}/
  return false
end

module PageFeatures
    def click_link (link_name)
      @browser.link(:text, link_name).when_present_click
    end

  def click_link_by_id (link_id)
    @browser.ink(:id, link_id).when_present.click
  end
end