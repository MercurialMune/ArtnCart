require "application_system_test_case"

class ProductCategoriesTest < ApplicationSystemTestCase
  setup do
    @product_category = product_categories(:one)
  end

  test "visiting the index" do
    visit product_categories_url
    assert_selector "h1", text: "Product Categories"
  end

  test "creating a Product category" do
    visit product_categories_url
    click_on "New Product Category"

    fill_in "Category", with: @product_category.category_id
    fill_in "Product", with: @product_category.product_id
    click_on "Create Product category"

    assert_text "Product category was successfully created"
    click_on "Back"
  end

  test "updating a Product category" do
    visit product_categories_url
    click_on "Edit", match: :first

    fill_in "Category", with: @product_category.category_id
    fill_in "Product", with: @product_category.product_id
    click_on "Update Product category"

    assert_text "Product category was successfully updated"
    click_on "Back"
  end

  test "destroying a Product category" do
    visit product_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product category was successfully destroyed"
  end
end
