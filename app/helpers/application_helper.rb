module ApplicationHelper
  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :hard_wrap => true)
    markdown.render(text).html_safe
  end

  def title(page_title)
    page_title = page_title
    content_for(:title) { "#{page_title} - Twelve Twenty" }
    @page_title = page_title
  end
end
