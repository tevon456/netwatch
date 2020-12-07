<div class="p-8 mt-4">
    <div class="bp3-card">

        <a href="./../dashboard/create" name="logout" class='p-0.5 bp3-button bp3-intent-success bp3-icon-add'>New User</a>
        <div style="overflow-x:auto;">
            <table class="bp3-html-table bp3-html-table-striped bp3-html-table-bordered bp3-interactive w-full table">

                <thead>
                    <tr>
                        <th>Action</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Year</th>
                        <th>Publisher</th>
                        <th>Actors</th>
                        <th>Category</th>
                        <th>Country</th>
                        <th>Duration</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    foreach ($data['data'] as $row) {
                        $role = '';
                        echo " <tr class='table-row'>" . "<td><div class='bp3-button-group .modifier'>
                    <a href='./../dashboard/update/" . $row['id'] . "' title='edit' class='bp3-button bp3-intent-primary bp3-icon-edit'></a>
                    <a href='./../dashboard/delete/" . $row['id'] . "' title='delete' class='bp3-button bp3-intent-danger bp3-icon-trash'></a>
                  </div></td>" . "<td>" . $row['title'] . "</td>" . "<td style='width:200px'>" . $row['description'] . "</td>" . "<td>" . $row['year'] . "</td>" . "<td>" . $row['publisher'] . "</td>"  . "<td>" . $row['created_at'] . "</td>" . "<td>" . $row['category'] . "</td>" . "<td>" . $row['country'] . "</td>" . "<td>" . $row['duration'] . "</td>" . "</tr>";
                    } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>