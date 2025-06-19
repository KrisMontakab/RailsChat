class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      #See other stopped 'Content missing' so it says that 
      return redirect_to rooms_path, status: :see_other if resource.persisted?
    end
  end
end