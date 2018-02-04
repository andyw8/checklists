class Items::IndexPage < MainLayout
  needs item_names : ItemQuery

  def inner
    h1 "Items"

    ul class: "my-item-list" do
      @item_names.each do |item|
        link to: Items::Show.with(item.id) do
          li item.name, class: "item-name"

        end
      end
    end

    link "New item", to: Items::New

  end
end
