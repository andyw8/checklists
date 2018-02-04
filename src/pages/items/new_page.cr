class Items::NewPage < MainLayout
  needs item_form : ItemForm

  def inner
    h1 "New Item"
    render_item_form(@item_form)
  end

  private def render_item_form(f)
    form_for Items::Create do
      label_for f.name
      text_input f.name
      errors_for f.name

      submit "Save Item"
    end
  end
end
