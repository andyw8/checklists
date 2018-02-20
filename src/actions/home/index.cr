class Home::Index < BrowserAction
  get "/" do
    redirect to: Lists::Index
  end
end
