function LoadMenuInfo() {
  let MyMenu = '';
  
MyMenu += '  <div class="navbar">';
MyMenu += '    <nav class="navbar navbar-inverse">';
MyMenu += ' 		<div class="container">';
MyMenu += ' 			<ul class="nav navbar-nav navbar-right">';
MyMenu += '					<li><a class="glyphicon glyphicon-home" href="index.html"> Home</a></li>';
MyMenu += '					<li><a class="glyphicon glyphicon-shopping-cart" href="Products.html"> Products</a></li>';
MyMenu += '					<li><a class="glyphicon glyphicon-search" href="About.html"> About</a></li>';
MyMenu += '					<li><a class="glyphicon glyphicon-envelope" href="#"> Contact</a></li>';
MyMenu += '					<li><a class="glyphicon glyphicon-user" href="#"> Account</a></li>';
MyMenu += '				</ul>';
MyMenu += '			</div>';
MyMenu += '		</nav>';


  document.getElementById('navigator').innerHTML = MyMenu;
}
