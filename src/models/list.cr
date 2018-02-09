class List < BaseModel
  has_many items : Item

  table :lists do
    field title : String
  end
end
