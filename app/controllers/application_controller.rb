class ApplicationController < ActionController::Base
company = {
  "mail" => "info@ablele.com",
  "number" => "48805663",
  "name" => "Ainotek"
}

	add_flash_types :success, :danger, :warning
end
