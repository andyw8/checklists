class Lists::IndexPage < MainLayout
  needs lists : ListQuery

  def inner
    h1 "Lists"

    ul do
      @lists.each do |list|
        link to: Lists::Show.with(list.id) do
          li list.title + " - #{list.items.count} item(s))"
        end
      end
    end

    link "New list", to: Lists::New
  end
end
