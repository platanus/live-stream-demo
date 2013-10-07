source = new EventSource('/stocks/prices')
source.addEventListener 'price', (e) ->
	console.log e.data