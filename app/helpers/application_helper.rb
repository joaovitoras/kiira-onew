module ApplicationHelper
	def title(page_title)
  		content_for(:title) { page_title }
	end
	def google_analytics
    if Rails.env.development?
    '<!-- GOOGLE ANALYTICS should be here -->'.html_safe

    '<!-- GOOGLE ANALYTICS should be here -->'.html_safe
    else
      render 'partials/google_analytics'
    end
  end
end
