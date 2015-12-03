# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  # initialize the map on the 'map' div
  # with the given map ID, center, and zoom

  L.mapbox.accessToken = 'pk.eyJ1IjoibWFydGluY2hvIiwiYSI6ImZlMTY1MzUwMjQ5MGQ3YjgyY2NkYTU2MzJiZWIyMWRiIn0.Yhwbui6KvzC0JziPkwWXuQ'
  map = L.mapbox.map('map', 'martincho.nb477913')

  # get JSON object
  # on success, parse it and
  # hand it over to MapBox for mapping
  $.ajax
    dataType: 'text'
    url: '1.json'
    success: (data) ->
      geojson = $.parseJSON(data)
      map.featureLayer.setGeoJSON(geojson)

  # add custom popups to each marker
  map.featureLayer.on 'layeradd', (e) ->
    marker = e.layer
    properties = marker.feature.properties

  # create custom popup
    popupContent =  '<div class="popup">' +
                    '<h3>' + properties.name + '</h3>' +
                    '<p>' + properties.address + '</p>' +
                  '</div>'

  # http://leafletjs.com/reference.html#popup
    marker.bindPopup popupContent,
      closeButton: false
      minWidth: 320

  # handles a sidebar happy hour click
  $('article li').click (e) ->
    current = $(this)
    currentlyClickedName = current.find('h2').text()

  