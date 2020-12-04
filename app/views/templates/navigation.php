<nav class="bp3-navbar .modifier bp3-dark">
    <div class="bp3-navbar-group bp3-align-left">
        <div class="bp3-navbar-heading">Netwatch</div>
    </div>
    <div class="bp3-navbar-group bp3-align-right">


        <a href="./../home/index" role="button" class="bp3-button bp3-icon-home" tabindex="0">Home</a>
        <span class="mr-2"></span>

        <?php if ($_SESSION['AUTH']['role'] == 'admin' || $_SESSION['AUTH']['role'] == 'data_clerk') {
            echo '<a href="./../home/index" role="button" class="bp3-button bp3-icon-application" tabindex="0">Dashboard</a>
                    <span class="mr-2"></span>';
        }  ?>


        <?= $_SESSION['AUTH']['role'] == 'admin' ?
            '<a href="./../report/index" role="button" class="bp3-button bp3-icon-pie-chart" tabindex="0">Reports</a>
            <span class="mr-2"></span>'
            : null ?>


        <?= $_SESSION['AUTH']['role'] == 'admin' ?
            '<a href="./../users/index" role="button" class="bp3-button bp3-icon-people" tabindex="0">Users</a>
            <span class="bp3-navbar-divider"></span>'
            : null ?>


        <div>
            <a href="./../account/index" role="button" class="bp3-button bp3-minimal bp3-icon-user" tabindex="0" title="">
            </a>
            <ul class="bp3-menu bp3-elevation-1 netwatchMenu">
                <li class="bp3-menu-header">
                    <h6 class="bp3-heading"><?= $data['user']['name'] ?></h6>
                </li>
                <li><a href="./../account/index" role="button" class="bp3-menu-item bp3-icon-layout-circle" tabindex="0">
                        Account</a></li>
                <li><a href="./../auth/logout" role="button" class="bp3-menu-item bp3-icon-power" tabindex="0">
                        Signout</a></li>
            </ul>
        </div>
    </div>
</nav>