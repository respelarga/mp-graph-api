Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql',graphql_path: "graphql#excute"
  end

  post "/graphql", to: "graphql#execute"
  options "/graphql", to: "graphql#execute"
  get "/sign_up", to: "registrations#new"
  post "/sign_up", to: "registrations#create"

end
