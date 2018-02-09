class Items::ShowPage < MainLayout
  needs item : Item

  def inner
    h1 @item.name + "(#{@item.list_id})"

    para do
      link "Edit item", to: Items::Edit.route(@item)
    end

    para do
      link "Delete item", to: Items::Delete.route(@item)
    end

    para do
      link "All items", to: Items::Index
    end
  end
end
