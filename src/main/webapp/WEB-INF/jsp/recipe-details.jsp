<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@include file="../layouts/taglib.jsp" %>


<div id="main-col" class="col-lg-9 col-md-8 col-sm-8 col-xs-12">
               <div class="col-md-5 col-sm-5 col-xs-12">
                  <div id="gallery" class="currentImg">
                     <a href="${context}/resources/images/${recipeDetails.imageName}.${recipeDetails.imageExtension}" title="Fujifilm FinePix S2950 Digital Camera"><img id="img1" src="${context}/resources/images/${recipeDetails.imageName}.${recipeDetails.imageExtension}" alt="" class="main-img img-responsive" style="display: block;"></a>
                  </div>
               </div>
               <div class="col-md-7 col-sm-7 col-xs-12">
                  <h3>${recipeDetails.name}</h3>
                 	 <small>${recipeDetails.description}</small>
                  <hr class="soft">
                  <p>${recipeDetails.description}</p>
                  <hr class="soft">
                  <div class="row">
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <h3 style="margin-top:0">Total Amount : <span>220.00</span></h3>
                     </div>
                     <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="pull-right"> <button type="submit" class="btn btn-danger btn-large"><i class="fa fa-shopping-cart"></i> Add to cart</button></div>
                     </div>
                  </div>
                  <br/>
                  <br/>
                  <hr class="soft">
                  <a class="btn btn-default pull-right" href="#detail">More Details</a>
                  <!-- Share -->
                  <div class="share">
                     <a href="https://twitter.com/share" class="twitter-share-button" data-count="none">Tweet</a>
                     <div class="g-plusone" data-size="medium" data-annotation="none"></div>
                     <a href="//pinterest.com/pin/create/button/?url=PAGEURL&amp;media=IMAGE&amp;description=DESCRIPTION" data-pin-do="buttonPin" data-pin-config="beside">
                     <img src="//assets.pinterest.com/images/pidgets/pin_it_button.png" alt=""/>
                     </a>
                     <div class="fb-like" data-href="PAGEURL" data-send="false" data-width="120" data-show-faces="false" data-layout="button_count"></div>
                  </div>
                  <br class="clr">
                  <a href="#" name="detail"></a>
                  <hr class="soft">
               </div>
               <div class="col-md-12 col-sm-12 col-xs-12">
                  <ul id="productDetail" class="nav nav-tabs">
                     <li class="active"><a href="#home" data-toggle="tab">Product Details</a></li>
                     <li><a href="#relatedProduct" data-toggle="tab">Related Products</a></li>
                     <li><a href="#review" data-toggle="tab">Customer Review</a></li>
                  </ul>
                  <div id="myTabContent" class="tab-content">
                     <div class="tab-pane fade active in" id="home">
                        <h4>Szczegóły Przepisu</h4>

                        <table class="table table-bordered">
                        <tbody>
                        <tr class="techSpecRow">
                                 <th colspan="2">Składniki:</th>
                              </tr>
                        <c:forEach items="${recipeDetails.recipeItems}" var="recipeItem">
							<tr>
								<td>${recipeItem.ingredient.name}</td>
								<td>${recipeItem.quantity}</td>
							</tr>
						</c:forEach>
						<tbody>
						</table>
						
                       
                        <h4>Editorial Reviews</h4>
                        <p>
                           Jakiś tekst
                     </div>
                     <div class="tab-pane fade" id="relatedProduct">
                        <div style="padding:8px; min-height:51px" id="myTab">
                           <div class="pull-right">
                              <a href="#listView" data-toggle="tab"><span class="btn btn-default btn-large"><i class="fa fa-list"></i></span></a>
                              <a href="#blockView" data-toggle="tab"><span class="btn btn-default btn-danger btn-large"><i class="fa fa-th-large"></i></span></a>
                           </div>
                        </div>
                        <hr class="soft">
                        <div class="tab-content">
                           <div class="tab-pane" id="listView">
                              <div class="row">
                                 <div class="col-md-3 col-sm-6 col-xs-12">
                                    <a href="product_details.html"> <img src="themes/img/products/4.jpg" alt=""> </a>
                                 </div>
                                 <div class="col-md-9 col-sm-6 col-xs-12">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                       Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                       that is why our goods are so popular..
                                    </p>
                                    <form class="form-horizontal qtyFrm">
                                       <div class="btn-group pull-right">
                                          <a href="product_details.html" class="btn btn-default btn-large">VIEW</a>
                                          <a href="product_details.html" class="btn btn-default btn-danger btn-large"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                       </div>
                                       <h3> $222.00</h3>
                                       <label class="checkbox">
                                       <input type="checkbox">  Adds product to compair
                                       </label><br>
                                    </form>
                                 </div>
                              </div>
                              <hr class="soft">
                              <div class="row">
                                 <div class="col-md-3 col-sm-6 col-xs-12">
                                    <a href="product_details.html"> <img src="themes/img/products/4.jpg" alt=""> </a>
                                 </div>
                                 <div class="col-md-9 col-sm-6 col-xs-12">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                       Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                       that is why our goods are so popular..
                                    </p>
                                    <form class="form-horizontal qtyFrm">
                                       <div class="btn-group pull-right">
                                          <a href="product_details.html" class="btn btn-default btn-large">VIEW</a>
                                          <a href="product_details.html" class="btn btn-default btn-danger btn-large"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                       </div>
                                       <h3> $222.00</h3>
                                       <label class="checkbox">
                                       <input type="checkbox">  Adds product to compair
                                       </label><br>
                                    </form>
                                 </div>
                              </div>
                              <hr class="soft">
                              <div class="row">
                                 <div class="col-md-3 col-sm-6 col-xs-12">
                                    <a href="product_details.html"> <img src="themes/img/products/4.jpg" alt=""> </a>
                                 </div>
                                 <div class="col-md-9 col-sm-6 col-xs-12">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                       Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                       that is why our goods are so popular..
                                    </p>
                                    <form class="form-horizontal qtyFrm">
                                       <div class="btn-group pull-right">
                                          <a href="product_details.html" class="btn btn-default btn-large">VIEW</a>
                                          <a href="product_details.html" class="btn btn-default btn-danger btn-large"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                       </div>
                                       <h3> $222.00</h3>
                                       <label class="checkbox">
                                       <input type="checkbox">  Adds product to compair
                                       </label><br>
                                    </form>
                                 </div>
                              </div>
                              <hr class="soft">
                              <div class="row">
                                 <div class="col-md-3 col-sm-6 col-xs-12">
                                    <a href="product_details.html"> <img src="themes/img/products/4.jpg" alt=""> </a>
                                 </div>
                                 <div class="col-md-9 col-sm-6 col-xs-12">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                       Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                       that is why our goods are so popular..
                                    </p>
                                    <form class="form-horizontal qtyFrm">
                                       <div class="btn-group pull-right">
                                          <a href="product_details.html" class="btn btn-default btn-large">VIEW</a>
                                          <a href="product_details.html" class="btn btn-default btn-danger btn-large"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                       </div>
                                       <h3> $222.00</h3>
                                       <label class="checkbox">
                                       <input type="checkbox">  Adds product to compair
                                       </label><br>
                                    </form>
                                 </div>
                              </div>
                              <hr class="soft">
                              <div class="row">
                                 <div class="col-md-3 col-sm-6 col-xs-12">
                                    <a href="product_details.html"> <img src="themes/img/products/4.jpg" alt=""> </a>
                                 </div>
                                 <div class="col-md-9 col-sm-6 col-xs-12">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                       Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                       that is why our goods are so popular..
                                    </p>
                                    <form class="form-horizontal qtyFrm">
                                       <div class="btn-group pull-right">
                                          <a href="product_details.html" class="btn btn-default btn-large">VIEW</a>
                                          <a href="product_details.html" class="btn btn-default btn-danger btn-large"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                       </div>
                                       <h3> $222.00</h3>
                                       <label class="checkbox">
                                       <input type="checkbox">  Adds product to compair
                                       </label><br>
                                    </form>
                                 </div>
                              </div>
                              <hr class="soft">
                              <div class="row">
                                 <div class="col-md-3 col-sm-6 col-xs-12">
                                    <a href="product_details.html"> <img src="themes/img/products/4.jpg" alt=""> </a>
                                 </div>
                                 <div class="col-md-9 col-sm-6 col-xs-12">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                       Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                       that is why our goods are so popular..
                                    </p>
                                    <form class="form-horizontal qtyFrm">
                                       <div class="btn-group pull-right">
                                          <a href="product_details.html" class="btn btn-default btn-large">VIEW</a>
                                          <a href="product_details.html" class="btn btn-default btn-danger btn-large"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                       </div>
                                       <h3> $222.00</h3>
                                       <label class="checkbox">
                                       <input type="checkbox">  Adds product to compair
                                       </label><br>
                                    </form>
                                 </div>
                              </div>
                              <hr class="soft">
                              <div class="row">
                                 <div class="col-md-3 col-sm-6 col-xs-12">
                                    <a href="product_details.html"> <img src="themes/img/products/4.jpg" alt=""> </a>
                                 </div>
                                 <div class="col-md-9 col-sm-6 col-xs-12">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                       Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                       that is why our goods are so popular..
                                    </p>
                                    <form class="form-horizontal qtyFrm">
                                       <div class="btn-group pull-right">
                                          <a href="product_details.html" class="btn btn-default btn-large">VIEW</a>
                                          <a href="product_details.html" class="btn btn-default btn-danger btn-large"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                       </div>
                                       <h3> $222.00</h3>
                                       <label class="checkbox">
                                       <input type="checkbox">  Adds product to compair
                                       </label><br>
                                    </form>
                                 </div>
                              </div>
                              <hr class="soft">
                              <div class="row">
                                 <div class="col-md-3 col-sm-6 col-xs-12">
                                    <a href="product_details.html"> <img src="themes/img/products/4.jpg" alt=""> </a>
                                 </div>
                                 <div class="col-md-9 col-sm-6 col-xs-12">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                       Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                       that is why our goods are so popular..
                                    </p>
                                    <form class="form-horizontal qtyFrm">
                                       <div class="btn-group pull-right">
                                          <a href="product_details.html" class="btn btn-default btn-large">VIEW</a>
                                          <a href="product_details.html" class="btn btn-default btn-danger btn-large"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                       </div>
                                       <h3> $222.00</h3>
                                       <label class="checkbox">
                                       <input type="checkbox">  Adds product to compair
                                       </label><br>
                                    </form>
                                 </div>
                              </div>
                              <hr class="soft">
                              <div class="row">
                                 <div class="col-md-3 col-sm-6 col-xs-12">
                                    <a href="product_details.html"> <img src="themes/img/products/4.jpg" alt=""> </a>
                                 </div>
                                 <div class="col-md-9 col-sm-6 col-xs-12">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                       Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                       that is why our goods are so popular..
                                    </p>
                                    <form class="form-horizontal qtyFrm">
                                       <div class="btn-group pull-right">
                                          <a href="product_details.html" class="btn btn-default btn-large">VIEW</a>
                                          <a href="product_details.html" class="btn btn-default btn-danger btn-large"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                       </div>
                                       <h3> $222.00</h3>
                                       <label class="checkbox">
                                       <input type="checkbox">  Adds product to compair
                                       </label><br>
                                    </form>
                                 </div>
                              </div>
                              <hr class="soft">
                              <div class="row">
                                 <div class="col-md-3 col-sm-6 col-xs-12">
                                    <a href="product_details.html"> <img src="themes/img/products/4.jpg" alt=""> </a>
                                 </div>
                                 <div class="col-md-9 col-sm-6 col-xs-12">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                       Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                       that is why our goods are so popular..
                                    </p>
                                    <form class="form-horizontal qtyFrm">
                                       <div class="btn-group pull-right">
                                          <a href="product_details.html" class="btn btn-default btn-large">VIEW</a>
                                          <a href="product_details.html" class="btn btn-default btn-danger btn-large"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                       </div>
                                       <h3> $222.00</h3>
                                       <label class="checkbox">
                                       <input type="checkbox">  Adds product to compair
                                       </label><br>
                                    </form>
                                 </div>
                              </div>
                              <hr class="soft">
                              <div class="row">
                                 <div class="col-md-3 col-sm-6 col-xs-12">
                                    <a href="product_details.html"> <img src="themes/img/products/4.jpg" alt=""> </a>
                                 </div>
                                 <div class="col-md-9 col-sm-6 col-xs-12">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                       Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                       that is why our goods are so popular..
                                    </p>
                                    <form class="form-horizontal qtyFrm">
                                       <div class="btn-group pull-right">
                                          <a href="product_details.html" class="btn btn-default btn-large">VIEW</a>
                                          <a href="product_details.html" class="btn btn-default btn-danger btn-large"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                       </div>
                                       <h3> $222.00</h3>
                                       <label class="checkbox">
                                       <input type="checkbox">  Adds product to compair
                                       </label><br>
                                    </form>
                                 </div>
                              </div>
                              <hr class="soft">
                              <div class="row">
                                 <div class="col-md-3 col-sm-6 col-xs-12">
                                    <a href="product_details.html"> <img src="themes/img/products/4.jpg" alt=""> </a>
                                 </div>
                                 <div class="col-md-9 col-sm-6 col-xs-12">
                                    <h3>New | Available</h3>
                                    <hr class="soft">
                                    <h5>Product Name </h5>
                                    <p>
                                       Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - 
                                       that is why our goods are so popular..
                                    </p>
                                    <form class="form-horizontal qtyFrm">
                                       <div class="btn-group pull-right">
                                          <a href="product_details.html" class="btn btn-default btn-large">VIEW</a>
                                          <a href="product_details.html" class="btn btn-default btn-danger btn-large"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                       </div>
                                       <h3> $222.00</h3>
                                       <label class="checkbox">
                                       <input type="checkbox">  Adds product to compair
                                       </label><br>
                                    </form>
                                 </div>
                              </div>
                              <hr class="soft">
                           </div>
                           <div class="tab-pane active" id="blockView">
                              <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                 <div class="thumbnail">
                                    <div class="product-overlay">
                                       <a href="product_details.html"><img src="themes/img/products/3.jpg" alt=""/></a>
                                       <div class="share-addto-cart">
                                          <a class="btn btn-default" href="#"><i class="fa fa-share-alt"></i></a> <br/><br/>
                                          <a class="btn btn-default" href="#"><i class="fa fa-heart"></i></a> <br/><br/>
                                          <a class="btn btn-danger" href="#"><i class="fa fa-shopping-cart"></i></a>
                                       </div>
                                    </div>
                                    <div class="caption">
                                       <h4>Product name</h4>
                                       <a class="icon-retweet" data-placement="top" data-toggle="tooltip" data-original-title="Add to Compare"></a>
                                       <p><span class="old-price">$250.00</span> <span class="new-price">$222.00</span></p>
                                       <p><a class="btn btn-success" href="product_details.html">View  Details</a></p>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                 <div class="thumbnail">
                                    <div class="product-overlay">
                                       <a href="product_details.html"><img src="themes/img/products/1.jpg" alt=""/></a>
                                       <div class="share-addto-cart">
                                          <a class="btn btn-default" href="#"><i class="fa fa-share-alt"></i></a> <br/><br/>
                                          <a class="btn btn-default" href="#"><i class="fa fa-heart"></i></a> <br/><br/>
                                          <a class="btn btn-danger" href="#"><i class="fa fa-shopping-cart"></i></a>
                                       </div>
                                    </div>
                                    <div class="caption">
                                       <h4>Product name</h4>
                                       <a class="icon-retweet" data-placement="top" data-toggle="tooltip" data-original-title="Add to Compare"></a>
                                       <p><span class="old-price">$250.00</span> <span class="new-price">$222.00</span></p>
                                       <p><a class="btn btn-success" href="product_details.html">View  Details</a></p>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                 <div class="thumbnail">
                                    <div class="product-overlay">
                                       <a href="product_details.html"><img src="themes/img/products/2.jpg" alt=""/></a>
                                       <div class="share-addto-cart">
                                          <a class="btn btn-default" href="#"><i class="fa fa-share-alt"></i></a> <br/><br/>
                                          <a class="btn btn-default" href="#"><i class="fa fa-heart"></i></a> <br/><br/>
                                          <a class="btn btn-danger" href="#"><i class="fa fa-shopping-cart"></i></a>
                                       </div>
                                    </div>
                                    <div class="caption">
                                       <h4>Product name</h4>
                                       <a class="icon-retweet" data-placement="top" data-toggle="tooltip" data-original-title="Add to Compare"></a>
                                       <p><span class="old-price">$250.00</span> <span class="new-price">$222.00</span></p>
                                       <p><a class="btn btn-success" href="product_details.html">View  Details</a></p>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                 <div class="thumbnail">
                                    <div class="product-overlay">
                                       <a href="product_details.html"><img src="themes/img/products/4.jpg" alt=""/></a>
                                       <div class="share-addto-cart">
                                          <a class="btn btn-default" href="#"><i class="fa fa-share-alt"></i></a> <br/><br/>
                                          <a class="btn btn-default" href="#"><i class="fa fa-heart"></i></a> <br/><br/>
                                          <a class="btn btn-danger" href="#"><i class="fa fa-shopping-cart"></i></a>
                                       </div>
                                    </div>
                                    <div class="caption">
                                       <h4>Product name</h4>
                                       <a class="icon-retweet" data-placement="top" data-toggle="tooltip" data-original-title="Add to Compare"></a>
                                       <p><span class="old-price">$250.00</span> <span class="new-price">$222.00</span></p>
                                       <p><a class="btn btn-success" href="product_details.html">View  Details</a></p>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                 <div class="thumbnail">
                                    <div class="product-overlay">
                                       <a href="product_details.html"><img src="themes/img/products/5.jpg" alt=""/></a>
                                       <div class="share-addto-cart">
                                          <a class="btn btn-default" href="#"><i class="fa fa-share-alt"></i></a> <br/><br/>
                                          <a class="btn btn-default" href="#"><i class="fa fa-heart"></i></a> <br/><br/>
                                          <a class="btn btn-danger" href="#"><i class="fa fa-shopping-cart"></i></a>
                                       </div>
                                    </div>
                                    <div class="caption">
                                       <h4>Product name</h4>
                                       <a class="icon-retweet" data-placement="top" data-toggle="tooltip" data-original-title="Add to Compare"></a>
                                       <p><span class="old-price">$250.00</span> <span class="new-price">$222.00</span></p>
                                       <p><a class="btn btn-success" href="product_details.html">View  Details</a></p>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                 <div class="thumbnail">
                                    <div class="product-overlay">
                                       <a href="product_details.html"><img src="themes/img/products/3.jpg" alt=""/></a>
                                       <div class="share-addto-cart">
                                          <a class="btn btn-default" href="#"><i class="fa fa-share-alt"></i></a> <br/><br/>
                                          <a class="btn btn-default" href="#"><i class="fa fa-heart"></i></a> <br/><br/>
                                          <a class="btn btn-danger" href="#"><i class="fa fa-shopping-cart"></i></a>
                                       </div>
                                    </div>
                                    <div class="caption">
                                       <h4>Product name</h4>
                                       <a class="icon-retweet" data-placement="top" data-toggle="tooltip" data-original-title="Add to Compare"></a>
                                       <p><span class="old-price">$250.00</span> <span class="new-price">$222.00</span></p>
                                       <p><a class="btn btn-success" href="product_details.html">View  Details</a></p>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                 <div class="thumbnail">
                                    <div class="product-overlay">
                                       <a href="product_details.html"><img src="themes/img/products/3.jpg" alt=""/></a>
                                       <div class="share-addto-cart">
                                          <a class="btn btn-default" href="#"><i class="fa fa-share-alt"></i></a> <br/><br/>
                                          <a class="btn btn-default" href="#"><i class="fa fa-heart"></i></a> <br/><br/>
                                          <a class="btn btn-danger" href="#"><i class="fa fa-shopping-cart"></i></a>
                                       </div>
                                    </div>
                                    <div class="caption">
                                       <h4>Product name</h4>
                                       <a class="icon-retweet" data-placement="top" data-toggle="tooltip" data-original-title="Add to Compare"></a>
                                       <p><span class="old-price">$250.00</span> <span class="new-price">$222.00</span></p>
                                       <p><a class="btn btn-success" href="product_details.html">View  Details</a></p>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                 <div class="thumbnail">
                                    <div class="product-overlay">
                                       <a href="product_details.html"><img src="themes/img/products/3.jpg" alt=""/></a>
                                       <div class="share-addto-cart">
                                          <a class="btn btn-default" href="#"><i class="fa fa-share-alt"></i></a> <br/><br/>
                                          <a class="btn btn-default" href="#"><i class="fa fa-heart"></i></a> <br/><br/>
                                          <a class="btn btn-danger" href="#"><i class="fa fa-shopping-cart"></i></a>
                                       </div>
                                    </div>
                                    <div class="caption">
                                       <h4>Product name</h4>
                                       <a class="icon-retweet" data-placement="top" data-toggle="tooltip" data-original-title="Add to Compare"></a>
                                       <p><span class="old-price">$250.00</span> <span class="new-price">$222.00</span></p>
                                       <p><a class="btn btn-success" href="product_details.html">View  Details</a></p>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                 <div class="thumbnail">
                                    <div class="product-overlay">
                                       <a href="product_details.html"><img src="themes/img/products/3.jpg" alt=""/></a>
                                       <div class="share-addto-cart">
                                          <a class="btn btn-default" href="#"><i class="fa fa-share-alt"></i></a> <br/><br/>
                                          <a class="btn btn-danger" href="#"><i class="fa fa-shopping-cart"></i></a>
                                       </div>
                                    </div>
                                    <div class="caption">
                                       <h4>Product name</h4>
                                       <a class="icon-retweet" data-placement="top" data-toggle="tooltip" data-original-title="Add to Compare"></a>
                                       <p><span class="old-price">$250.00</span> <span class="new-price">$222.00</span></p>
                                       <p><a class="btn btn-success" href="product_details.html">View  Details</a></p>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                 <div class="thumbnail">
                                    <div class="product-overlay">
                                       <a href="product_details.html"><img src="themes/img/products/3.jpg" alt=""/></a>
                                       <div class="share-addto-cart">
                                          <a class="btn btn-default" href="#"><i class="fa fa-share-alt"></i></a> <br/><br/>
                                          <a class="btn btn-danger" href="#"><i class="fa fa-shopping-cart"></i></a>
                                       </div>
                                    </div>
                                    <div class="caption">
                                       <h4>Product name</h4>
                                       <a class="icon-retweet" data-placement="top" data-toggle="tooltip" data-original-title="Add to Compare"></a>
                                       <p><span class="old-price">$250.00</span> <span class="new-price">$222.00</span></p>
                                       <p><a class="btn btn-success" href="product_details.html">View  Details</a></p>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                 <div class="thumbnail">
                                    <div class="product-overlay">
                                       <a href="product_details.html"><img src="themes/img/products/3.jpg" alt=""/></a>
                                       <div class="share-addto-cart">
                                          <a class="btn btn-default" href="#"><i class="fa fa-share-alt"></i></a> <br/><br/>
                                          <a class="btn btn-danger" href="#"><i class="fa fa-shopping-cart"></i></a>
                                       </div>
                                    </div>
                                    <div class="caption">
                                       <h4>Product name</h4>
                                       <a class="icon-retweet" data-placement="top" data-toggle="tooltip" data-original-title="Add to Compare"></a>
                                       <p><span class="old-price">$250.00</span> <span class="new-price">$222.00</span></p>
                                       <p><a class="btn btn-success" href="product_details.html">View  Details</a></p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <br class="clr">
                     </div>
                     <div class="tab-pane fade" id="review">
                        <h4>Customers reviews</h4>
                        <div id="comments">
                           <h2>7 Comments</h2>
                           <ul class="media-list">
                              <li class="media">
                                 <a class="pull-left" href="#">
                                 <img class="media-object" data-src="holder.js/64x64" alt="64x64" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2NCIgaGVpZ2h0PSI2NCI+PHJlY3Qgd2lkdGg9IjY0IiBoZWlnaHQ9IjY0IiBmaWxsPSIjZWVlIi8+PHRleHQgdGV4dC1hbmNob3I9Im1pZGRsZSIgeD0iMzIiIHk9IjMyIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjEycHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+NjR4NjQ8L3RleHQ+PC9zdmc+" style="width: 64px; height: 64px;">
                                 </a>
                                 <div class="media-body">
                                    <h4 class="media-heading">Media heading</h4>
                                    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                    <!-- Nested media object -->
                                    <div class="media">
                                       <a class="pull-left" href="#">
                                       <img class="media-object" data-src="holder.js/64x64" alt="64x64" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2NCIgaGVpZ2h0PSI2NCI+PHJlY3Qgd2lkdGg9IjY0IiBoZWlnaHQ9IjY0IiBmaWxsPSIjZWVlIi8+PHRleHQgdGV4dC1hbmNob3I9Im1pZGRsZSIgeD0iMzIiIHk9IjMyIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjEycHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+NjR4NjQ8L3RleHQ+PC9zdmc+" style="width: 64px; height: 64px;">
                                       </a>
                                       <div class="media-body">
                                          <h4 class="media-heading">Nested media heading</h4>
                                          Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                          <!-- Nested media object -->
                                          <div class="media">
                                             <a class="pull-left" href="#">
                                             <img class="media-object" data-src="holder.js/64x64" alt="64x64" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2NCIgaGVpZ2h0PSI2NCI+PHJlY3Qgd2lkdGg9IjY0IiBoZWlnaHQ9IjY0IiBmaWxsPSIjZWVlIi8+PHRleHQgdGV4dC1hbmNob3I9Im1pZGRsZSIgeD0iMzIiIHk9IjMyIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjEycHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+NjR4NjQ8L3RleHQ+PC9zdmc+" style="width: 64px; height: 64px;">
                                             </a>
                                             <div class="media-body">
                                                <h4 class="media-heading">Nested media heading</h4>
                                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <!-- Nested media object -->
                                    <div class="media">
                                       <a class="pull-left" href="#">
                                       <img class="media-object" data-src="holder.js/64x64" alt="64x64" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2NCIgaGVpZ2h0PSI2NCI+PHJlY3Qgd2lkdGg9IjY0IiBoZWlnaHQ9IjY0IiBmaWxsPSIjZWVlIi8+PHRleHQgdGV4dC1hbmNob3I9Im1pZGRsZSIgeD0iMzIiIHk9IjMyIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjEycHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+NjR4NjQ8L3RleHQ+PC9zdmc+" style="width: 64px; height: 64px;">
                                       </a>
                                       <div class="media-body">
                                          <h4 class="media-heading">Nested media heading</h4>
                                          Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              <li class="media">
                                 <a class="pull-left" href="#">
                                 <img class="media-object" data-src="holder.js/64x64" alt="64x64" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2NCIgaGVpZ2h0PSI2NCI+PHJlY3Qgd2lkdGg9IjY0IiBoZWlnaHQ9IjY0IiBmaWxsPSIjZWVlIi8+PHRleHQgdGV4dC1hbmNob3I9Im1pZGRsZSIgeD0iMzIiIHk9IjMyIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjEycHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+NjR4NjQ8L3RleHQ+PC9zdmc+" style="width: 64px; height: 64px;">
                                 </a>
                                 <div class="media-body">
                                    <h4 class="media-heading">Media heading</h4>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                 </div>
                              </li>
                              <li class="media">
                                 <a class="pull-left" href="#">
                                 <img class="media-object" data-src="holder.js/64x64" alt="64x64" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2NCIgaGVpZ2h0PSI2NCI+PHJlY3Qgd2lkdGg9IjY0IiBoZWlnaHQ9IjY0IiBmaWxsPSIjZWVlIi8+PHRleHQgdGV4dC1hbmNob3I9Im1pZGRsZSIgeD0iMzIiIHk9IjMyIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjEycHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+NjR4NjQ8L3RleHQ+PC9zdmc+" style="width: 64px; height: 64px;">
                                 </a>
                                 <div class="media-body">
                                    <h4 class="media-heading">Media heading</h4>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                 </div>
                              </li>
                              <li class="media">
                                 <a class="pull-left" href="#">
                                 <img class="media-object" data-src="holder.js/64x64" alt="64x64" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI2NCIgaGVpZ2h0PSI2NCI+PHJlY3Qgd2lkdGg9IjY0IiBoZWlnaHQ9IjY0IiBmaWxsPSIjZWVlIi8+PHRleHQgdGV4dC1hbmNob3I9Im1pZGRsZSIgeD0iMzIiIHk9IjMyIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjEycHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+NjR4NjQ8L3RleHQ+PC9zdmc+" style="width: 64px; height: 64px;">
                                 </a>
                                 <div class="media-body">
                                    <h4 class="media-heading">Media heading</h4>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                 </div>
                              </li>
                           </ul>
                           <hr>
                           <h4>Leave a reply <small class="block fsize13 font300">Your email address will not be published.</small></h4>
                           <form id="commentForm" class="form-horizontal" method="post" action="#">
                              <div class="row">
                                 <div class="col-md-4">
                                    <label>Name *</label>
                                    <input required="" class="form-control input-lg" type="text" name="author" id="author" value="">
                                 </div>
                                 <div class="col-md-4">
                                    <label>Email *</label>
                                    <input required="" class="form-control input-lg" type="text" name="email" id="email" value="">
                                 </div>
                                 <div class="col-md-4">
                                    <label>Website</label>
                                    <input class="form-control input-lg" type="text" name="url" id="url" value="">
                                 </div>
                              </div>
                              <br>
                              <div class="row">
                                 <div class="col-md-12">
                                    <textarea required="" class="form-control input-lg" id="comment" name="comment" rows="5" placeholder="Your Comment *"></textarea><br>
                                 </div>
                                 <br>
                                 <div class="col-md-12 fsize16">
                                    <p>
                                       <input type="checkbox" name="subscribe_comments" id="subscribe_comments" value="subscribe">  
                                       <label for="subscribe_comments">Notify me of follow-up comments by email.</label>
                                       <br>
                                       <input type="checkbox" name="subscribe_blog" id="subscribe_blog" value="subscribe"> 
                                       <label for="subscribe_blog">Notify me of new posts by email.</label>
                                    </p>
                                 </div>
                                 <div class="col-md-12">
                                    <p>
                                       <button class="btn btn-primary btn-danger">Post Comment</button>
                                    </p>
                                 </div>
                              </div>
                           </form>
                        </div>
                     </div>
                  </div>
               </div>
            </div>


<%-- 						<h1>${recipeDetails.name}</h1>
					
						<table class="table table-bordered table-hover table-condensed">
						<c:forEach items="${recipeDetails.recipeItems}" var="recipeItem">
							<tr>
								<td>${recipeItem.ingredient.name}</td>
								<td>${recipeItem.quantity}</td>
							</tr>
						</c:forEach>
						</table> --%>
