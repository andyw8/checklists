class ItemForm < Item::BaseForm
  allow name
  allow list_id

  def prepare
    validate_required name
  end
end
