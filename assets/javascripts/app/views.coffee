Travis.ApplicationView  = Em.View.extend templateName: 'application'
Travis.RepositoriesView = Em.View.extend templateName: 'repositories/list'

Travis.RepositoriesItemView = Em.View.extend
  classes: (->
    color   = Travis.Helpers.colorForResult(@getPath('context.last_build_result'))
    classes = ['repository', color]
    classes.push 'selected' if @getPath('context.selected')
    classes.join(' ')
  ).property('context.last_build_result', 'context.selected')

  lastBuild: (->
    owner: @getPath('context.owner')
    name: @getPath('context.name')
    id: @getPath('context.last_build_id')
  ).property('context.last_build_id')


Travis.RepositoryView = Em.View.extend templateName: 'repositories/show'
Travis.TabsView       = Em.View.extend templateName: 'repositories/tabs'
Travis.HistoryView    = Em.View.extend templateName: 'builds/list'

Travis.BuildsItemView = Em.View.extend
  classes: (->
    Travis.Helpers.colorForResult(@getPath('content.result'))
  ).property('content.result')

Travis.CurrentView  = Travis.BuildView = Em.View.extend templateName: 'builds/show'
Travis.LoadingView  = Em.View.extend templateName: 'loading'
Travis.JobsView     = Em.View.extend templateName: 'jobs/list'
Travis.JobView      = Em.View.extend templateName: 'jobs/show'
Travis.LogView      = Em.View.extend templateName: 'jobs/log'

