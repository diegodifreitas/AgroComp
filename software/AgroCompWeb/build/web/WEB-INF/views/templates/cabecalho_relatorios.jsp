<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>s
    <ul id="relatoriomain" class="dropdown-content">
        <li><a href="<c:url value="/usuario/pdf"/>" target="_blank">Clientes</a></li>
        <li class="divider"></li>
        <li><a href="<c:url value="/anuncio/pdf"/>" target="_blank">An�ncios</a></li>
        <li class="divider"></li>
        <li><a href="<c:url value="/reporte/pdf"/>" target="_blank">Reportes</a></li>

    </ul>
    <nav>
        <div class="nav-wrapper light-blue darken-4">
            <div class="container">
                <div class="row">
                    <a href="<c:url value="/home"/>" class="brand-logo">
                        <img src="<c:url value="/resources/img/Logo_AgroComp.png"/>"/> 
                    </a>
                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                    <ul class="right hide-on-med-and-down">
                        <li><a href="<c:url value="/home"/>">In�cio</a></li>
                        <li><a href="<c:url value="/classificados"/>">Classificados</a></li>                        
                        <li>
                            <a class="dropdown-button" href="#!" data-activates="relatoriomain">Relat�rios<i class="material-icons right">arrow_drop_down</i></a>
                        </li>
                        <li><a href="<c:url value="/forum"/>">F�rum</a></li>
                        <li><a href="<c:url value="/sobre"/>">Sobre</a></li>
                        <li><a href="<c:url value="/logout"/>">Logout</a></li>
                    </ul>
                    <ul class="side-nav" id="mobile-demo">
                        <li><a href="#" class="active">In�cio</a></li>
                        <li><a href="/agrocomp/classificados">Classificados</a></li>
                        <li>
                            <a class="dropdown-button" href="<c:url value="#!"/>" data-activates="relatorio">Relat�rios<i class="material-icons right">arrow_drop_down</i></a>
                        </li>
                        <li><a href="#">F�rum</a></li>
                        <li><a href="/agrocomp/sobre">Sobre</a></li>
                        <li><a href="<c:url value="/logout"/>">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>