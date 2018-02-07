class Lists::NewPage < MainLayout
  needs list_form : ListForm

  def inner
    h1 "New List"
    render_list_form(@list_form)
  end 

  private def render_list_form(f)
    form_for Lists::Create do
      label_for f.title
      text_input f.title
      errors_for f.title

      submit "Save List"
    end
  end
end
