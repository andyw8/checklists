class ItemForm < Item::BaseForm
  allow name
  allow completed_at

  def prepare
    validate_required name
  end
end
