import mapboxgl from "mapbox-gl";
import 'mapbox-gl/dist/mapbox-gl.css';

const addMarkers = (map, markers) => {
  markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([marker.lng, marker.lat])
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapBox = () => {
  const mapElement = document.getElementById("map");

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: "map",
      style: 'mapbox://styles/mapbox/streets-v11'
      
    });
    
    const markers = JSON.parse(mapElement.dataset.markers);
    
    fitMapToMarkers(map, markers);
    addMarkers(map, markers);
  }
};

export { initMapBox };

