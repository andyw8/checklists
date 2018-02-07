class Lists::Index < BrowserAction
  action do
    render IndexPage, lists: ListQuery.new
  end
end
