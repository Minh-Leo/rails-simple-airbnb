// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

 // TODO: Write your JS code in here


const myAPI = 'pk.eyJ1IjoibWluaGJ1aSIsImEiOiJjazRhcWRkcWcwNjRvM2V1cTcxcGc1c2M1In0.QePhyDBj0T5pwR0ibkTdTw';

const baseUrl = 'https://api.mapbox.com/geocoding/v5/mapbox.places/';

let flatAddress, url, map

let displayMap = (coor) => {
  mapboxgl.accessToken = myAPI;

  map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v9',
    center: coor,
    zoom: 16
  });

  new mapboxgl.Marker()
    .setLngLat(coor)
    .addTo(map);
};


let getCoordinates = (newAddress) => {
  flatAddress = newAddress.split(' ').join('%20');

  url = `${baseUrl}${flatAddress}.json?access_token=${myAPI}`;

  fetch(url)
    .then(res => res.json())
    .then((data) => {
      console.log(data.features[0].center);
      displayMap(data.features[0].center);
    });
};
