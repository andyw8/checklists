class Item < BaseModel
  table :items do
    field name : String
    field completed_at : Time?
  end
end
