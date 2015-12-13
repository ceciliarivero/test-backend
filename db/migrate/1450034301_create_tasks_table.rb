Sequel.migration do
  change do
    create_table(:tasks) do
      primary_key :id

      foreign_key :user_id, :users

      column :description, String, null: false
      column :category, String, null: false
      column :date, Date, null: false
      column :complete, :boolean, default: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
