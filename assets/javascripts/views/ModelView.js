const ModelView = Backbone.Marionette.View.extend({
  tagName: 'li',

  template: require('../templates/model-view-template.html'),

  events: {
    'click button': 'handleClick'
  },

  attributes: function () {
    return {
      'data-id': this.model.get('id')
    }
  },

  handleClick: function (e) {
    const id = $(e.currentTarget).parent().data('id')
    console.log(id)
  }
})

export default ModelView
