class Lists::Show < BrowserAction
  action do
    render ShowPage, list: ListQuery.new.preload_items.find(id)
  end
end
