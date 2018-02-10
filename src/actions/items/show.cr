class Items::Show < BrowserAction
  action do
    render ShowPage, item: ItemQuery.new.preload_list.find(id)
  end
end
