Rails.application.routes.draw do
  scope :admin do
    scope module: :backend do
      root "application#index"
    end
  end

  scope module: :frontend do
    root "application#index"
  end
end
