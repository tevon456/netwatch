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
            background-color: #ececec;
        }
    </style>
</head>

<body class="mt-2 text-gray-600">
    <?php
    require '../vendor/autoload.php';
    require_once '../app/init.php';
    $app = new App();
    ?>
</body>