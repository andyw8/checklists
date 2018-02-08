class Lists::Show < BrowserAction
  action do
    text "show"
    # render IndexPage, lists: ListQuery.new
  end
end
