class Lists::Index < BrowserAction
  action do
    render IndexPage, lists: ListQuery.new.preload_items
  end
end
