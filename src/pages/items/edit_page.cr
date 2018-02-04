class Items::EditPage < MainLayout
  needs item_form : ItemForm
  needs item : Item

  def inner
    h1 "Edit #{@item.name}"

    render_item_form(@item_form)
  end

  private def render_item_form(f)
    form_for Items::Update.with(@item) do
      div do
        label_for f.name
        text_input f.name
      end

      div do
        label_for f.completed_at
        text_input f.completed_at
      end

      errors_for f.name

      submit "Update Item"
    end
  end
end
