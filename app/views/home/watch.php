<div class="p-8 mt-4">
    <h2 class="bp3-heading"><?= $data['data']->title ?></h2>
    <div class="bp3-card">
        <a href="../../home/index" class='p-0.5 bp3-button bp3-icon-arrow-left'>back</a>

        <div class="p-8 ">
            <div class="flex justify-center">
                <video id="my-video" class="video-js" controls preload="auto" width="640px" height="420px" poster="<?= $data['data']->thumbnail ?>" data-setup="{}">
                    <source src="https://n8.gomoplayer.com/vxokewohxwalavf4eteivl6jshzwml2m3wpfnue5guifws7l4cu2a64xwupq/v.mp4" type="video/mp4" />
                    <p class="vjs-no-js">
                        To view this video please enable JavaScript, and consider upgrading to a
                        web browser that
                        <a href="https://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
                    </p>
                </video>
            </div>
        </div>
    </div>

    <div class="bp3-card mt-4">
        <div class="p-8 ">
            <h4 class="bp3-heading">Description</h4>
            <p class="bp3-text-large"><?= $data['data']->description ?></p>
            <h4 class="bp3-heading">Category</h4>
            <p class="bp3-text-large"><?= $data['data']->category ?></p>
        </div>
    </div>
</div>