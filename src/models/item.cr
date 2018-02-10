class Item < BaseModel
  belongs_to list : List

  table :items do
    column name : String
  end
end
