<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<!--Creamos una Variable que reciba un parámetro desde el procesador-->
	<!--la propiedad "name" establece el nombre de la variable-->
	<!--la propiedad "select" establece  el origen del dato de la variable-->
	<xsl:param name="TipoMueble" select="TipoMueble"></xsl:param>


	<xsl:template match="@* | node()">

	<html lang="en"/>
		
<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
	<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css" rel="stylesheet"/>
	<head>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css"/>
  <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
</head>

	
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="images/favicon.png" type=""/>
	

  <title>ASV Muebles</title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="css/sweetalert2.min" />

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
  <!-- nice select  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" />
  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
	
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
	<link href="css/responsive.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Incluir DataTables CSS y JS -->
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
	 <script src="js/carrito.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


    
</head>

<body>

  <div class="hero_area">
    <div class="bg-box">
      <img src="images/hero-muebles_M.jpg" alt="" />
    </div>
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <span>
              ASV Muebles
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  mx-auto ">
	
            </ul>
            <xsl:for-each select="Opciones/Opcion">
						<xsl:choose>
							<xsl:when test="$TipoMueble =@Id">
								<a class="nav-link scrollto active" href="{@Url}"></a>
							</xsl:when>
							<xsl:otherwise>
								<a class="nav-link scrollto" href="{@Url}">
									<xsl:value-of select="@Texto"/>
								</a>
							</xsl:otherwise>
						</xsl:choose>
				</xsl:for-each>
          </div>
        </nav>
	  
      </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class="slider_section ">
		
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Somos la mejor opción
                    </h1>
                    <p>
                     Es una compañía que entiende a sus clientes y está consciente de lo valioso que es su hogar; por ello ofrece estilos y opciones de producto de donde escoger en un ambiente cálido y familiar.
					  Proporcionando las mejores opciones de pago, planes de crédito y apartado, lo que asegura que el cliente se lleve un buen producto sin afectar su presupuesto. Comprar en Muebles ASV es fácil y cómodo con sus salas de exhibición ordenadas y decorada como si el cliente estuviese en casa.  </p>
                    <div class="btn-box">
                      <a href="" class="btn1">
                        Order Now
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Somos la mejor opción
                    </h1>
                    <p>
                      Los años de valiosa experiencia comercial en Muebles Dico ha construido una sólida reputación, que permite ofrecer a sus clientes productos de alta calidad, servicios eficientes, y un personal ampliamente experimentado que se integra por más de 1,500 colaboradores.
 </p>
                    <div class="btn-box">
                      <a href="" class="btn1">
                        Order Now
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Fast Food Restaurant
                    </h1>
                    <p>
                      Doloremque, itaque aperiam facilis rerum, commodi, temporibus sapiente ad mollitia laborum quam quisquam esse error unde. Tempora ex doloremque, labore, sunt repellat dolore, iste magni quos nihil ducimus libero ipsam.
                    </p>
                    <div class="btn-box">
                      <a href="" class="btn1">
                        Order Now
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <ol class="carousel-indicators">
            <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
            <li data-target="#customCarousel1" data-slide-to="1"></li>
            <li data-target="#customCarousel1" data-slide-to="2"></li>
          </ol>
        </div>
      </div>

    </section>
	  
  		
    <!-- end slider section -->
  </div>

	<xsl:choose>
				<xsl:when test="$TipoMueble=0">
					<xsl:call-template name="Home"></xsl:call-template>
				</xsl:when>
				<xsl:when test="$TipoMueble=1">
					<xsl:call-template name="Categorias"></xsl:call-template>

				</xsl:when>
				<xsl:when test="$TipoMueble=2">
					<xsl:call-template name="Contacto"></xsl:call-template>
				</xsl:when>
				
			<xsl:when test="$TipoMueble=3">
					<xsl:call-template name="PlayRoom"></xsl:call-template>
				</xsl:when>
				<xsl:otherwise>
					<xsl:call-template name="Home">
					</xsl:call-template>
				</xsl:otherwise>


			</xsl:choose>
  <!-- offer section -->


  <!-- end offer section -->

  <!-- food section -->

  

  <!-- end food section -->

  <!-- about section -->

  

  <!-- end about section -->

  <!-- book section -->

  <!-- end book section -->

  <!-- client section -->



  <!-- end client section -->



  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- popper js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
  </script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- owl slider -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <!-- isotope js -->
  <script src="https://unpkg.com/isotope-layout@3.0.4/dist/isotope.pkgd.min.js"></script>
  <!-- nice select -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>
  <!-- Google Map -->
  	<!-- Google Fonts -->
			<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"/>
  <!-- End Google Map -->

