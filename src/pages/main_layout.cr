abstract class MainLayout
  include Lucky::HTMLPage
  include Shared::FieldErrorsComponent
  include Shared::FlashComponent

  # You can put things here that all pages need
  #
  # Example:
  #   needs current_user : User

  abstract def inner

  def render
    html_doctype

    html lang: "en" do
      head do
        utf8_charset
        title page_title
        css_link asset("css/app.css")
        js_link asset("js/app.js")
        csrf_meta_tags
      end

      body do
        render_flash
        inner

        div do
          raw "<hr/>"
          link "Items", to: Items::Index
          text " | "
          link "Lists", to: Lists::Index
        end
      end
    end
  end

  def page_title
    "Checklists App"
  end
end
