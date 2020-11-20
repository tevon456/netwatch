<div>
    <nav class="bp3-navbar .modifier bp3-dark">
        <div class="bp3-navbar-group bp3-align-left">
            <div class="bp3-navbar-heading">Netwatch</div>
        </div>
        <div class="bp3-navbar-group bp3-align-right">
            <a href="./../home/index" role="button" class="bp3-button bp3-icon-home" tabindex="0">Home</a>
            <span class="mr-2"></span>
            <a href="./../home/index" role="button" class="bp3-button bp3-icon-application" tabindex="0">Dashboard</a>
            <span class="mr-2"></span>
            <a href="./../home/index" role="button" class="bp3-button bp3-icon-pie-chart" tabindex="0">Reports</a>
            <span class="mr-2"></span>
            <a href="./../home/index" role="button" class="bp3-button bp3-icon-people" tabindex="0">Users</a>
            <span class="bp3-navbar-divider"></span>
            <a href="./../home/index" role="button" class="bp3-button bp3-minimal bp3-icon-user" tabindex="0" title="">

            </a>
        </div>
    </nav>
    <div class="p-8 mt-4">


        <?php
        foreach ($data['data'] as $value) {
            echo
                "<div class=' bp3-card m-3'>
                    <img class='rounded-lg' src='https://source.unsplash.com/MAYsdoYpGuk/500x200'>
                    <div class='bp3-icon-name'></div>
                    <a href='#' class='block mt-2 text-lg leading-tight font-semibold text-gray-900 hover:underline'>$value->title</a>
                    <p class='mt-2 text-gray-600'>$value->description</p>
                </div>";
        }
        ?>

    </div>
</div>

<div>