</body>

		
		
	</xsl:template>

	
<xsl:template name="Home">
	 

  <!-- end offer section -->
</xsl:template>

	<xsl:template name="Categorias">

	<section class="food_section layout_padding-bottom">
     <section class="food_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Our Menu
        </h2>
      </div>

		
			
				 <ul class="filters_menu">
        <li class="active" data-filter="*">All</li>
       <xsl:for-each select="Categorias/Categoria">
								<li data-filter=".{@Nombre}">
									<xsl:value-of select="@Nombre"/>
								</li>
							</xsl:for-each>
      </ul>
      	
        <div class="filters-content">
        <div class="row grid">
          <!-- Loop through each furniture item -->
          <xsl:for-each select="Categorias/Categoria/Mueble">
            <div class="col-sm-6 col-lg-4 all {../@Nombre}">
              <div class="box">
                <div>
                  <div class="img-box">
                    <img src="{Imagen}" alt=""/>
                  </div>
                  <div class="detail-box">
                    <a href="#">
                      <!-- Display the name of the item -->
                      <xsl:value-of select="@Nombre"/>
                    </a>

                    <div class="caracteristicas">
                      <!-- Display the item's color -->
                      <xsl:value-of select="Color"/>
                    </div>
                    <br/>
                    <span>
                      <!-- Display the item's dimensions -->
                      <xsl:value-of select="Dimensiones"/>
                    </span>
                    <br/>
                    <span>
                      <!-- Display the item's price -->
                      <xsl:value-of select="Precio"/>
                    </span>
                    <br/>

                    <!-- Add to Cart Button -->
                    <button class="btn btn-primary add-to-cart" 
                            onclick="addToCart('{@Nombre}', '{Precio}')">
                      Agregar al carrito
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </xsl:for-each>
        </div>
      </div>

      <!-- Cart Section -->
      <div class="cart-section">
        <h3>Carrito de compras</h3>
        <!-- Bootstrap table for the cart -->
        <table class="table table-striped" id="cart-table">
          <thead>
            <tr>
              <th scope="col">Nombre</th>
              <th scope="col">Precio</th>
              <th scope="col">Acción</th>
            </tr>
          </thead>
          <tbody></tbody>
        </table>

        <!-- Display total price -->
        <h4>Total: $<span id="total-price">0.00</span></h4>
      </div>
    </div>
  </section>
   
  </section>
  

		<!-- Add JavaScript to manage the cart -->
		<script>

		</script>
	</xsl:template>

	
