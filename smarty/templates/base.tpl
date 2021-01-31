<!DOCTYPE html>
<html>

<head>
    <title>{block name='title'}{/block} - BASE64 ENCODER</title>

    <!-- BEGIN METATAGS -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ITGeeks">
    <meta name="keywords" content="base64, encode, decode, convert, online, tool">
    <!-- END METATAGS -->

    <!-- BEGIN CSS AND OTHER LINKS-->
    <!-- Bootstrap common -->
    <link href="/img/favicon.png" rel="icon" type="image/png">
    <link href="/img/favicon.png" rel="apple-touch-icon">
    <link href="/css/vendor/bootstrap.css" rel="stylesheet">
    <link href="/css/bootstrap-theme.css" rel="stylesheet">
    <!-- Sidebar -->
    <link href="/css/sidebar.css" rel="stylesheet">
    <!-- END CSS AND OTHER LINKS -->

    <!-- BEGIN JAVASCRIPT -->
    <!-- Include jquery -->
    <script src="/js/vendor/jquery.min.js"></script>
    <!-- Bootstrap common -->
    <script src="/js/vendor/bootstrap.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="/js/vendor/html5shiv.js"></script>
      <script src="/js/vendor/respond_min.js"></script>
    <![endif]-->
    <!-- Init sidebar -->
    <script src="/js/common/sidebar.js"></script>
    <!-- Add preloader before events: "ajaxSend" and "ajaxComplete"  -->
    <script src="/js/common/ajax_preloader.js"></script>
    <!-- Add modal window to output errors -->
    <script src="/js/common/error_modal.js"></script>
    <!-- END JAVASCRIPT -->
    <!-- BEGIN own head items -->
    {block name='head'}{/block}
    <!-- END own head items -->
</head>

<body>
    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        <img src="/img/favicon.png"> base64.technology
                    </a>
                </li>
                <li><a href="/?page=about_base64">About BASE64</a></li>
                <li><a href="/?page=encode_text">Encode text</a></li>
                <li><a href="/?page=decode_text">Decode text</a></li>
                <li><a href="/?page=encode_image">Encode image</a></li>
                <li><a href="/?page=decode_image">Decode image</a></li>
                <li><a href="/?page=usages_by_programmers">Usages by programmers</a></li>
                <li><a href="/?page=api">API</a></li>
                <li><a href="/?page=site_info">Site info</a></li>
            </ul>
        </div>

        <!-- Page content -->
        <div id="page-content-wrapper">
            <div class="page-content inset">
                {block name='content'}{/block}
            </div>
        </div>
    </div>
    <div id="preloader"></div>
    <!-- Modal -->
    <div class="modal fade" id="error-modal" tabindex="-1" role="dialog" aria-labelledby="error-modal-label" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title text-danger" id="error-modal-label">
                        <span class="glyphicon glyphicon-warning-sign"></span>
                        Error!
                    </h4>
                </div>
                <div class="modal-body">
                    <h3 class="error-text"></h3>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
</body>

</html>
