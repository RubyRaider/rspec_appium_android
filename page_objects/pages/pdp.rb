require_relative '../abstract/page'

class Pdp < Page

  # Actions

  def add_to_cart_text
    driver.wait { add_to_cart_button }.text
  end

  private

  # Elements

  def add_to_cart_button
    driver.find_element(xpath: '//android.view.ViewGroup[@content-desc="Add To Cart button"]/android.widget.TextView')

  end
end
