class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :name, :profile, :occupation, :position])
  end
end




# paramsのpermitメソッド
# params.require(:モデル名).permit(:許可するキー)

# # devise_parameter_sanitizerのpermitメソッド
# devise_parameter_sanitizer.permit(:deviseの処理名, keys: [:許可するキー])