<xsl:template name="Contacto">
			<!--API de Google-->
		<script>
			<![CDATA[
			(g=>{var h,a,k,p="The Google Maps JavaScript API",c="google",l="importLibrary",q="__ib__",m=document,b=window;b=b[c]||(b[c]={});var d=b.maps||(b.maps={}),r=new Set,e=new URLSearchParams,u=()=>h||(h=new Promise(async(f,n)=>{await (a=m.createElement("script"));e.set("libraries",[...r]+"");for(k in g)e.set(k.replace(/[A-Z]/g,t=>"_"+t[0].toLowerCase()),g[k]);e.set("callback",c+".maps."+q);a.src=`https://maps.${c}apis.com/maps/api/js?`+e;d[q]=f;a.onerror=()=>h=n(Error(p+" could not load."));a.nonce=m.querySelector("script[nonce]")?.nonce||"";m.head.append(a)}));d[l]?console.warn(p+" only loads once. Ignoring:",g):d[l]=(f,...n)=>r.add(f)&&u().then(()=>d[l](f,...n))})({
			key: "AIzaSyCWeeateTaYGqsHhNcmoDfT7Us-vLDZVPs",
			// Add other bootstrap parameters as needed, using camel case.
			// Add other bootstrap parameters as needed, using camel case.
			// Use the 'v' parameter to indicate the version to load (alpha, beta, weekly, etc.)
			});]]>
		</script>

		<script src="js/Maps.js" type="text/javascript"></script>

		<section id="contact" class="contact">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>Contact</h2>
					<p>Contact Us</p>
				</div>
			</div>

			<div data-aos="fade-up">
				
				<style>
					#map {
					border:0;
					width: 100%;
					height: 350px;
					}
				</style>

				<div id ="google-map">
					<div id="map"></div>
				</div>

				<text id="direccion">estes una etiqueta de texto</text>
				<div class="col-lg- rgin-bton-30" id="street"></div>
			</div>
<script>
							$(document).ready(function(){
							

							initMap()
							getGeo()
							});

						

						</script>
			
		</section>

	<!-- footer section -->
	<footer class="footer_section">
		<div class="container">
			<div class="row">
				<div class="col-md-4 footer-col">
					<div class="footer_contact">
						<h4>
						Contacto
						</h4>
						<div class="contact_link_box">
							<a href="">
								<i class="fa fa-map-marker" aria-hidden="true"></i>
								<span>
									<xsl:value-of select="Datos/Direccion"/>
								</span>
							</a>
							<a href="">
								<i class="fa fa-phone" aria-hidden="true"></i>
								<span>
									
										<xsl:value-of select="Datos/Telefono"/>
								
								</span>
							</a>
							<a href="">
								<i class="fa fa-envelope" aria-hidden="true"></i>
								<span>
									demo@gmail.com
								</span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 footer-col">
					<div class="footer_detail">
						<a href="" class="footer-logo">
							ASV Muebles
						</a>
						<p>
							Necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with
						</p>
						<div class="footer_social">
							<a href="">
								<i class="fa fa-facebook" aria-hidden="true"></i>
							</a>
							<a href="">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</a>
							<a href="">
								<i class="fa fa-linkedin" aria-hidden="true"></i>
							</a>
							<a href="">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</a>
							<a href="">
								<i class="fa fa-pinterest" aria-hidden="true"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4 footer-col">
					<h4>
						Horarios
					</h4>
					<p>
						<xsl:for-each select="Datos/Horarios/Horario">
							<p>
								<xsl:value-of select="."/>
							</p>
						</xsl:for-each>
					</p>
					
				</div>
			</div>
			<div class="footer-info">
				<p>
					<span id="displayYear"></span> All Rights Reserved By
					<a href="https://html.design/">Free Html Templates</a><br/><br/>
					<span id="displayYear"></span> Distributed By
					<a href="https://themewagon.com/" target="_blank">ThemeWagon</a>
				</p>
			</div>
		</div>
	</footer>
	<!-- footer section -->
		<!-- End Contact Section -->

</xsl:template>
	

	

