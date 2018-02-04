class ItemForm < Item::BaseForm
  allow name

  def prepare
    validate_required name
  end
end
