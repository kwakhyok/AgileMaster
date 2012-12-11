<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap 101 template</title>
    <link rel="stylesheet" href="${createLinkTo(dir: 'css', file: 'bootstrap-responsive.min.css')}"
          media="screen"> </link>
    <script type="text/javascript" src="${createLinkTo(dir: 'js', file: 'jquery-1.4.2.min.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js', file: 'bootstrap.min.js')}"></script>
</head>

<body>
<h1>Hello World, Bootstrap</h1>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span2">
            ..
        </div>

        <div class="span10">
            <a href="#myModal" role="button" class="btn" data-toggle="modal">Launch demo modal</a>

            <!-- Modal -->
            <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>

                    <h3 id="myModalLabel">Modal header</h3>
                </div>

                <div class="modal-body">
                    <p>One fine body…</p>
                </div>

                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    <button class="btn btn-primary">Save changes</button>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>