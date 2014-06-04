RailsAdmin.config do |config|

  config.main_app_name = ['Kiira', 'Dashboard']

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end

   config.current_user_method(&:current_user)
  
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    history_index
    history_show    
  end

  config.compact_show_view = false

  config.included_models = ['Gallery']

  config.model 'Gallery' do
    configure :drawings, :has_many_association
    configure :name, :string
    configure :description, :text
    configure :image

    label 'Galeria'
    label_plural 'Galerias'   
    navigation_label 'Art'
    list do
      field :name do
          label 'Nome da Galeria'
      end
      field :description do
          label 'Descrição'
      end
      field :image do
          label 'Imagem da Galerria'
      end
    end
    show do
      field :name
      field :description
      field :image
    end
    edit do
      field :name
      field :description
      field :image
    end
    export do; end
  end
end
