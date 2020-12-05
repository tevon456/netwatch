<div class="p-8 mt-4">
    <div class="bp3-card">

        <a href="./../users/create" name="logout" class='p-0.5 bp3-button bp3-intent-success bp3-icon-add'>New User</a>

        <table class="bp3-html-table bp3-html-table-striped bp3-interactive w-full table">

            <thead>
                <tr>
                    <th>Action</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Created</th>
                    <th>Last Updated</th>
                </tr>
            </thead>
            <tbody>
                <?php
                foreach ($data['data'] as $row) {
                    $role = '';
                    if ($row['role'] == 1) {
                        $role = 'admin';
                    } elseif ($row['role'] == 2) {
                        $role = 'data clerk';
                    } elseif ($row['role'] == 3) {
                        $role = 'subscriber standard';
                    } elseif ($row['role'] == 4) {
                        $role = 'subscriber premium';
                    } elseif ($row['role'] == 5) {
                        $role = 'guest';
                    } else {
                        $role = 'suspended';
                    }
                    echo " <tr class='table-row'>" . "<td><div class='bp3-button-group .modifier'>
                    <a href='./../users/update/" . $row['id'] . "' title='edit' class='bp3-button bp3-intent-primary bp3-icon-edit'></a>
                    <a href='./../users/delete/" . $row['id'] . "' title='delete' class='bp3-button bp3-intent-danger bp3-icon-trash'></a>
                  </div></td>" . "<td>" . $row['first_name'] . "</td>" . "<td>" . $row['last_name'] . "</td>" . "<td>" . $row['email'] . "</td>" . "<td>" . $role . "</td>"  . "<td>" . $row['created_at'] . "</td>" . "<td>" . $row['updated_at'] . "</td>" . "</tr>";
                } ?>
            </tbody>
        </table>

    </div>
</div>