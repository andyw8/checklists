class Lists::Show < BrowserAction
  action do
    render ShowPage, list: ListQuery.new.find(id)
  end
end
