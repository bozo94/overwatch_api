ActiveAdmin.register Ability do

  index do
    id_column
    column :name
    column :description
    column :is_ultimate
    actions
  end
  controller do
    def find_resource
      scoped_collection.where(slug: params[:id]).first!
    end
  end
end
