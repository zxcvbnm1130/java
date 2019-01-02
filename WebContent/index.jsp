<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="./img/favicon.ico">

    <title>Blog Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
<!--     <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet"> -->
    <link href="./css/blog.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">

		<%@ include file="./components/header.jsp" %>

		<%@ include file="./components/menu.jsp" %>

		<%@ include file="./components/banner.jsp" %>

    </div>

    <main role="main" class="container">
      <div class="row">
        <div class="col-md-8 blog-main">
          <h3 class="pb-3 mb-4 font-italic border-bottom">
            From the Firehose 			          
          </h3>

			<jsp:include page='${"PostServlet" }'>
				<jsp:param name="action" value="listposts" />
				<jsp:param name="author" value="${param.author }" />
				<jsp:param name="pageNo" value="${param.pageNo }" />
			</jsp:include>	
			
          <nav class="blog-pagination">
            <a class='btn btn-outline-${param.pageNo+1<pageCount ? "primary " : "secondary disabled" }' href="index.jsp?pageNo=${param.pageNo+1<pageCount ? param.pageNo+1 : param.pageNo }">Older</a>
            <a class='btn btn-outline-${param.pageNo-1 >= 0 ? "primary " : "secondary disabled" }' href="index.jsp?pageNo=${param.pageNo-1 >= 0 ? param.pageNo-1 : 0 }">Newer</a>
          </nav>

        </div><!-- /.blog-main -->

        <%@ include file="./components/sidebar.jsp" %>

      </div><!-- /.row -->

    </main><!-- /.container -->

	<%@ include file="./components/footer.jsp" %>
  </body>
</html>
