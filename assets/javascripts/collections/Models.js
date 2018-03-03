import Model from '../models/Model'

const Models = Backbone.Collection.extend({
  model: Model,
  url: '/models',
  parse: function (data) {
    return data['body'].results
  }
})

export default Models
