class Items::IndexPage < MainLayout
  needs item_names : ItemQuery

  def inner
    ul class: "my-item-list" do
      @item_names.each do |item|
        li item.name, class: "item-name"
      end
    end
  end
end
