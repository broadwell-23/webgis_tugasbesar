
var map;
var popup_map;

var sambunganMarker = [];
var sambunganId = [];
var sambunganNo = [];
var sambunganNama = [];
var sambunganAlamat = [];
var sambunganKelompok = [];
var sambunganTip = [];

var markers = [];

var LayerJalurPipa;
var LayerRuasJalan;
var LayerRumahPolyline;

(function() {
  window.onload = function() {
    var mapDiv = document.getElementById('map');
    var latlng = new google.maps.LatLng(-0.15814501846297607,109.4182775878906);
    var options = {
		center: latlng,
		zoom: 14,
	
		disableDoubleClickZoom:true,
		overviewMapControl:true,
		overviewMapControlOptions:{
			opened:true
		}, 
		mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    
    map = new google.maps.Map(mapDiv, options);
	// map.enableKeyDragZoom();  	  

	load_layer_jalan(map);
	load_layer_pipa(map);
	load_layer_rumah(map);
	load_sambungan();
  }
})(); 


function load_layer_pipa(peta){
	LayerJalurPipa = new google.maps.KmlLayer({
		url: 'http://theproject.id/kml/pontianak/layer_kecamatan.kml',
		preserveViewport: true,
		//suppressInfoWindows: true,
		zIndex : 1,
		map: peta		
	});
}
function load_layer_jalan(peta){
	LayerRuasJalan = new google.maps.KmlLayer({
		url: 'http://theproject.id/kml/pontianak/layer_jalan.kml',
		preserveViewport: true,
		//suppressInfoWindows: true,
		zIndex : 2,
		map: peta		
	});
}
function load_layer_rumah(peta){
	LayerRumahPolyline = new google.maps.KmlLayer({
		url: 'http://theproject.id/kml/pontianak/layer_sungai.kml',
		preserveViewport: true,
		suppressInfoWindows: true,
		zIndex : 3,
		map: peta		
	});
}

function load_sambungan(){
	// clear_jalan();
    $.ajax({
        url: "load_sambungan.php",
        dataType: 'json',
        cache: false,
        success: function(msg){
			    for(i=0;i<msg.sambungan.length;i++){
                var point = new google.maps.LatLng(parseFloat(msg.sambungan[i].x),parseFloat(msg.sambungan[i].y));
				
				// alert(msg.sambungan[i].x);
				sambunganId[i] = msg.sambungan[i].id;	
				sambunganKelompok[i] = msg.sambungan[i].kelompok;	

                sambunganMarker[i] = new google.maps.Marker({
                    position: point,
					draggable: false,
					icon:'marker/'+msg.sambungan[i].marker,
					// icon:'img/close.gif',
					visible: false,
					// zIndex:3,
                    map: map
                });	
				
				
				// alert(sambunganMarker[i].getPosition().lat());
				
				
				sambunganTip[i] = new MarkerWithLabel({
					position: new google.maps.LatLng(0,0),
					draggable: false,
					raiseOnDrag: false,
					map: map,
					// labelContent: "<div class='maptip'><b>Nama sambungan : </b>"+msg.sambungan[i].nama_kabupaten+"<br><b>Latitude : </b>"+msg.sambungan[i].x+"<br><b>Longitude : </b>"+msg.sambungan[i].y+"<br><b>Jumlah Kecamatan : </b>"+msg.sambungan[i].kec+"<br><b>Jumlah Desa : </b>"+msg.sambungan[i].desa+"</div>",
					labelContent: 	"<div class='maptip'>"+ 
									"<b>No. Pelanggan : </b>"+msg.sambungan[i].no_pelanggan + "<br>" +
									"<b>Kelompok Pelanggan : </b>"+msg.sambungan[i].kelompok + "<br>" +
									"<b>Nama Pelanggan : </b>"+msg.sambungan[i].nama_pelanggan + "<br>" +
									"<b>Alamat : </b>"+msg.sambungan[i].alamat +
									"</div>",
					labelAnchor: new google.maps.Point(152, 130),
					labelStyle: {opacity: 1.0},
					icon: "img/1x1.png",
					visible: false,
				});				
				showTooltip(sambunganMarker[i],sambunganTip[i]);
				KlikSambungan(sambunganMarker[i],sambunganId[i]);
            }
        }
    });
}



function showTooltip(marker,tooltip){
	google.maps.event.addListener(marker, "mousemove", function(event) {
		tooltip.setPosition(event.latLng);
		tooltip.setVisible(true);
	});
	google.maps.event.addListener(marker, "mouseout", function(event) {
		tooltip.setVisible(false);
	});		
}



function KlikSambungan(m,id){
	google.maps.event.addListener(m, "click", function(event) {
		InfoSambungan(id);
	});
}

function InfoSaluran(id_jalan){
	$('#bg').fadeIn();
	// $("#modal").load('info_saluran.php?id_jalan='+id_jalan);
	$('#modal').fadeIn();
}

function DaftarSaluran(id_jalan){
	$('.modal').html('');
	$('.bg').fadeIn();
	$("#popup_content").load('daftar_saluran.php?id_jalan='+id_jalan);
	$('#popup_content').fadeIn();
}

function jalanHover(jalan){
	google.maps.event.addListener(jalan, "mousemove", function(event) {
		jalan.setOptions({strokeWeight: 5});
	});
	google.maps.event.addListener(jalan, "mouseout", function(event) {
		jalan.setOptions({strokeWeight: 2});
	});		
}






function LoadPeta(id){
    var mapDiv = document.getElementById('popup_map');
    var latlng = new google.maps.LatLng(-0.15814501846297607,109.4182775878906);
    var options = {
		center: latlng,
		zoom: 21,
		mapTypeId: google.maps.MapTypeId.ROADMAP,
	  
		// scrollwheel: false,
		// streetViewControl: false,
		// overviewMapControl: false,
		// scaleControl: false,
		 // panControl: false,
		// zoomControl: false,
		scaleControl: true

    };
	popup_map = new google.maps.Map(mapDiv, options);
	load_layer_jalan(popup_map);
	load_layer_pipa(popup_map);
	load_sambungan_id(id);
}


function load_sambungan_id(id_sambungan){
    $.ajax({
        url: "load_sambungan.php?id_sambungan="+id_sambungan,
        dataType: 'json',
        cache: false,
        success: function(msg){
			// alert(msg.sambungan.length);
            for(i=0;i<msg.sambungan.length;i++){
			// var grs = [];			
			// for(j=0;j<msg.potensi[i].titik.length;j++){			
				// grs.push( new google.maps.LatLng(parseFloat(msg.potensi[i].titik[j].x),parseFloat(msg.potensi[i].titik[j].y)));
            // }
			
			// potensi[i] = new google.maps.Polygon({
				// path:grs,
				// strokeColor: '#000000',
				// strokeOpacity: 0.5,
				// strokeWeight: 1,
				// fillColor: '#'+msg.potensi[i].fill,
				// fillOpacity: 0.35,
				// map: popup_map
			// });
			
			var point = new google.maps.LatLng(parseFloat(msg.sambungan[i].x),parseFloat(msg.sambungan[i].y));	
			// potensi[i] = new google.maps.Marker({
				// position: point,
				// draggable: false,
				// // icon:'marker/'+msg.potensi[i].marker,
				// visible: true,
				// map: popup_map,
			// });	
			
			
			popup_map.setCenter(point);
			popup_map.setZoom(17);
			
			
			sambunganId[i] = msg.sambungan[i].id;	
			sambunganKelompok[i] = msg.sambungan[i].kelompok;	

			sambunganMarker[i] = new google.maps.Marker({
				position: point,
				draggable: false,
				icon:'marker/'+msg.sambungan[i].marker,
				// icon:'img/close.gif',
				// visible: true,
				// zIndex:3,
				map: popup_map
			});	
			
			
			// alert(sambunganMarker[i].getPosition().lat());
			
			
			sambunganTip[i] = new MarkerWithLabel({
				position: new google.maps.LatLng(0,0),
				draggable: false,
				raiseOnDrag: false,
				map: popup_map,
				// labelContent: "<div class='maptip'><b>Nama sambungan : </b>"+msg.sambungan[i].nama_kabupaten+"<br><b>Latitude : </b>"+msg.sambungan[i].x+"<br><b>Longitude : </b>"+msg.sambungan[i].y+"<br><b>Jumlah Kecamatan : </b>"+msg.sambungan[i].kec+"<br><b>Jumlah Desa : </b>"+msg.sambungan[i].desa+"</div>",
				labelContent: 	"<div class='maptip'>"+ 
								"<b>No. Pelanggan : </b>"+msg.sambungan[i].no_pelanggan + "<br>" +
								"<b>Kelompok Pelanggan : </b>"+msg.sambungan[i].kelompok + "<br>" +
								"<b>Nama Pelanggan : </b>"+msg.sambungan[i].nama_pelanggan + "<br>" +
								"<b>Alamat : </b>"+msg.sambungan[i].alamat +
								"</div>",
				labelAnchor: new google.maps.Point(152, 130),
				labelStyle: {opacity: 1.0},
				icon: "img/1x1.png",
				visible: false,
			});				
			showTooltip(sambunganMarker[i],sambunganTip[i]);
				KlikSambungan(sambunganMarker[i],sambunganId[i]);
			
            }
        }
    });
}


function zoom(id_sambungan){
    $.ajax({
        url: "load_sambungan.php?id_sambungan="+id_sambungan,
        dataType: 'json',
        cache: false,
        success: function(msg){
            for(i=0;i<msg.sambungan.length;i++){
			
			var point = new google.maps.LatLng(parseFloat(msg.sambungan[i].x),parseFloat(msg.sambungan[i].y));
			
			
			map.setCenter(point);
			map.setZoom(21);
			
			
			sambunganId[i] = msg.sambungan[i].id;	
			sambunganKelompok[i] = msg.sambungan[i].kelompok;	

			sambunganMarker[i] = new google.maps.Marker({
				position: point,
				draggable: false,
				icon:'marker/'+msg.sambungan[i].marker,
				// icon:'img/close.gif',
				// visible: true,
				// zIndex:3,
				map: map
			});	
			
			sambunganTip[i] = new MarkerWithLabel({
				position: new google.maps.LatLng(0,0),
				draggable: false,
				raiseOnDrag: false,
				map: map,
				labelContent: 	"<div class='maptip'>"+ 
								"<b>No. Pelanggan : </b>"+msg.sambungan[i].no_pelanggan + "<br>" +
								"<b>Kelompok Pelanggan : </b>"+msg.sambungan[i].kelompok + "<br>" +
								"<b>Nama Pelanggan : </b>"+msg.sambungan[i].nama_pelanggan + "<br>" +
								"<b>Alamat : </b>"+msg.sambungan[i].alamat +
								"</div>",
				labelAnchor: new google.maps.Point(152, 130),
				labelStyle: {opacity: 1.0},
				icon: "img/1x1.png",
				visible: false,
			});				
			showTooltip(sambunganMarker[i],sambunganTip[i]);
				KlikSambungan(sambunganMarker[i],sambunganId[i]);
            }
        }
    });
} 

function edit_titik(){
	
	$('.bgmodal').html('');
	$('.bg').fadeIn();
	$('#popup_map').fadeIn();
	
	
	
	var mapDiv = document.getElementById('popup_map');
    var latlng = new google.maps.LatLng(-0.15814501846297607,109.4182775878906);
    var options = {
		center: latlng,
		zoom: 14,
		mapTypeId: google.maps.MapTypeId.ROADMAP,
	  
		// scrollwheel: false,
		streetViewControl: false,
		overviewMapControl: false,
		// scaleControl: false,
		 panControl: false,
		zoomControl: false,
		scaleControl: true

    };
	popup_map = new google.maps.Map(mapDiv, options);
		
	
	var point;
	var x = $("#x").val();
	var y = $("#y").val();
	
	if (x!='' || y!=''){
		
		if (point != null) point.setMap(null);
		point = new google.maps.Marker({
			position: new google.maps.LatLng(x,y),
			draggable: true,
			map: popup_map
		});
	}
	
	
	
	
	google.maps.event.addListener(popup_map, 'click', function(event){
		if (point != null) point.setMap(null);
	    point = new google.maps.Marker({
			position: event.latLng,
			draggable: true,
			map: popup_map
		});
		$("#x").attr("value", event.latLng.lat());
		$("#y").attr("value", event.latLng.lng());
	});
	
	
	google.maps.event.addListener(point, 'drag', function(event) {
		$("#x").attr("value", event.latLng.lat());
		$("#y").attr("value", event.latLng.lng());
	});				
}

function isChecked(checkboxId) {
    var id = '#' + checkboxId;
    return $(id).is(":checked");
}

$(document).ready(function(){
	
	$('#chkLayerJalurPipa').click(function(){
		if (document.getElementById($(this).attr("id")).checked){
			LayerJalurPipa.setMap(map);
		}
		else{
			LayerJalurPipa.setMap(null);
		}		
    });
	
	$('#chkLayerRuasJalan').click(function(){
		if (document.getElementById($(this).attr("id")).checked){
			LayerRuasJalan.setMap(map);
		}
		else{
			LayerRuasJalan.setMap(null);
		}		
    });
	
	$('#chkLayerRumahPolyline').click(function(){
		if (document.getElementById($(this).attr("id")).checked){
			LayerRumahPolyline.setMap(map);
		}
		else{
			LayerRumahPolyline.setMap(null);
		}		
    });
	
	
	
	$('#chkTitikSambungan').click(function(){
		$('.chkTitikSambungan').prop('checked', isChecked('chkTitikSambungan'));
		if (document.getElementById($(this).attr("id")).checked){
			for (i=0; i<sambunganMarker.length; i++) {
				sambunganMarker[i].setVisible(true);
			}
		}
		else{
			for (i=0; i<sambunganMarker.length; i++) {
				sambunganMarker[i].setVisible(false);
			}
		}		
    });
	
	
    $('.chkTitikSambungan').click(function () {
		var TitikSambungan = $(this).val();
		for (i=0; i<sambunganMarker.length; i++) {
			if (sambunganKelompok[i] == TitikSambungan) {
				if (document.getElementById($(this).attr("id")).checked)
					sambunganMarker[i].setVisible(true);
				else
					sambunganMarker[i].setVisible(false);
			}
		}
		
		if ($('.chkTitikSambungan:checked').length>0){
			$('#chkTitikSambungan').prop('checked', true);
		}else{
			$('#chkTitikSambungan').prop('checked', false);
		}
		
    });
	
	
	
	
	
	$('#map_info_close').click(function(){
		$('#map_info').slideUp();	
    });
	
	});










