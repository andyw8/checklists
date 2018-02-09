class Items::NewPage < MainLayout
  needs item_form : ItemForm

  def inner
    h1 "New Item"
    render_item_form(@item_form)
  end

  private def render_item_form(f)
    form_for Items::Create do
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

      submit "Save Item"
    end
  end

  # TODO how to avoid the duplicate in Items::EditPage
  private def lists_for_select
    ListQuery.new.map do |list|
      { list.title, list.id }
    end
  end
end
