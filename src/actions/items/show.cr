class Items::Show < BrowserAction
  action do
    render ShowPage, item: ItemQuery.new.find(id)
  end
end
