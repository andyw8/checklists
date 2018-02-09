class Items::EditPage < MainLayout
  needs item_form : ItemForm
  needs item : Item
  # need item too?

  def inner
    h1 "Edit #{@item.name}"

    render_item_form(@item_form)
  end

  private def render_item_form(f)
    form_for Items::Update.with(@item) do
      div do
        label_for f.name
        text_input f.name
        errors_for f.name
      end

      div do
        label_for f.list_id
        select_input f.list_id do
          options_for_select(f.list_id, lists_for_select)
        end
        errors_for f.list_id
      end

      submit "Update Item"
    end
  end

  # TODO how to avoid the duplicate in Items::NewPage
  private def lists_for_select
    ListQuery.new.map do |list|
      { list.title, list.id }
    end
  end
end
