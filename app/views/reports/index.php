<div class="p-8 mt-4">

    <div class="bp3-card mb-4">
        <div class="bp3-input-group .modifier">
            <span class="bp3-icon bp3-icon-search"></span>
            <input type="text" class="bp3-input bp3-round bp3-fill" placeholder="Search" />
            <button class="bp3-button bp3-minimal bp3-intent-primary bp3-icon-arrow-right"></button>
        </div>
    </div>

    <div class="">
        <div class="flex flex-wrap justify-evenly flex-row">
            <form id="form" class="php-form bp3-card" style="width: 230px;" method="post" action="<?php $_PHP_SELF ?>">
                <h3 class="bp3-heading">Total movies</h3>
                <p class="text-5xl font-bold text-green-400 tabular-nums"><?= $data['data']['movie_count'] ?></p>
            </form>
            <form id="form" class="php-form bp3-card" style="width: 230px;" method="post" action="<?php $_PHP_SELF ?>">
                <h3 class="bp3-heading">Most watched movie</h3>
                <p class="text-2xl font-bold text-green-400 tabular-nums"><?= $data['data']['most_watched'] ?></p>
            </form>
            <form id="form" class="php-form bp3-card" style="width: 230px;" method="post" action="<?php $_PHP_SELF ?>">
                <h3 class="bp3-heading">Total users</h3>
                <p class="text-5xl font-bold text-blue-500 tabular-nums"><?= $data['data']['user_count'] ?></p>
            </form>

            <form id="form" class="php-form bp3-card" style="width: 230px;" method="post" action="<?php $_PHP_SELF ?>">
                <h3 class="bp3-heading">Active Subscribers</h3>
                <p class="text-5xl font-bold text-blue-500 tabular-nums"><?= $data['data']['subscribed_count'] ?></p>
            </form>
            <form id="form" class="php-form bp3-card" style="width: 230px; method=" post" action="<?php $_PHP_SELF ?>">
                <h3 class="bp3-heading">Unpaid for 5 days</h3>
                <p class="text-5xl font-bold text-red-400 tabular-nums"><?= $data['data']['unsubscribed_count'] ?></p>
            </form>
            <form id="form" class="php-form bp3-card" style="width: 230px; method=" post" action="<?php $_PHP_SELF ?>">
                <h3 class="bp3-heading">Total revenue</h3>
                <p class="text-5xl font-bold text-purple-800 tabular-nums">$<?= $data['data']['revenue'] ?></p>
            </form>
        </div>
    </div>
</div>