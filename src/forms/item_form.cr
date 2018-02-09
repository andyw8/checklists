class ItemForm < Item::BaseForm
  allow name, list_id

  def prepare
    validate_required name
  end
end
