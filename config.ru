require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end


use Rack::MethodOverride
run ApplicationController
use AgentsController
use CommentsController
use TicketsController
use SessionsController
use UsersController
