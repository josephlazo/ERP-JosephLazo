<%-- 
    Document   : productAdd
    Created on : 22-04-2014, 03:13:11 PM
    Author     : Joseph
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

        <title> ERP | Producto</title>
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Use the correct meta names below for your web application
                 Ref: http://davidbcalhoun.com/2010/viewport-metatag 
                 
        <meta name="HandheldFriendly" content="True">
        <meta name="MobileOptimized" content="320">-->

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <!-- Basic Styles -->
        <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="css/font-awesome.min.css">

        <!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
        <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-production.css">
        <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-skins.css">

        <!-- SmartAdmin RTL Support is under construction
        <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-rtl.css"> -->

        <!-- We recommend you use "your_style.css" to override SmartAdmin
             specific styles this will also ensure you retrain your customization with each SmartAdmin update.
        <link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

        <!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
        <link rel="stylesheet" type="text/css" media="screen" href="css/demo.css">

        <!-- FAVICONS -->
        <link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon">
        <link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon">

        <!-- GOOGLE FONT -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

    </head>
    <body class="">
        <!-- possible classes: minified, fixed-ribbon, fixed-header, fixed-width-->

        <!-- HEADER -->
        <header id="header">
            <div id="logo-group">

                <!-- PLACE YOUR LOGO HERE -->                
                <c:import var="logo" url="/logo.jsp" />
                <c:out value="${logo}" escapeXml="false" />
                <!-- END LOGO PLACEHOLDER -->

                <!-- Note: The activity badge color changes when clicked and resets the number to 0
                Suggestion: You may want to set a flag when this happens to tick off all checked messages / notifications -->
                <span id="activity" class="activity-dropdown"> <i class="fa fa-user"></i> <b class="badge"> 21 </b> </span>

                <!-- AJAX-DROPDOWN : control this dropdown height, look and feel from the LESS variable file -->
                <div class="ajax-dropdown">

                    <!-- the ID links are fetched via AJAX to the ajax container "ajax-notifications" -->
                    <div class="btn-group btn-group-justified" data-toggle="buttons">
                        <label class="btn btn-default">
                            <input type="radio" name="activity" id="ajax/notify/mail.html">
                            Msgs (14) </label>
                        <label class="btn btn-default">
                            <input type="radio" name="activity" id="ajax/notify/notifications.html">
                            notify (3) </label>
                        <label class="btn btn-default">
                            <input type="radio" name="activity" id="ajax/notify/tasks.html">
                            Tasks (4) </label>
                    </div>

                    <!-- notification content -->
                    <div class="ajax-notifications custom-scroll">

                        <div class="alert alert-transparent">
                            <h4>Click a button to show messages here</h4>
                            This blank page message helps protect your privacy, or you can show the first message here automatically.
                        </div>

                        <i class="fa fa-lock fa-4x fa-border"></i>

                    </div>
                    <!-- end notification content -->

                    <!-- footer: refresh area -->
                    <span> Last updated on: 12/12/2013 9:43AM
                        <button type="button" data-loading-text="<i class='fa fa-refresh fa-spin'></i> Loading..." class="btn btn-xs btn-default pull-right">
                            <i class="fa fa-refresh"></i>
                        </button> </span>
                    <!-- end footer -->

                </div>
                <!-- END AJAX-DROPDOWN -->
            </div>

            <!-- projects dropdown -->
            <c:import var="projectsDropdown" url="/projectsDropdown.jsp" />
            <c:out value="${projectsDropdown}" escapeXml="false" />
            <!-- end projects dropdown -->

            <!-- pulled right: nav area -->
            <c:import var="pulledRight" url="/pulledRight.jsp" />
            <c:out value="${pulledRight}" escapeXml="false" />
            <!-- end pulled right: nav area -->

        </header>
        <!-- END HEADER -->

        <!-- Left panel : Navigation area -->
        <!-- Note: This width of the aside area can be adjusted through LESS variables -->
        <c:import var="leftMenu" url="/leftMenu.jsp" />
        <c:out value="${leftMenu}" escapeXml="false" />
        <!-- END NAVIGATION -->

        <!-- MAIN PANEL -->
        <div id="main" role="main">

            <!-- RIBBON -->
            <div id="ribbon">

                <span class="ribbon-button-alignment"> <span id="refresh" class="btn btn-ribbon" data-title="refresh" rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! Esto reiniciará la configuración de widgets." data-html="true"><i class="fa fa-refresh"></i></span> </span>

                <!-- breadcrumb -->
                <ol class="breadcrumb">
                    <li>
                        <a href="ProductMainServlet"><i class="text-primary fa fa-table"></i> DataTable Producto</a>
                    </li>
                    <li>
                        <i class="fa fa-edit"></i> Agregar Producto
                    </li>
                </ol>
                <!-- end breadcrumb -->

                <!-- You can also add more buttons to the
                ribbon for further usability

                Example below:

                <span class="ribbon-button-alignment pull-right">
                <span id="search" class="btn btn-ribbon hidden-xs" data-title="search"><i class="fa-grid"></i> Change Grid</span>
                <span id="add" class="btn btn-ribbon hidden-xs" data-title="add"><i class="fa-plus"></i> Add</span>
                <span id="search" class="btn btn-ribbon" data-title="search"><i class="fa-search"></i> <span class="hidden-mobile">Search</span></span>
                </span> -->

            </div>
            <!-- END RIBBON -->

            <!-- MAIN CONTENT -->
            <div id="content">

                <div class="row">
                    <!-- TITULO MANTENEDOR -->
                    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
                        <h2 class="page-title txt-color-blueDark">
                            <i class="fa fa-table fa-fw"></i> 
                            Mantenedor 
                            <span>
                                <i class="fa fa-barcode fa-fw "></i> 
                                Producto
                            </span>
                        </h2>
                    </div>
                    <div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
                        <ul id="sparks" class="">
                            <li class="sparks-info">
                                <h5> IPC <span class="txt-color-purple"><i class="fa fa-arrow-circle-up" data-rel="bootstrap-tooltip" title="Increased"></i>&nbsp;0,80%</span></h5>
                                <div class="sparkline txt-color-purple hidden-mobile hidden-md hidden-sm">
                                    110,150,300,130,400,240,220,310,220,300, 270, 210
                                </div>
                            </li>
                            <li class="sparks-info">
                                <h5> U.F. <span class="txt-color-blue"><i class="fa fa-usd" data-rel="bootstrap-tooltip"></i> 23.672,60</span></h5>
                                <div class="sparkline txt-color-blue hidden-mobile hidden-md hidden-sm">
                                    1300, 1877, 2500, 2577, 2000, 2100, 3000, 2700, 3631, 2471, 2700, 3631, 2471
                                </div>
                            </li>                            
                            <li class="sparks-info">
                                <h5> Dolar Obs. <span class="txt-color-greenDark"><i class="fa fa-arrow-circle-up" data-rel="bootstrap-tooltip" title="Increased"></i> <i class="fa fa-usd"></i> 548,31</span></h5>
                                <div class="sparkline txt-color-greenDark hidden-mobile hidden-md hidden-sm">
                                    513,501,530,525,510,520,540,545,547,545, 550, 555
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- MENSAJES -->
                <c:import var="formMsg" url="/formMsg.jsp" />
                <c:out value="${formMsg}" escapeXml="false" />              

                <!-- widget grid -->
                <section id="widget-grid" class="">

                    <!-- START ROW -->
                    <div class="row">

                        <!-- NEW COL START -->
                        <article class="col-sm-12 col-md-12 col-lg-6">

                            <!-- Widget ID (each widget will need unique ID)-->
                            <div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-1" data-widget-togglebutton="false" data-widget-colorbutton="false" data-widget-deletebutton="false" data-widget-editbutton="false" data-widget-custombutton="false">

                                <header>
                                    <span class="widget-icon"> <i class="fa fa-edit"></i> </span>
                                    <h2>Agregar nuevo Producto </h2>				

                                </header>

                                <!-- widget div-->
                                <div>

                                    <!-- widget edit box -->
                                    <div class="jarviswidget-editbox">
                                        <!-- This area used as dropdown edit box -->

                                    </div>
                                    <!-- end widget edit box -->

                                    <!-- widget content -->
                                    <div class="widget-body no-padding">

                                        <form action="ProductAddServlet" method="POST" name="formAdd" id="formAdd" class="smart-form" novalidate="novalidate">

                                            <fieldset>
                                                <div class="row">
                                                    <section class="col col-6">                                                        
                                                        <c:if test="${msgErrorProductname == null}">                                                           
                                                            <label class="label">Nombre Producto</label>
                                                            <label class="input"> <i class="icon-prepend fa fa-barcode"></i>
                                                                <input type="text" maxlength="30" name="product" placeholder="Ingrese Nombre del Producto" value="<c:out value="${productName}" />">
                                                                <b class="tooltip tooltip-top-right"><i class="fa fa-warning txt-color-teal"></i> Ingrese Nombre Producto</b>
                                                            </label>
                                                            <div class="note note-error">Este campo es requerido.</div>
                                                        </c:if>
                                                        <c:if test="${msgErrorProductname != null}">
                                                            <label class="label">Nombre Producto</label>
                                                            <label class="input state-error"> <i class="icon-prepend fa  fa-barcode"></i>
                                                                <input type="text" maxlength="30" name="product" placeholder="Ingrese Nombre del Producto" value="<c:out value="${productName}" />">
                                                                <b class="tooltip tooltip-top-right"><i class="fa fa-warning txt-color-teal"></i> Ingrese Nombre Producto</b>                                                                
                                                            </label>
                                                            <div class="note note-error">Este campo es requerido.</div>
                                                        </c:if>
                                                    </section>                                                  
                                                </div>

                                                <div class="row">
                                                    <section class="col col-6">
                                                        <c:if test="${msgErrorCodeProduct == null}">
                                                            <label class="label">Código Producto</label>
                                                            <label class="input"> <i class="icon-prepend fa  fa-barcode"></i>
                                                                <input type="text" maxlength="255" name="codeProduct" placeholder="Ingrese Código del Producto" value="<c:out value="${codeProduct}" />">
                                                                <b class="tooltip tooltip-top-right"><i class="fa fa-warning txt-color-teal"></i> Ingrese el Código Producto</b>
                                                            </label>
                                                            <div class="note note-error">Este campo es requerido.</div>
                                                        </c:if>
                                                        <c:if test="${msgErrorCodeProduct != null}">
                                                            <label class="label">Código Producto</label>
                                                            <label class="input state-error"> <i class="icon-prepend fa  fa-barcode"></i>
                                                                <input type="text" maxlength="255" name="codeProduct" placeholder="Ingrese Código del Producto" value="<c:out value="${codeProduct}" />">
                                                                <b class="tooltip tooltip-top-right"><i class="fa fa-warning txt-color-teal"></i> Ingrese el Código Producto</b>
                                                            </label>
                                                            <div class="note note-error">Este campo es requerido.</div>
                                                        </c:if>
                                                    </section>                                                   
                                                </div>

                                                <div class="row">                                                                                                       
                                                    <section class="col col-6">
                                                        <c:if test="${msgErrorCategory == null}">  
                                                            <div>
                                                                <label class="label col col-4">Categoría Producto</label>
                                                            </div> 
                                                            <p>&nbsp;</p>
                                                            <p>&nbsp;</p>   
                                                            <label class="select">
                                                                <!-- Llenar ComboBox desde base de datos! -->    
                                                                <select class="form-control" name="productCategory">
                                                                    <option value="1" <c:if test="${userType == 1}">selected</c:if>>Categoría 1</option>
                                                                    <option value="2" <c:if test="${userType == 2}">selected</c:if>>Categoría 2</option>
                                                                    <option value="3" <c:if test="${userType == 3}">selected</c:if>>Categoría 3</option>
                                                                    <option value="4" <c:if test="${userType == 4}">selected</c:if>>Categoría 4</option>
                                                                    </select> <i></i> 
                                                                </label>   
                                                        </c:if>
                                                        <c:if test="${msgErrorCategory != null}">
                                                            <div>
                                                                <label class="label col col-4">Categoría Producto</label>
                                                            </div>                                                                                                                
                                                            <p>&nbsp;</p>
                                                            <p>&nbsp;</p>
                                                            <label class="select">
                                                                <!-- Llenar ComboBox desde base de datos! -->    
                                                                <select class="form-control" name="productCategory">
                                                                    <option value="1" <c:if test="${userType == 1}">selected</c:if>>Categoría 1</option>
                                                                    <option value="2" <c:if test="${userType == 2}">selected</c:if>>Categoría 2</option>
                                                                    <option value="3" <c:if test="${userType == 3}">selected</c:if>>Categoría 3</option>
                                                                    <option value="4" <c:if test="${userType == 4}">selected</c:if>>Categoría 4</option>
                                                                    </select> <i></i> 
                                                                </label>  
                                                        </c:if>    
                                                    </section>                                                    
                                                </div>
                                                <div class="row">
                                                    <section class="col col-6">
                                                        <c:if test="${msgErrorDescProduct == null}">
                                                            <label class="label">Descripción</label>
                                                            <label class="input">
                                                                <textarea maxlength="255" name="description" placeholder="Ingrese Descripción" rows="10" cols="30" value="<c:out value="${DescProduct}" />"></textarea>
                                                                <b class="tooltip tooltip-top-right"><i class="fa fa-warning txt-color-teal"></i> Ingrese la Descripción</b>
                                                            </label>
                                                            <div class="note note-error">Este campo es requerido.</div>
                                                        </c:if>
                                                        <c:if test="${msgErrorDescProduct != null}">
                                                            <label class="label">Descripción</label>
                                                            <label class="input state-error"> 
                                                                <input type="text" maxlength="255" name="description" placeholder="Ingrese Descripción" value="<c:out value="${DescProduct}" />">
                                                                <b class="tooltip tooltip-top-right"><i class="fa fa-warning txt-color-teal"></i> Ingrese la Descripción </b>
                                                            </label>
                                                            <div class="note note-error">Este campo es requerido.</div>
                                                        </c:if>
                                                    </section>  
                                                </div>
                                                <div class="row">
                                                    <section class="col col-6">
                                                        <c:if test="${msgErrorTypeProduct == null}">
                                                            <label class="label">Tipo Producto</label>
                                                            <label class="input"> <i class="icon-prepend fa  fa-coffee"></i>
                                                                <input type="text" maxlength="255" name="TypeProduct" placeholder="Ingrese Tipo Producto" value="<c:out value="${TypeProduct}" />">
                                                                <b class="tooltip tooltip-top-right"><i class="fa fa-warning txt-color-teal"></i> Ingrese el Tipo Producto</b>
                                                            </label>
                                                            <div class="note note-error">Este campo es requerido.</div>
                                                        </c:if>
                                                        <c:if test="${msgErrorTypeProduct != null}">
                                                            <label class="label">Tipo Producto</label>
                                                            <label class="input state-error"> <i class="icon-prepend fa  fa-coffee"></i> 
                                                                <input type="text" maxlength="255" name="TypeProduct" placeholder="Ingrese Tipo Producto" value="<c:out value="${TypeProduct}" />">
                                                                <b class="tooltip tooltip-top-right"><i class="fa fa-warning txt-color-teal"></i> Ingrese el Tipo Producto</b>
                                                            </label>
                                                            <div class="note note-error">Este campo es requerido.</div>
                                                        </c:if>
                                                    </section>  
                                                </div>
                                                <div class="row">
                                                    <section class="col col-6">
                                                        <c:if test="${msgErrorWeightProduct == null}">
                                                            <label class="label">Peso Producto</label>
                                                            <label class="input"><i class="icon-prepend fa fa-th-large"></i>  
                                                                <input type="text" maxlength="255" name="WeightProduct" placeholder="Ingrese Peso Producto" value="<c:out value="${WeightProduct}" />">
                                                                <b class="tooltip tooltip-top-right"><i class="fa fa-warning txt-color-teal"></i> Ingrese Peso</b>
                                                            </label>
                                                            <div class="note note-error">Este campo es requerido.</div>
                                                        </c:if>
                                                        <c:if test="${msgErrorWeightProduct != null}">
                                                            <label class="label">Peso Producto</label>
                                                            <label class="input state-error"><i class="icon-prepend fa fa-th-large"></i>  
                                                                <input type="text" maxlength="255" name="WeightProduct" placeholder="Ingrese Peso Producto" value="<c:out value="${WeightProduct}" />">
                                                                <b class="tooltip tooltip-top-right"><i class="fa fa-warning txt-color-teal"></i> Ingrese Peso</b>
                                                            </label>
                                                            <div class="note note-error">Este campo es requerido.</div>
                                                        </c:if>
                                                    </section>                       
                                                </div>
                                                <div>
                                                    <section class="col col-6">

                                                        <div>
                                                            <label class="label col col-4">Marca Producto</label>
                                                        </div>                                                                                                                
                                                        <p>&nbsp;</p>
                                                        <p>&nbsp;</p>
                                                        <label class="select">
                                                            <!-- Llenar ComboBox desde base de datos! -->    
                                                            <select class="form-control" name="userType">
                                                                <option value="1" <c:if test="${userType == 1}">selected</c:if>>Coca Cola</option>
                                                                <option value="2" <c:if test="${userType == 2}">selected</c:if>>CCU</option>
                                                                <option value="3" <c:if test="${userType == 3}">selected</c:if>>DVD</option>
                                                                <option value="4" <c:if test="${userType == 4}">selected</c:if>>Riot</option>
                                                                </select> <i></i> 
                                                            </label>   
                                                        </section>     
                                                    </div>
                                                </fieldset>

                                                <fieldset>
                                                    <label>Imagen</label>
                                                    <p>&nbsp;</p>
                                                <c:if test="${msgErrorImage == null }" >
                                                    <div class="row">                                                    
                                                        <section class="col col-6">                                                      
                                                            <label class="input"> <i class="icon-append fa fa-camera"></i>
                                                                <input type="file"  name="imageProdu" placeholder="Ingrese imagen" id="imageProdu" size="20"/>
                                                                <b class="tooltip tooltip-top-right"><i class="fa fa-warning txt-color-teal"></i> Seleccione Imagen </b> 
                                                            </label>
                                                            <div class="note note-error">Este campo es requerido.</div>                                                                
                                                        </section>
                                                    </div>                                                 
                                                </c:if>
                                                <c:if test="${msgErrorImage != null }" >
                                                    <div class="row">                                                    
                                                        <section class="col col-6">
                                                            <label class="input state-error">
                                                                <label class="input"> <i class="icon-append fa fa-camera"></i>
                                                                    <input type="file"  name="imageProdu" placeholder="Ingrese Imagen" id="imageProdu">
                                                                    <b class="tooltip tooltip-top-right"><i class="fa fa-warning txt-color-teal"></i> Seleccione Imagen </b> 
                                                                </label>
                                                                <div class="note note-error">Este campo es requerido.</div>                                                                    
                                                            </label>
                                                        </section>
                                                    </div>
                                                </c:if>
                                            </fieldset>                                        

                                            <footer>
                                                <input type="hidden" name="add" value="ok"/>
                                                <button name="btnAdd" class="btn btn-primary" type="submit">
                                                    <strong><font size="1">AGREGAR</font></strong>
                                                </button>
                                            </footer>
                                        </form>

                                    </div>
                                    <!-- end widget content -->

                                </div>
                                <!-- end widget div -->

                            </div>
                            <!-- end widget -->                         

                        </article>
                        <!-- END COL -->                       		

                    </div>
                    <!-- END ROW -->

                </section>
                <!-- end widget grid -->

            </div>
            <!-- END MAIN CONTENT -->

        </div>
        <!-- END MAIN PANEL -->

        <!-- SHORTCUT AREA : With large tiles (activated via clicking user name tag)
        Note: These tiles are completely responsive,
        you can add as many as you like
        -->
        <c:import var="shortcut" url="/shortcut.jsp" />
        <c:out value="${shortcut}" escapeXml="false" />
        <!-- END SHORTCUT AREA -->

        <!--================================================== -->

        <!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
        <script data-pace-options='{ "restartOnRequestAfter": true }' src="js/plugin/pace/pace.min.js"></script>

        <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script>
            if (!window.jQuery) {
                document.write('<script src="js/libs/jquery-2.0.2.min.js"><\/script>');
            }
        </script>

        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
        <script>
            if (!window.jQuery.ui) {
                document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
            }
        </script>

        <!-- JS TOUCH : include this plugin for mobile drag / drop touch events
        <script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

        <!-- BOOTSTRAP JS -->
        <script src="js/bootstrap/bootstrap.min.js"></script>

        <!-- CUSTOM NOTIFICATION -->
        <script src="js/notification/SmartNotification.min.js"></script>

        <!-- JARVIS WIDGETS -->
        <script src="js/smartwidgets/jarvis.widget.min.js"></script>

        <!-- EASY PIE CHARTS -->
        <script src="js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

        <!-- SPARKLINES -->
        <script src="js/plugin/sparkline/jquery.sparkline.min.js"></script>

        <!-- JQUERY VALIDATE -->
        <script src="js/plugin/jquery-validate/jquery.validate.min.js"></script>

        <!-- JQUERY MASKED INPUT -->
        <script src="js/plugin/masked-input/jquery.maskedinput.min.js"></script>

        <!-- JQUERY SELECT2 INPUT -->
        <script src="js/plugin/select2/select2.min.js"></script>

        <!-- JQUERY UI + Bootstrap Slider -->
        <script src="js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

        <!-- browser msie issue fix -->
        <script src="js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

        <!-- FastClick: For mobile devices -->
        <script src="js/plugin/fastclick/fastclick.js"></script>

        <!--[if IE 7]>

        <h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

        <![endif]-->      

        <!-- MAIN APP JS FILE -->
        <script src="js/app.js"></script>

        <!-- PAGE RELATED PLUGIN(S) -->
        <script src="js/plugin/jquery-form/jquery-form.min.js"></script>

        <!-- disabledButton -->
        <script src="js/disabledButton.js"></script>

        <script type="text/javascript">

            // DO NOT REMOVE : GLOBAL FUNCTIONS!

            $(document).ready(function() {

                pageSetUp();

                var $checkoutForm = $('#formAdd').validate({
                    // Rules for form validation
                    rules: {
                        username: {
                            required: true
                        },
                        email: {
                            required: true,
                            email: true
                        },
                        pwd1: {
                            required: true,
                            minlength: 6,
                            maxlength: 20
                        },
                        pwd2: {
                            required: true,
                            minlength: 6,
                            maxlength: 20,
                            equalTo: '#pwd1'
                        }
                    },
                    // Messages for form validation
                    messages: {
                        username: {
                            required: 'Por favor ingrese username'
                        },
                        email: {
                            required: 'Por favor ingrese email',
                            email: 'Por favor ingrese un email VÁLIDO'
                        },
                        pwd1: {
                            required: 'Por favor ingrese contraseña'
                        },
                        pwd2: {
                            required: 'Por favor ingrese contraseña una vez más',
                            equalTo: 'Por favor ingrese la misma contraseña de arriba'
                        }
                    },
                    // Do not change code below
                    errorPlacement: function(error, element) {
                        error.insertAfter(element.parent());
                    }
                });

                // Mensajes emergentes
            <c:if test="${msgOk != null}">
                $("#correcto").ready(function(e) {
                    $.smallBox({
                        title: "Correcto!",
                        content: "<i class='glyphicon glyphicon-floppy-disk'></i> <i> Registro guardado...</i>",
                        color: "#659265",
                        iconSmall: "fa fa-check fa-2x fadeInRight animated",
                        timeout: 5000
                    });
                    e.preventDefault();
                });
            </c:if>

            <c:if test="${msgList != null}">
                $("#errores").ready(function(e) {
                    $.smallBox({
                        title: "Error!",
                        content: "<i class='glyphicon glyphicon-floppy-remove'></i> <i>No se pudo guardar el registro...</i>",
                        color: "#C46A69",
                        iconSmall: "fa fa-times fa-2x fadeInRight animated",
                        timeout: 5000
                    });
                    e.preventDefault();
                });
            </c:if>

                // START AND FINISH DATE
                $('#startdate').datepicker({
                    dateFormat: 'dd.mm.yy',
                    prevText: '<i class="fa fa-chevron-left"></i>',
                    nextText: '<i class="fa fa-chevron-right"></i>',
                    onSelect: function(selectedDate) {
                        $('#finishdate').datepicker('option', 'minDate', selectedDate);
                    }
                });

                $('#finishdate').datepicker({
                    dateFormat: 'dd.mm.yy',
                    prevText: '<i class="fa fa-chevron-left"></i>',
                    nextText: '<i class="fa fa-chevron-right"></i>',
                    onSelect: function(selectedDate) {
                        $('#startdate').datepicker('option', 'maxDate', selectedDate);
                    }
                });



            });

        </script>

        <!-- Your GOOGLE ANALYTICS CODE Below -->
        <script type="text/javascript">
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
            _gaq.push(['_trackPageview']);

            (function() {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();

        </script>               

    </body>

</html>