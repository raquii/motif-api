class StudentSerializer
    include JSONAPI::Serializer
    set_key_transform :camel_lower

    attributes :first_name, :last_name, :phone, :email, :address
    attribute :student_profile do |object| 
        StudentProfileSerializer.new(object.student_profile)
    end

end