<div class="p-8 mt-4">
    <div class="bp3-card">

        <a href="./../dashboard/index" class='p-0.5 bp3-button bp3-icon-arrow-left'>back</a>

        <div class="p-8 ">
            <div class="flex justify-center">
                <form id="form" class="php-form" method="post" action="<?php $_PHP_SELF ?>">
                    <h3 class="bp3-heading">Update Movie</h3>
                    <div class="bp3-form-group .modifier">
                        <label class="bp3-label" for="form-group-input">
                            Title
                            <span class="bp3-text-muted">(required)</span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-input-group ">
                                <input value="<?= $data['data']->title ?>" id="title" name="title" required type="text" class="bp3-input" style="width: 200px;" placeholder="eg John Wick" dir="auto" />
                            </div>
                        </div>
                    </div>
                    <div class="bp3-form-group .modifier">
                        <label class="bp3-label" for="form-group-input">
                            Description
                            <span class="bp3-text-muted">(required)</span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-input-group ">
                                <textarea style="height:300px;" id="description" name="description" class="bp3-input .modifier" required style="width: 200px;" placeholder="eg John" dir="auto"><?= $data['data']->description ?></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="bp3-form-group .modifier">
                        <label class="bp3-label" for="form-group-input">
                            Thumbnail
                            <span class="bp3-text-muted">url to to movie poster (required)</span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-input-group ">
                                <input value="<?= $data['data']->thumbnail ?>" id="thumbnail" name="thumbnail" required type="text" class="bp3-input" style="width: 200px;" placeholder="eg John" dir="auto" />
                            </div>
                        </div>
                    </div>
                    <div class="bp3-form-group .modifier">
                        <label class="bp3-label" for="form-group-input">
                            Trailer
                            <span class="bp3-text-muted">url to movie trailer (required)</span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-input-group ">
                                <input value="<?= $data['data']->trailer ?>" id="trailer" name="trailer" required type="text" class="bp3-input" style="width: 200px;" placeholder="eg John" dir="auto" />
                            </div>
                        </div>
                    </div>
                    <div class="bp3-form-group .modifier">
                        <label class="bp3-label" for="form-group-input">
                            Year
                            <span class="bp3-text-muted">(required)</span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-input-group ">
                                <input value="<?= $data['data']->year ?>" id="year" name="year" required type="number" value="2020" min="1920" max="2040" class="bp3-input" style="width: 200px;" placeholder="eg John" dir="auto" />
                            </div>
                        </div>
                    </div>
                    <div class="bp3-form-group .modifier">
                        <label class="bp3-label" for="form-group-input">
                            Publisher
                            <span class="bp3-text-muted">(required)</span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-input-group ">
                                <input value="<?= $data['data']->publisher ?>" id="publisher" name="publisher" required type="text" class="bp3-input" style="width: 200px;" dir="auto" />
                            </div>
                        </div>
                    </div>
                    <div class="bp3-form-group .modifier">

                        <div class="bp3-form-content">
                            <label class="bp3-label" for="form-group-input">
                                Category
                                <span class="bp3-text-muted">(required)</span>
                            </label>
                            <div class="bp3-form-content">
                                <div class="bp3-select .modifier">
                                    <select name="category" value="<?= $data['data']->category ?>">
                                        <option disabled selected>Choose</option>
                                        <option value="Comedy">Comedy</option>
                                        <option value="Drama">Drama</option>
                                        <option value="Action">Action</option>
                                        <option value="Children">Children</option>
                                        <option value="Crime">Crime</option>
                                        <option value="Sci-Fi">Sci-Fi</option>
                                        <option value="Horror">Horror</option>
                                        <option value="Romance">Romance</option>
                                        <option value="Documentary">Documentary</option>
                                        <option value="Mystery">Mystery</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bp3-form-group .modifier">
                        <label class="bp3-label" for="form-group-input">
                            Country
                            <span class="bp3-text-muted">(required)</span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-input-group ">
                                <input value="<?= $data['data']->country ?>" id="country" name="country" required type="text" class="bp3-input" style="width: 200px;" dir="auto" />
                            </div>
                        </div>
                    </div>
                    <div class="bp3-form-group ">
                        <label class="bp3-label" for="form-group-input">
                            Duration
                            <span class="bp3-text-muted">(required) in minutes</span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-input-group ">
                                <input value="<?= $data['data']->duration ?>" id="duration" name="duration" required type="number" min="45" class="bp3-input" style="width: 200px;" dir="auto" min='8' />
                            </div>
                        </div>
                    </div>

                    <!-- <div class="bp3-form-group .modifier">
                        <label class="bp3-label" for="form-group-input">
                            Actors
                            <span class="bp3-text-muted">(required) seperate names by comma and only add spcaes between first and last names</span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-input-group ">
                                <textarea id="actors" name="actors" class="bp3-input .modifier" placeholder="eg joe sean,hue jin,keen hun" required style="width: 200px;" dir="auto"></textarea>
                            </div>
                        </div>
                    </div> -->

                    <button type="submit" class="mt-4 bp3-button .bp3-large bp3-intent-success bp3-icon-add">Update</button>
                </form>
            </div>
        </div>

    </div>
</div>