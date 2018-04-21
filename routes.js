if(window.location.protocol.startsWith('https')) {
  page.base('/api/v1/books');
}

page('/*', (ctx, next) => {
  $('.page').hide()
  next()
})

page('/', app.homePage.init)
page('/listView', app.listView.init)
page('/detailView', app.detailView.init)
page('/createView', app.createView.init)
