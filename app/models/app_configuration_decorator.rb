Spree::AppConfiguration.class_eval do
  preference :conversion_id,       :integer, default: 0
  preference :conversion_language, :string,  default: 'en_GB'
  preference :conversion_color,    :string,  default: '666666'
  preference :conversion_label,    :string,  default: 'Purchase'
  preference :conversion_format,   :string,  default: "3"
end