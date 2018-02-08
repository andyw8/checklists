class Lists::New < BrowserAction
  action do
    render NewPage, list_form: ListForm.new
  end
end
