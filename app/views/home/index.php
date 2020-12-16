<div>
    <script>
        var query = document.getElementById('bar').value;

        function UpdateQuery() {
            query = document.getElementById('bar').value;
        }

        function search() {
            if (query === undefined) {
                location.replace("http://localhost/php/netwatch/home/index/");
            } else {
                location.replace("http://localhost/php/netwatch/home/index/" + query);
            }
        }
    </script>
    <div class="p-8 mt-4">
        <div class="bp3-card mb-4">
            <div class="bp3-input-group">
                <span class="bp3-icon bp3-icon-search"></span>
                <input id="bar" onchange="UpdateQuery()" type="text" class="bp3-input bp3-round bp3-fill" placeholder="Search" />
                <button onclick="search()" class="bp3-button bp3-minimal bp3-intent-primary bp3-icon-arrow-right"></button>
            </div>
        </div>
        <?php
        if ($_SESSION['AUTH']['role'] == 'guest') {
            echo '<div class="bp3-non-ideal-state" style="height:80%;">
        <div class="bp3-non-ideal-state-visual">
          <span class="bp3-icon bp3-icon-dollar"></span>
        </div>
        <h4 class="bp3-heading">No Subscription</h4>
        <div>Your account is currently set to inactive due to not having an active subscription.</div>
        <a href="./../account/index" role="button" class="bp3-button bp3-intent-primary" tabindex="0">Select a plan</a>
      </div>';
        }
        ?>

        <?php
        if ($_SESSION['AUTH']['role'] != 'guest') {
            echo '<div class="grid grid-cols-3 place-items-stretch h-48 ">';
            foreach ($data['data'] as $value) {
                echo
                    "<div class=' bp3-card m-3'>
                    <img class='rounded-lg' src='https://source.unsplash.com/MAYsdoYpGuk/500x200'>
                    <div class='bp3-icon-name'></div>
                    <a href='./../watch/$value->id' class='block mt-2 text-lg leading-tight font-semibold text-gray-900 hover:underline'>$value->title</a>
                    <p class='mt-2 text-gray-600'>$value->description</p>
                </div>
                ";
            }
            echo '</div>';
        }
        ?>

    </div>
</div>

<div>