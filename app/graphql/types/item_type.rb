module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :image_url, String, null: true
    field :user, Types::UserType, null: false, resolve: -> (item, _args, _ctx) do
      Loaders::PrimaryKeyLoader.for(User).load(item.user_id)
    end
  end
end
