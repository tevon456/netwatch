<?php
function loginPage()
{
    $html = <<<"EOT"
    <html>
    <head>
        <title>PHP Test</title>
        <link href="./resources/index.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
        <!-- Style dependencies -->
        <link href="https://unpkg.com/normalize.css@^7.0.0" rel="stylesheet" />
        <!-- Blueprint stylesheets -->
        <link href="https://unpkg.com/@blueprintjs/icons@^3.4.0/lib/css/blueprint-icons.css" rel="stylesheet" />
        <link href="https://unpkg.com/@blueprintjs/core@^3.10.0/lib/css/blueprint.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    </head>
    <body class="animate__animated animate__fadeIn">
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
        <div class="flex-center" style="margin-top:120px;">
        <form action="index.php" method="post">
            <div class="bp3-form-group .modifier">
            <h2 class="bp3-heading">Login</h2>
                <label class="bp3-label" for="form-group-input">
                Email
                <span class="bp3-text-muted">(required)</span>
                </label>
                <div class="bp3-form-content">
                    <div class="bp3-input-group .modifier">
                
                        <input id="form-group-input" type="email" :modifier class="bp3-input"
                        style="width: 200px;" placeholder="Placeholder text" dir="auto" />
                    </div>
                    
                </div>
                <br/>
                <label class="bp3-label" for="form-group-input">
                Password
                <span class="bp3-text-muted">(required)</span>
                </label>
                <div class="bp3-form-content">
                    <div class="bp3-input-group .modifier">
                    <input type="password" class="bp3-input" :modifier placeholder="Enter your password..." />
                </div>
                <br/>
                <button type="submit" class="bp3-button bp3-icon-log-in .modifier bp3-intent-primary" :modifier>Submit</button>
                </div>
            </div>
            </form>
        </div>
    </body>
    
    </html>
EOT;

    echo $html;
}
