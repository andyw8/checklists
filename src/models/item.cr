class Item < BaseModel
  belongs_to list : List

  table :items do
    field name : String
  end
end
