import App from './app'
import Router from './router'
import Controller from './controller'
require('../stylesheets/index.scss')

const app = new App()
const controller = new Controller({ app: app })
const router = new Router({ controller: controller })

app.Router = router

$(function () {
  app.start()
})
