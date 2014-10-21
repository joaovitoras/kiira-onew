# Parado por um tempo :C

# Bem Vindo ao projeto Kiira Onew
Este app é um portfólio para Designers...

### Para obter esse app basta utilizar o git clone
```
$ git clone git://github.com/joaovitoras/kiira-onew.git
```
Antes de iniciar o app rode
```
$ cd kiira-onew
$ rake db:setup
$ rake db:seed
```
Agora rode o servidor rails
```
$ rails s
```
### Upload de Imagens feitos com a gem [carrierwave](https://github.com/carrierwaveuploader/carrierwave)
Em development configure o local para o upload de suas imagens no arquivo [image_uploader.rb](https://github.com/joaovitoras/kiira-onew/blob/master/app/uploaders/image_uploader.rb)
```ruby
 def store_dir
    "public/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
 end
```
### Em produção é utilizado o dropbox como servidor de imagens, com a gem [carrierwave-dropbox](https://github.com/robin850/carrierwave-dropbox)
Configure o as variaveis de ambiente para acesso a sua conta no dropbox [dropbox.rb](https://github.com/joaovitoras/kiira-onew/blob/master/config/initializers/dropbox.rb).
```ruby
 CarrierWave.configure do |config|
  config.dropbox_app_key = ENV["APP_KEY"]
  config.dropbox_app_secret = ENV["APP_SECRET"]
  config.dropbox_access_token = ENV["ACCESS_TOKEN"]
  config.dropbox_access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
  config.dropbox_user_id = ENV["USER_ID"]
  config.dropbox_access_type = "dropbox"
end
```

Para resgatar essas informações, acesse o site [Drop Box Apps](https://www.dropbox.com/developers/apps)

Crie um no app e acesse-o...

### O tema usado foi o [SuperHero](http://bootswatch.com/superhero/) feito pelo [Bootswatch](http://bootswatch.com/) utilizando o [Bootstrap](http://getbootstrap.com/)

![SuperHero Theme](http://s27.postimg.org/tazs0eyw3/thumbnail.png)

### Autores de Contribuidores
O [**Kiira Onew Project**](https://github.com/joaovitoras/kiira-onew)é mantido por @joaovitoras. em contribuição com o designer [Kiira Onew](http://kiiraonew.deviantart.com/) para o compartilhamento do seu trabalho de força intuitiva.
