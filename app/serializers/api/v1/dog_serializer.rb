class Api::V1::DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :age
  has_one :user
end
