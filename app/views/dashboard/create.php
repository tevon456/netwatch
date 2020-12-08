<div class="p-8 mt-4">
    <div class="bp3-card">

        <a href="./../users/index" class='p-0.5 bp3-button bp3-icon-arrow-left'>back</a>

        <div class="p-8 ">
            <div class="flex justify-center">
                <form id="form" class="php-form" method="post" action="<?php $_PHP_SELF ?>">
                    <div class="bp3-callout mb-2 bp3-intent-warning">
                        <h4 class="bp3-heading">Password notice</h4>
                        Be sure to note the password created for the user as</br> you will not be able to see it after the screen changes.
                    </div>
                    <h3 class="bp3-heading">Create new user</h3>
                    <div class="bp3-form-group .modifier">
                        <label class="bp3-label" for="form-group-input">
                            First Name
                            <span class="bp3-text-muted">(required)</span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-input-group ">
                                <input id="first_name" name="first_name" required type="text" class="bp3-input" style="width: 200px;" placeholder="eg John" dir="auto" />
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
                                <input id="last_name" name="last_name" required type="text" class="bp3-input" style="width: 200px;" placeholder="eg Smith" dir="auto" />
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
                                <input id="email" name="email" required type="email" class="bp3-input" style="width: 200px;" placeholder="eg johnsmith@gmail.com" dir="auto" />
                            </div>
                        </div>
                    </div>
                    <div class="bp3-form-group ">
                        <label class="bp3-label" for="form-group-input">
                            Password
                            <span class="bp3-text-muted">(required)</span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-input-group ">
                                <input id="password" name="password" required type="password" class="bp3-input" style="width: 200px;" placeholder="8 characters" dir="auto" min='8' />
                            </div>
                        </div>
                    </div>

                    <div class="bp3-form-group mb-4">
                        <label class="bp3-label" for="form-group-input">
                            <span class="bp3-text-muted">default: Guest </span>
                        </label>
                        <div class="bp3-form-content">
                            <div class="bp3-select .modifier">
                                <select name="role">
                                    <option disabled selected>Choose</option>
                                    <option value="1">Admin</option>
                                    <option value="2">Data Clerk</option>
                                    <option value="3">Subscriber Standard</option>
                                    <option value="4">Subscriber Premium</option>
                                    <option selected value="5">Guest [Unsuscribed]</option>
                                    <option value="5">Suspend</option>
                                </select>
                            </div>
                        </div>

                        <button type="submit" class="mt-4 bp3-button .bp3-large bp3-intent-success bp3-icon-add">Submit</button>
                </form>
            </div>
        </div>

    </div>
</div>