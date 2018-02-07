class Lists::Create < BrowserAction
  action do
    ListForm.create(params) do |form, list|
      if list
        flash.success = "The list was created"
        redirect to: Lists::Index
      else
        flash.danger = "The list was not created"
        render NewPage, list_form: form
      end
    end
  end
end
