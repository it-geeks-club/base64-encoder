<!DOCTYPE html>
<html>
  <head>
    <title>{block name='title'}{/block} - BASE-64</title>

    <!-- BEGIN METATAG -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <!-- END METATAG -->

    <!-- BEGIN CSS AND OTHER LINKS-->
    <!-- Bootstrap common -->
    <link href="/img/favicon.png" rel="icon" type="image/png"  media="all"/>
    <link href="/img/favicon.png" rel="apple-touch-icon" />
    <link href="/css/bootstrap.css" rel="stylesheet">
    <link href="/css/bootstrap-theme.css" rel="stylesheet">
    <!-- Sidebar -->
    <link href="/css/sidebar.css" rel="stylesheet">
    <!-- END CSS AND OTHER LINKS -->

    <!-- BEGIN JAVASCRIPT -->
    <!-- Include jquery -->
    <script src="/js/jquery-2.1.0.min.js"></script>
    <!-- Bootstrap common -->
    <script src="/js/bootstrap.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="/js/html5shiv.js"></script>
      <script src="/js/respond_min.js"></script>
    <![endif]-->
    <!-- Init sidebar -->
    <script src="/js/sidebar.js"></script>
    <!-- Add preloader, when between event: "ajaxSend" and "ajaxComplete"  -->
    <script src="/js/ajax_preloader.js"></script>
    <!-- Add modal window to output errors -->
    <script src="/js/error_modal.js"></script>
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
              <img src="/img/favicon.png" />
              BASE-64.TK
            </a>
          </li>
          <li><a href="/index.php?page=about_base64">About BASE64</a></li>
          <li><a href="/index.php?page=encode_text">Encode text</a></li>
          <li><a href="/index.php?page=decode_text">Decode text</a></li>
          <li><a href="/index.php?page=encode_image">Encode image</a></li>
          <li><a href="/index.php?page=decode_image">Decode image</a></li>
          <li><a href="/index.php?page=usages_by_programmers">Usages by programmers</a></li>
          <li><a href="/index.php?page=api">API</a></li>
          <li><a href="/index.php?page=site_info">Site info</a></li>
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
    <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title text-danger" id="errorModalLabel">
              <span class="glyphicon glyphicon-warning-sign"></span>
              Error!
            </h4>
          </div>
          <div class="modal-body">
            <h3 class="error_text">
            </h3>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
  </body>
</html>