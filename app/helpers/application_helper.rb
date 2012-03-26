module ApplicationHelper
  def stars count
    content_tag :div, class: "stars-wrapper" do
      content_tag :div, class: "stars stars-#{count}" do

      end
    end
  end
end
