import Model from '../models/Model'

const FormView = Backbone.Marionette.View.extend({
  template: require('../templates/form-view-template.html'),

  tagName: 'form',

  events: {
    'click button': 'handleClick'
  },

  handleClick: function (e) {
    e.preventDefault()

    let model = new Model()

    const modelAttrs = {
      name: $('[name="name"]').val()
    }

    model.set(modelAttrs)

    model.save(modelAttrs, {
      success: () => {
        console.log('success')
      },
      error: (err) => {
        console.log(err)
      }
    })
  }
})

export default FormView
