class Admin::BaseController < ApplicationController
    http_basic_authenticate_with name: 'admin', password: "admin"
    layout 'admin_application'
  end