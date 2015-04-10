`import Ember from 'ember'`

ArticleNewController = Ember.Controller.extend
  isValid: ~>
    !Ember.isEmpty(@model.description)
  actions:
    save: ->
      if @isValid
        return true
      else
        @errorMessages = "Description can't be blank"
        false

`export default ArticleNewController`
