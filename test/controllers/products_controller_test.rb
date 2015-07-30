require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { description: @product.description, image_full: @product.image_full, img_th: @product.img_th, name: @product.name, product_cost: @product.product_cost, quantity_on_hand: @product.quantity_on_hand, selling_price: @product.selling_price, shipping_weight: @product.shipping_weight }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { description: @product.description, image_full: @product.image_full, img_th: @product.img_th, name: @product.name, product_cost: @product.product_cost, quantity_on_hand: @product.quantity_on_hand, selling_price: @product.selling_price, shipping_weight: @product.shipping_weight }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
