<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="partials/head-admin.jsp"></jsp:include>
</head>

<body>
<jsp:include page="partials/nav-admin.jsp"></jsp:include>

    <div class="container-fluid">
        <div class="row">

            <nav id="sidebar" class="px-3 col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                <div class="position-sticky pt-md-5">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="admin.html">
                                <i class="fas fa-home"></i>
                                <span class="ml-2">Inicio</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="admin-usuarios.html">
                                <i class="fas fa-users"></i>
                                <span class="ml-2">Usuarios</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="admin-atracciones.html">
                                <i class="fas fa-mountain"></i>
                                <span class="ml-2">Atracciones</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="admin-promociones.html">
                                <i class="fas fa-route"></i>
                                <span class="ml-2">Promociones</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="admin-tipos.html">
                                <i class="fas fa-shapes"></i>
                                <span class="ml-2">Tipos</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>

            <main class="col-md-9 ml-sm-auto col-lg-10 px-md-4 py-4 text-center">
                <h1 class="h2">Dashboard</h1>
                <div class="row my-4 justify-content-center">
                    <div class="col-12 col-md-6 col-lg-3 mb-4 mb-lg-0 py-2">
                        <div class="card">
                            <h5 class="card-header"><i class="fas fa-users"></i> Usuarios</h5>
                            <div class="card-body">
                                <h5 class="card-title">345k</h5>
                                <p class="card-text">Feb 1 - Apr 1, United States</p>
                                <p class="card-text text-success">18.2% increase since last month</p>
                                <button class="btn btn-primary float-right" href="admin-usuarios.html">Ver <i
                                        class="fas fa-chevron-right"></i></button>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 mb-4 mb-lg-0 col-lg-3 py-2">
                        <div class="card">
                            <h5 class="card-header"><i class="fas fa-route"></i> Promociones</h5>
                            <div class="card-body">
                                <h5 class="card-title">43</h5>
                                <p class="card-text">Feb 1 - Apr 1, United States</p>
                                <p class="card-text text-danger">2.6% decrease since last month</p>
                                <button class="btn btn-primary float-right">Ver <i
                                        class="fas fa-chevron-right"></i></button>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 mb-4 mb-lg-0 col-lg-3 py-2">
                        <div class="card">
                            <h5 class="card-header"><i class="fas fa-mountain"></i> Atracciones</h5>
                            <div class="card-body">
                                <h5 class="card-title">64k</h5>
                                <p class="card-text">Feb 1 - Apr 1, United States</p>
                                <p class="card-text text-success">2.5% increase since last month</p>
                                <button class="btn btn-primary float-right">Ver <i
                                        class="fas fa-chevron-right"></i></button>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 mb-4 mb-lg-0 col-lg-3 py-2">
                        <div class="card">
                            <h5 class="card-header"><i class="fas fa-mountain"></i> Tipos</h5>
                            <div class="card-body">
                                <h5 class="card-title">64k</h5>
                                <p class="card-text">Feb 1 - Apr 1, United States</p>
                                <p class="card-text text-success">2.5% increase since last month</p>
                                <button class="btn btn-primary float-right">Ver <i
                                        class="fas fa-chevron-right"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        </main>
    </div>
    </div>

    <footer class="float-right px-5 py-5">
        <span>Copyright © 2021 <a href="#">FreakisTeam</a></span>
    </footer>

</body>

</html>