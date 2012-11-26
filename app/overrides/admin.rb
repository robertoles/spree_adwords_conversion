Deface::Override.new(
  virtual_path: "spree/admin/configurations/index", 
  partial: 'spree/admin/adwords_settings/adword_config',
  insert_bottom: "[data-hook='admin_configurations_menu']",
  name: 'add_adwords_conversion_config')
