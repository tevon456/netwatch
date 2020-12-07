<div class="p-8 mt-4">
    <div class="bp3-card">

        <a href="../../users/index" class='p-0.5 bp3-button bp3-icon-arrow-left'>back</a>

        <div class="p-8 ">
            <div class="flex justify-center">
                <form id="form" class="php-form" method="post" action="<?php $_PHP_SELF ?>">
                    <h3 class="bp3-heading">Update user</h3>
                    <div class="bp3-form-group .modifier">
                        <label class="bp3-label" for="form-group-input">
                            First Name
                            <span class="bp3-text-muted">(required)</span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-input-group ">
                                <input value="<?= $data['data']['first_name'] ?>" id="first_name" name="first_name" required type="text" class="bp3-input" style="width: 200px;" placeholder="eg John" dir="auto" />
                            </div>
                        </div>
                    </div>
                    <div class="bp3-form-group .modifier">
                        <label class="bp3-label" for="form-group-input">
                            Last Name
                            <span class="bp3-text-muted">(required)</span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-input-group ">
                                <input value="<?= $data['data']['last_name'] ?>" id="last_name" name="last_name" required type="text" class="bp3-input" style="width: 200px;" placeholder="eg Smith" dir="auto" />
                            </div>
                        </div>
                    </div>
                    <div class="bp3-form-group .modifier">
                        <label class="bp3-label" for="form-group-input">
                            Email
                            <span class="bp3-text-muted">(required)</span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-input-group ">
                                <input value="<?= $data['data']['email'] ?>" id="email" name="email" required type="email" class="bp3-input" style="width: 200px;" placeholder="eg johnsmith@gmail.com" />
                            </div>
                        </div>
                    </div>

                    <div class="bp3-form-group mb-4">
                        <label class="bp3-label" for="form-group-input">
                            Role
                            <?php
                            $role = '';
                            if ($data['data']['role'] == 1) {
                                $role = 'admin';
                            } elseif ($data['data']['role'] == 2) {
                                $role = 'data clerk';
                            } elseif ($data['data']['role'] == 3) {
                                $role = 'subscriber standard';
                            } elseif ($data['data']['role'] == 4) {
                                $role = 'subscriber premium';
                            } elseif ($data['data']['role'] == 5) {
                                $role = 'guest';
                            } else {
                                $role = 'suspended';
                            }
                            ?>
                            <span class="bp3-text-muted">current: <?= $role ?> </span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-select .modifier">
                                <select name="role" value="<?= $data['data']['role'] ?>">
                                    <option disabled selected>Choose</option>
                                    <option value="1">Admin</option>
                                    <option value="2">Data Clerk</option>
                                    <option value="3">Subscriber Standard</option>
                                    <option value="4">Subscriber Premium</option>
                                    <option value="5">Guest [Unsuscribed]</option>
                                    <option value="6">Suspend</option>
                                </select>
                            </div>
                        </div>
                    </div>


                    <button type="submit" class="bp3-button .bp3-large bp3-intent-success bp3-icon-edit">Update</button>
                </form>
            </div>
        </div>

    </div>
</div>