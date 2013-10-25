Deface::Override.new(
  virtual_path: "spree/admin/shared/_configuration_menu",
  name: "add_adwords_conversion_config_link",
  insert_bottom: "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_sidebar_menu[data-hook]",
  text: "<%= configurations_sidebar_menu_item 'Adwords Conversion Settings', admin_adwords_settings_path %>")
