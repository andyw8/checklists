class Items::Create < BrowserAction
  action do
    ItemForm.create(params) do |form, item|
      if item
        flash.success = "The item was created"
        redirect to: Items::Index
      else
        flash.danger = "The item was not created"
        render NewPage, item_form: form
      end
    end
  end
end
