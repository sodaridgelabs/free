module Free
  class Railtie < Rails::Railtie
    initializer 'free.model_additions' do
      ActiveSupport.on_load :active_record do
        extend ModelAdditions
      end
    end
  end
end