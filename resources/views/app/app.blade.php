<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Scripts -->
    <script src="{{ asset('js/app.js?v=0.0.5') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css?v=0.0.5') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link href="{{ asset('css/custom.css?v=0.0.5') }}" rel="stylesheet">

</head>
<body>
    <div id="app">
        <main role="main">
            <router-view></router-view>
            <!-- FOOTER -->
        </main>
    </div>
    <footer class="container-fluid pl-0 pr-0" style="background: rgb(0 0 0 / 10%);">
        <p class="text-center p-2 mb-0">Developed by <a href="http://www.devpanda.net/" target="new"> <span style="color: #007bc3; font-weight: bold;">Dev</span> <span style="color: #39b549; font-weight: bold;">Panda</span></a></p>
    </footer>
</body>
</html>