<xsl:template name="PlayRoom">
    <div class="container">
        <!--Audio-->
        <section class="tm-section-row p-5">
            <br></br>
            <br></br>
            <h2>Audio</h2>
            <div id="Audio" style="width:100%"></div>
            <img src="assets/m.jpg" width="100%"></img>
            <audio controls="true" style="width:100%" autoplay="autoplay">
                <source src="assets/REM.mp3"></source>
            </audio>
        </section>

        <!-- Video Section -->
        <section class="tm-section-row p-5">
            <h2>Video</h2>
            <div id="Video" style="width:100%">
                <video controls="true" width="100%" poster="assets/img/light.jpg">
                    <source src="assets/plan.mp4"></source>
                </video>
            </div>
        </section>

        <!-- Juego Tetris -->
       
    </div>

    <!-- JavaScript para Tetris -->
    <style>
        .container {
            margin-top: 50px;
            text-align: center;
        }

        .shape {
            width: 100px;
            height: 100px;
            margin: 10px;
            display: inline-block;
            cursor: grab;
        }

        .circle {
            background-color: lightblue;
            border-radius: 50%;
        }

        .square {
            background-color: lightgreen;
        }

        .triangle {
            width: 0;
            height: 0;
            border-left: 50px solid transparent;
            border-right: 50px solid transparent;
            border-bottom: 100px solid orange;
        }

        .drop-area {
            width: 120px;
            height: 120px;
            margin: 10px;
            display: inline-block;
            border: 2px dashed #aaa;
            text-align: center;
            line-height: 120px;
        }

        .success {
            border: 2px solid green;
        }
    </style>
   <div class="container">
        <h1>Juego de Drag and Drop - Figuras</h1>
        <div id="shapes">
            <div class="shape circle" draggable="true" id="circle"></div>
            <div class="shape square" draggable="true" id="square"></div>
            <div class="shape triangle" draggable="true" id="triangle"></div>
        </div>

        <div id="drop-areas">
            <div class="drop-area" data-shape="circle">Círculo</div>
            <div class="drop-area" data-shape="square">Cuadrado</div>
            <div class="drop-area" data-shape="triangle">Triángulo</div>
        </div>

       <div id="result" class="result-message"></div>
    
    <!-- Botón de reinicio -->
    <button id="reset" class="btn btn-warning mt-4">Reiniciar</button>

    </div>

	<script>
	const shapes = document.querySelectorAll('.shape');
const dropAreas = document.querySelectorAll('.drop-area');
let correctDrops = 0;

// Manejar el evento dragstart
shapes.forEach(shape => {
    shape.addEventListener('dragstart', dragStart);
});

function dragStart(event) {
    event.dataTransfer.setData('text', event.target.id);
}

// Permitir el drop en las áreas
dropAreas.forEach(area => {
    area.addEventListener('dragover', allowDrop);
    area.addEventListener('drop', dropShape);
});

function allowDrop(event) {
    event.preventDefault();
}

// Manejar el evento drop y verificar si la forma es correcta
function dropShape(event) {
    event.preventDefault();
    const shapeId = event.dataTransfer.getData('text');
    const shapeElement = document.getElementById(shapeId);
    const targetShape = event.target.getAttribute('data-shape');

    if (shapeId === targetShape) {
        event.target.classList.add('success');
        event.target.appendChild(shapeElement);
        correctDrops++;

        if (correctDrops === 3) {
            // Usar SweetAlert2 para mostrar que ha ganado
            Swal.fire({
                title: '¡Felicitaciones!',
                text: '¡Has ganado!',
                icon: 'success',
                confirmButtonText: 'OK'
            });
        }
    } else {
        // Usar SweetAlert2 para mostrar un error
        Swal.fire({
            title: 'Error',
            text: 'Forma incorrecta, inténtalo de nuevo.',
            icon: 'error',
            confirmButtonText: 'OK'
        });
    }
}
// Función para reiniciar el juego
function resetGame() {
    // Restaurar las figuras a su posición original
    const shapesContainer = document.getElementById('shapes');
    shapes.forEach(shape => {
        shapesContainer.appendChild(shape);
    });

    // Quitar las clases de éxito de las áreas de destino
    dropAreas.forEach(area => {
        area.classList.remove('success');
    });

    // Reiniciar el contador de correctDrops
    correctDrops = 0;

    // Limpiar el mensaje de resultado
    document.getElementById('result').innerText = '';
}

// Añadir evento al botón de reinicio
document.getElementById('reset').addEventListener('click', resetGame);
	
	</script>
</xsl:template>



</xsl:stylesheet>
