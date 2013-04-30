Ckeditor.setup do |config|
  config.authorize_with do
    redirect_to spree.root_path unless spree_current_user && spree_current_user.has_spree_role?('admin')
  end
end