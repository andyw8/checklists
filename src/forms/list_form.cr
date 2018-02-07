class ListForm < List::BaseForm
  allow title

  def prepare
    validate_required title
  end
end
