class List < BaseModel
  has_many items : Item

  table :lists do
    column title : String
  end
end
