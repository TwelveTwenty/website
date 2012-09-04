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

  def description(page_description)
    content_for(:description) { page_description }
    @page_page_description = page_description
  end
end
