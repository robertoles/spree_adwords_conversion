module Spree
  module Admin
    class AdwordsSettingsController < Spree::Admin::BaseController
      def show
        @preferences = ['conversion_id', 'conversion_language', 'conversion_color',
                        'conversion_label', 'conversion_format']
      end

      def edit
        @preferences = [:conversion_id, :conversion_language, :conversion_color,
                        :conversion_label, :conversion_format]
      end

      def update
        params.each do |name, value|
          next unless Spree::Config.has_preference? name
          Spree::Config[name] = value
        end

        redirect_to admin_adwords_settings_path
      end

      def dismiss_alert
        if request.xhr? and params[:alert_id]
          dismissed = Spree::Config[:dismissed_spree_alerts] || ''
          Spree::Config.set :dismissed_spree_alerts => dismissed.split(',').push(params[:alert_id]).join(',')
          filter_dismissed_alerts
          render :nothing => true
        end
      end
    end
  end
end
