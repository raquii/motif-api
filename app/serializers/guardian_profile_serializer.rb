class GuardianProfileSerializer
    include JSONAPI::Serializer
    set_key_transform :camel_lower
  
    attributes :first_name, :last_name, :phone, :address, :email, :lesson_reminder_emails, :lesson_reminder_sms

end
  