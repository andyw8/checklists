class CreateLists::V20180207081833 < LuckyMigrator::Migration::V1
  def migrate
    create :lists do
     add title : String
    end
  end

  def rollback
    drop :lists
  end
end
