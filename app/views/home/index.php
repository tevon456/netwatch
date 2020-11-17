<div>
    <nav class="bp3-navbar .modifier bp3-dark">
        <div class="bp3-navbar-group bp3-align-left">
            <div class="bp3-navbar-heading">Netwatch</div>
        </div>
        <div class="bp3-navbar-group bp3-align-right">
            <button class="bp3-button bp3-minimal bp3-icon-home">Home</button>
            <button class="bp3-button bp3-minimal bp3-icon-document">Dashboard</button>
            <span class="bp3-navbar-divider"></span>
            <button class="bp3-button bp3-minimal bp3-icon-user"></button>
        </div>
    </nav>
    <div class="p-8 mt-4">
        <div class="grid grid-cols-3 place-items-stretch h-48 ">

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
</div>

<div>