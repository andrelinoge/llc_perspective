class Admin::ApplicationController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "!Admin123"

  layout 'admin-application'
end