<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../layouts/taglib.jsp"%>

<div class="tab-pane " id="relatedProduct">
	<div style="padding: 8px; min-height: 51px" id="myTab">
		<div class="pull-right">
			<a href="#blockView" data-toggle="tab"><span
				class="btn btn-default btn-large glyphicon glyphicon-th"></span></a> <a
				href="#listView" data-toggle="tab"><span
				class="btn btn-default btn-danger btn-large glyphicon glyphicon-changeview glyphicon-th-list"></span></a>
		</div>
	</div>
	<hr class="soft">
	<div class="tab-content">
		<div class="tab-pane" id="listView">
			<c:forEach items="${recipes}" var="recipe">
				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-12">
						<a href='<spring:url value="/recipes/${recipe.id}.html" />'> <img
							class="width-100"
							src="${context}/resources/images/${recipe.imageName}.${recipe.imageExtension}"
							alt="">
						</a>
					</div>
					<div class="col-md-9 col-sm-6 col-xs-12">
						<a href='<spring:url value="/recipes/${recipe.id}.html" />'><h3>${recipe.name}</h3></a>
						<hr class="soft">
						<h5>New | Available</h5>
						<p>${recipe.description}</p>
						<form class="form-horizontal qtyFrm">
							<div class="btn-group pull-right">
								<a href='<spring:url value="/recipes/${recipe.id}.html" />'
									class="btn btn-default btn-large">VIEW</a> <a href="#"
									class="btn btn-default btn-danger btn-large"><i
									class="fa fa-shopping-cart"></i> Add to cart</a>
							</div>
							<h3>$222.00</h3>
							<label class="checkbox"> <input type="checkbox">
								Adds product to compair
							</label><br>
						</form>
					</div>
				</div>
				<hr class="soft">
			</c:forEach>
		</div>
		<div class="tab-pane active" id="blockView">
			<c:forEach items="${recipes}" var="recipe">
				<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
					<div class="thumbnail">
						<div class="product-overlay">
							<a href='<spring:url value="/recipes/${recipe.id}.html" />'><img
								src="${context}/resources/images/${recipe.imageName}.${recipe.imageExtension}"
								alt="" /></a>
							<div class="share-addto-cart">
								<a class="btn btn-default glyphicon glyphicon-share-alt"
									href="#"></a> <br />
								<br /> <a class="btn btn-default glyphicon glyphicon-heart"
									href="#"></a> <br />
								<br /> <a
									class="btn btn-danger glyphicon glyphicon-shopping-cart"
									href="#"></a>
							</div>
						</div>
						<div class="caption caption-cust">
							<a href='<spring:url value="/recipes/${recipe.id}.html" />'><h4>${recipe.name}</h4></a>
							<a class="icon-retweet" data-placement="top"
								data-toggle="tooltip" data-original-title="Add to Compare"></a>
							<p>${recipe.description}</p>
							<p>
								<a class="btn btn-success"
									href='<spring:url value="/recipes/${recipe.id}.html" />'>View
									Details</a>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<br class="clr">
</div>