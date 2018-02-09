class AddListToItems::V20180208211849 < LuckyMigrator::Migration::V1
  def migrate
    alter :items do
     add list_id : Int32?
    end
  end

  def rollback
    alter :items do
      remove :list_id
    end
  end
end
