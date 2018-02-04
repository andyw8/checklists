class Items::ShowPage < MainLayout
  needs item : Item

  def inner
    h1 @item.name

    para do
      link "Edit item", to: Items::Edit.route(@item)
    end

    para do
      link "All items", to: Items::Index
    end
  end
end
