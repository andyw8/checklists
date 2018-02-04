class AddCompletedAtToItems::V20180204135717 < LuckyMigrator::Migration::V1
  def migrate
    alter :items do
      add completed_at : Time?
    end
  end

  def rollback
    alter :items do
      remove :completed_at
    end
  end
end
