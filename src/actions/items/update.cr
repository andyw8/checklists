class Items::Update < BrowserAction
  action do
    item = ItemQuery.new.find(id)

    ItemForm.update(item, params) do |form, item|
      if form.save_succeeded?
        flash.success = "The item was updated"
        redirect to: Items::Index
      else
        flash.danger = "The item was not updated"
        render EditPage, item_form: form, item: item
      end
    end
  end
end
