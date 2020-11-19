<div>
    <nav class="bp3-navbar .modifier bp3-dark">
        <div class="bp3-navbar-group bp3-align-left">
            <div class="bp3-navbar-heading">Netwatch</div>
        </div>
        <div class="bp3-navbar-group bp3-align-right">
            <a href="./../auth/login" role="button" class="bp3-button bp3-icon-log-in" tabindex="0">Login</a>
            <span class="mr-2"></span>
            <a href="./../auth/signup" role="button" class="bp3-button bp3-intent-primary" tabindex="0">Signup</a>
        </div>
    </nav>
    <div class="p-8 ">
        <div class="flex justify-center">
            <form id="form" class="php-form" method="post" action="<?php $_PHP_SELF ?>">
                <h3 class="bp3-heading">Login</h3>
                <div class="bp3-form-group .modifier">
                    <label class="bp3-label" for="form-group-input">
                        Email
                        <span class="bp3-text-muted">(required)</span>
                    </label>
                    <div class="bp3-form-content">
                        <div class="bp3-input-group ">
                            <input id="email" name="email" required type="email" class="bp3-input" style="width: 200px;" placeholder="eg jode@ecc.jm" dir="auto" />
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
                <button type="submit" class="bp3-button .bp3-large bp3-intent-success">Submit</button>
            </form>
        </div>
    </div>

    <div>