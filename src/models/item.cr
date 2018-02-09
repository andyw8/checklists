class Item < BaseModel
  belongs_to list : List

  table :items do
    field name : String
    # field list_id : Int32?
  end
end
