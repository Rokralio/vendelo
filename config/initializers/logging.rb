# frozen_string_literal: true

# # Silenciar logs de assets y consultas comunes
# Rails.application.configure do
#   config.assets.quiet = true

#   if Rails.env.development?
#     # Filtra consultas SQL de tablas específicas
#     ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)
#     ActiveRecord::Base.logger.level = Logger::INFO

#     # Opcional: Silencia rutas específicas (como assets)
#     config.web_console.whiny_requests = false
#   end
# end
