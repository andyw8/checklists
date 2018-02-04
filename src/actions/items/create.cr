class Items::Create < BrowserAction
  action do
    ItemForm.create(params) do |form, item|
      if item # the item was saved
        redirect to: Items::Index
      else # the item was not saved
        text "fail"
        render NewPage, item_form: form
      end
    end
  end
end
