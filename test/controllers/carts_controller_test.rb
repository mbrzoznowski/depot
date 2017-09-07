require 'test_helper'

class LineItemsControllerTest < ActionController::TestCase

  test 'should destroy cart' do 
    assert_difference('Cart.count', -1) do 
      session[:cart_id] = @cart_id 
      delete :destroy, id: @cart   
    end
    assert_redirected_to store_path
  end

end
