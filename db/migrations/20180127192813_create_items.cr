class CreateItems::V20180127192813 < LuckyMigrator::Migration::V1
  def migrate
    create :items do
      add name : String
    end
  end

  def rollback
    drop :items
  end
end
