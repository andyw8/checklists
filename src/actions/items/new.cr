# Missing from guide?
class Items::New < BrowserAction
  action do
    render NewPage, item_form: ItemForm.new
  end
end
