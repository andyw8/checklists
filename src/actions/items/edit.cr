class Items::Edit < BrowserAction
  action do
    item = ItemQuery.new.find(id)

    render EditPage, item_form: ItemForm.new(item), item: item
  end
end
