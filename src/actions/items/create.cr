class Items::Create < BrowserAction
  action do
    ItemForm.create(params) do |form, item|
      if item # the item was saved
        text "Hello #{item.name}"
      else # the item was not saved
        text "fail"
       end
    end
  end
end
