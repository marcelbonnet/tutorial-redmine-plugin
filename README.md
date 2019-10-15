# Tutorial de Plugin para Redmine

Persistir o mapeamento ORM no banco de dados:
`# bundle exec rake redmine:plugins:migrate`

`# grep RAILS_ENV ~/.cshrc   
setenv  RAILS_ENV production `

`# echo $RAILS_ENV
production `

`# while true; do rails s -p 3000 -b 0.0.0.0 -e production; done`

# Problemas

Abra um terminal para manter uma visão dos logs:

`tail -f [redmine install path]/log/production.log`
