class Items::Index < BrowserAction
  action do
    render IndexPage, item_names: ItemQuery.new
  end
end
