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

        div>.netwatchMenu {
            display: none;
            position: absolute;
            right: 20px;
            top: 40px;

        }

        div:hover>.netwatchMenu {
            display: initial;
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
    <!-- player -->
    <link href="https://vjs.zencdn.net/7.10.2/video-js.css" rel="stylesheet" />
    <script src="https://vjs.zencdn.net/7.10.2/video.min.js"></script>
    <!-- If you'd like to support IE8 (for Video.js versions prior to v7) -->
    <!-- <script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script> -->
    <div>
        <?php
        require '../vendor/autoload.php';
        //load the app initialzer 
        require_once '../app/init.php';
        //init a new instance of the app class which powers netwatch app
        $app = new App();
        ?>
    </div>
</body>