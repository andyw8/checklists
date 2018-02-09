class Lists::Show < BrowserAction
  action do
    render ShowPage, list: ListQuery.new.first
  end
end
