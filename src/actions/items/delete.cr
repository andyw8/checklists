class Items::Delete < BrowserAction
  action do
    ItemQuery.new.find(id).delete

    flash.success = "The item was deleted"
    redirect to: Items::Index
  end
end
