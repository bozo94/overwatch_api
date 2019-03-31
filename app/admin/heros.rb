ActiveAdmin.register Hero do
  index do
    id_column
    column :name
    column :real_name
    actions
  end
  controller do
    def find_resource
      scoped_collection.where(slug: params[:id]).first!
    end
  end
end
