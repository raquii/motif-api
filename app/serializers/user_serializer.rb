class UserSerializer
  include JSONAPI::Serializer
  set_key_transform :camel_lower
  set_type :user

  attributes :email, :role

end
