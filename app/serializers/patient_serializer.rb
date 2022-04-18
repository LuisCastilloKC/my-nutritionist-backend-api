class PatientSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :address, :birthday, :gender, :country, :occupation, :email, :phonenumber
end
