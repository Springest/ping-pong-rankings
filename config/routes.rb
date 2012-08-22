Rankings::Application.routes.draw do
    root :to => 'home#index'

    match "/ranking" => 'player#ranking'

    match "/game/new" => "game#new"
    match "/game/save" => "game#save"

    match "/player/new" => 'player#new'
    match "/player/save" => 'player#save'
end
