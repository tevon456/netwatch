<?php
function echo_card($title = "Default Title", $desc = "Default Description", $img = "/images/fallback.jpg")
{
    $html = <<<"EOT"
      <div class="card">
         <img src="$img" alt="">
         <h2>$title</h2>
         <p>$desc</p>
      </div>
EOT;

    echo $html;
}

function nav_bar($title = "Default Title", $desc = "Default Description")
{
    $html = <<<"EOT"
    <nav class="bp3-navbar .modifier bp3-dark">
            <div class="bp3-navbar-group bp3-align-left">
            <div class="bp3-navbar-heading">Netwatch</div>
        </div>
            <div class="bp3-navbar-group bp3-align-right">
            <button class="bp3-button bp3-minimal bp3-icon-home">Home</button>
            <button class="bp3-button bp3-minimal bp3-icon-document">Files</button>
            <span class="bp3-navbar-divider"></span>
            <button class="bp3-button bp3-minimal bp3-icon-user"></button>
        </div>
    </nav>
EOT;

    echo $html;
}

function table($title = "Default Title", $desc = "Default Description")
{
    $html = <<<"EOT"
    <table class="bp3-html-table .modifier .bp3-html-table-striped">
  <thead>
    <tr>
      <th>Project</th>
      <th>Description</th>
      <th>Technologies</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Blueprint</td>
      <td>CSS framework and UI toolkit</td>
      <td>Sass, TypeScript, React</td>
    </tr>
    <tr>
      <td>TSLint</td>
      <td>Static analysis linter for TypeScript</td>
      <td>TypeScript</td>
    </tr>
    <tr>
      <td>Plottable</td>
      <td>Composable charting library built on top of D3</td>
      <td>SVG, TypeScript, D3</td>
    </tr>
  </tbody>
</table>
EOT;

    echo $html;
}
