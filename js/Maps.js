function getGeo() {
    if (navigator && navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(geoOK, geoERROR)
    }
}

function geoOK(position) {
    console.log(position);
    showLatLong(position.coords.latitude, position.coords.longitude)
    initMap2(position.coords.latitude, position.coords.longitude)
}

function geoERROR(error) {
    if (error.code == 1) {
        console.log("El usuario negó el permiso")
        alert("El usuario negó el permiso")
    } else if (error.code = 2) {
        console.log("No se puede recuperar la ubicacion")
        alert("No se puede recuperar la ubicacion")
    } else if (error.code == 3) {
        console.log("Expiro el tiempo de respuesta")
        alert("Expiro el tiempo de respuesta")

    } else {
        console.log("Error:" + error.code)
        alert("Error:" + error.code)
    }
}

function showLatLong(lat, long) {
    var geocoder = new google.maps.Geocoder();

    var milocalizacion = new google.maps.LatLng(lat, long);

    console.log(milocalizacion)

    geocoder.geocode({ 'latLng': milocalizacion }, processGoecoder);
}

function processGoecoder(result, status) {

    console.log(result);
    console.log(status);
    if (status == google.maps.GeocoderStatus.OK) {
        if (result[0]) {
            var direccion = result[0].formatted_address;

            $("direccion").html(direccion);
        }
        else {
            error("Google no retorno ningun resultado");
        }
    }
    else {
        error("Google marco un error");
    }
}

let map;

async function initMap() {

    const { Map } = await google.maps.importLibrary("maps");

}


function initMap2(lat, lng) {

    var miscoordenadas = new google.maps.LatLng(lat, lng);

    var mapoptions = {
        zoom: 15,
        center: miscoordenadas,
        mapTypeId: google.maps.MapTypeId.ROADMAP


    }

    var map = new google.maps.Map(document.getElementById("map"), mapoptions)

    new google.maps.Marker({
        position: miscoordenadas,
        map,
        title: "Hello World!"
    });

    $("#street").css("height", 300);

    var panorama = new google.maps.StreetViewPanorama(document.getElementById("street"),
        { position: miscoordenadas, pov: { heading: 90, pitch: 5 } })

    map.setStreetView(panorama)

    window.initMap = initMap;
}