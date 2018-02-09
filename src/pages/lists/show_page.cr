class Lists::ShowPage < MainLayout
  needs list : List

  def inner
    h1 "List"

    para "#{@list.items.count} item(s)"

    ul do
      @list.items.each do |item|
        link to: Items::Show.with(item.id) do
          li item.name
        end
      end
    end
    #
    # link "New list", to: Lists::New

  end
end
