<head>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <!-- Style dependencies -->
    <link href="https://unpkg.com/normalize.css@^7.0.0" rel="stylesheet" />
    <!-- Blueprint stylesheets -->
    <link href="https://unpkg.com/@blueprintjs/icons@^3.4.0/lib/css/blueprint-icons.css" rel="stylesheet" />
    <link href="https://unpkg.com/@blueprintjs/core@^3.10.0/lib/css/blueprint.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f3f3f3;
        }
    </style>
</head>

<body>
    <!-- Blueprint dependencies -->
    <script src="https://unpkg.com/classnames@^2.2"></script>
    <script src="https://unpkg.com/dom4@^1.8"></script>
    <script src="https://unpkg.com/tslib@^1.9.0"></script>
    <script src="https://unpkg.com/react@^16.2.0/umd/react.production.min.js"></script>
    <script src="https://unpkg.com/react-dom@^16.2.0/umd/react-dom.production.min.js"></script>
    <script src="https://unpkg.com/react-transition-group@^2.2.1/dist/react-transition-group.min.js"></script>
    <script src="https://unpkg.com/popper.js@^1.14.1/dist/umd/popper.js"></script>
    <script src="https://unpkg.com/react-popper@^1.0.0/dist/index.umd.min.js"></script>
    <script src="https://unpkg.com/resize-observer-polyfill@^1.5.0"></script>
    <!-- Blueprint packages (note: icons script must come first) -->
    <script src="https://unpkg.com/@blueprintjs/icons@^3.4.0"></script>
    <script src="https://unpkg.com/@blueprintjs/core@^3.10.0"></script>
    <div>
        <?php
        require '../vendor/autoload.php';
        require_once '../app/init.php';
        $app = new App();
        ?>
    </div>
</body>