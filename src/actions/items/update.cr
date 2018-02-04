class Items::Update < BrowserAction
  action do
    item = ItemQuery.new.find(id)

    ItemForm.update(item, params) do |form, item|
      if item
        flash.success = "The item was updated"
        redirect to: Items::Index
      else
        text "failed to update"
        flash.danger = "The item was not updated"
        render EditPage, item_form: form, item: item
      end
    end
  end
end
