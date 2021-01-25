<header>
    <div class="top-link">
        <div class="container">
            <div class="row">
                <div class="col-md-7 col-md-offset-3 col-sm-9 hidden-xs">
                    <div class="site-option">
                        <ul>
                            <li class="currency"><a href="javascript:void(0)">VND <i class="fa fa-angle-down"></i> </a>

                            </li>
                            <li class="language"><a href="javascript:void(0)">Đà Nẵng<i class="fa fa-angle-down"></i> </a>

                            </li>
                        </ul>
                    </div>
                    <div class="call-support">
                        <p>Tư vấn đặt bàn: <span> 0065480030</span></p>
                    </div>
                </div>
                <div class="col-md-2 col-sm-3">
                    <div class="dashboard">
                        <div class="account-menu">
                            <ul>
                                <li>
                                    <a href="#" class="icon-db">
                                        <i class="fa fa-bars"></i>
                                    </a>
                                    <ul class="list-menu">
                                        <li><a href="my-account.html">Tài Khoản</a></li>
                                        <li><a href="wishlist.html">Thực Đơn</a></li>

                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="blog.html">Blog</a></li>
                                        <li><a href="#">Log in</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div id="cart-total" class="cart-menu">
                                <ul>
                                    <li>
                                        @if(Cart::getTotalQuantity()>0)
                                        <a href="#" class="icon-db"> <img src="/img/icon-cart.png" alt="">
                                            <span>{{ Cart::getTotalQuantity() }}</span>
                                        </a>
                                        <div class="cart-info">
                                            <ul class="list-menu">
                                                @foreach( Cart::getContent() as $item)
                                                    <li class="list-item">
                                                        <div class="cart-img">
                                                            <img style="width:60px;max-width:60px" src="/img/{{ $item ->attributes->img }}" alt="">
                                                        </div>
                                                        <div class="cart-details">
                                                            <a href="/san-pham/{{$item->id}}">{{ $item->name  }}</a>
                                                            <p>{{ $item->quantity  }} x {{ number_format($item->price) }}
                                                                đ</p>
                                                        </div>
                                                    </li>
                                                @endforeach
                                            </ul>
                                            <h3>Tổng : <span> {{ number_format(Cart::getSubTotal()) }}</span></h3>
                                            <a href="/gio-hang" class="checkout">Giỏ hàng</a>
                                        </div>
                                            @else
                                            <a href="#" class="icon-db"> <img src="/img/icon-cart.png" alt="">
                                            </a>
                                            <div class="cart-info">
                                                <p style="color:#fff;text-align: center;font-size: 17px">Giỏ hàng rỗng</p>
                                            </div>
                                        @endif
                                    </li>
                                </ul>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="mainmenu-area product-items">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="logo">
                        <a href="/">
                            <img src="/img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="mainmenu">
                        <nav>
                            <ul>
                                <li><a href="/">Trang chủ</a>
                                </li>
                                <li class="mega-women"><a href="/products">Sản phẩm</a>
                                    <div class="mega-menu women">
                                        <div class="part-1">
                                            @foreach($category as $item)
                                                <span>
                                                        <a href="#">{{ $item->name }}</a>
                                                        @foreach($item->producttypes as $item)
                                                        <a href="/hang-san-xuat/{{$item->id}}">{{ $item->name }}</a>
                                                    @endforeach
                                                    </span>
                                            @endforeach
                                        </div>
                                        <div class="part-2">
                                            <a href="#">
                                                <img src="/img/banner/menu-banner.png" alt="">
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="#">Giới thiệu</a></li>
                                <li><a href="#">Tin tức</a>
                                </li>
                                <li><a href="#">Chính sách mua hàng</a></li>
                                <li><a href="#">Liên hệ</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="mobile-menu">
                        <nav>
                            <ul>
                                <li><a href="index.html">Home</a>
                                    <ul>
                                        <li><a href="index.html">Home 1</a></li>
                                        <li><a href="index-2.html">Home 2</a></li>
                                    </ul>
                                </li>
                                <li><a href="shop.html">Food</a>
                                    <ul>
                                        <li><a href="#">Food BlaBle</a>
                                            <ul>
                                                <li><a href="#">Coctail</a></li>
                                                <li><a href="#">Food</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">THK</a>
                                            <ul>
                                                <li><a href="#">Food</a></li>
                                                <li><a href="#">Drink</a></li>
                                                <li><a href="#"></a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Bla Ble</a>
                                            <ul>
                                                <li><a href="#">Ble Bla</a></li>
                                                <li><a href="#">Bla</a></li>
                                                <li><a href="#">Bla Ble</a></li>
                                                <li><a href="#">Ble Blaa</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Smile</a>
                                            <ul>
                                                <li><a href="#">Cute</a></li>
                                                <li><a href="#">Phô</a></li>
                                                <li><a href="#">Mai</a></li>
                                                <li><a href="#">Que</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="shop.html">Food</a>
                                    <ul>
                                        <li><a href="#">cook</a>
                                            <ul>
                                                <li><a href="#">cooking</a></li>
                                                <li><a href="#">cooking bla ble</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">bla</a>
                                            <ul>
                                                <li><a href="#">ble</a></li>
                                                <li><a href="#">blue</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Pink</a>
                                            <ul>
                                                <li><a href="#">Pink</a></li>
                                                <li><a href="#">Hii</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="shop.html">Eat</a>
                                    <ul>
                                        <li><a href="#">Eating</a>
                                            <ul>
                                                <li><a href="#">hihi</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Drink</a>
                                            <ul>
                                                <li><a href="#">Drink hihi</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="shop.html">Love Love</a>
                                    <ul>
                                        <li><a href="#">Love</a></li>
                                    </ul>
                                </li>
                                <li><a href="shop.html">hhihi</a></li>
                                <li><a href="#">Pages</a>
                                    <ul>
                                        <li><a href="about-us.html">About us</a></li>
                                        <li><a href="blog.html">Blog</a></li>
                                        <li><a href="blog-details.html">Blog Details</a></li>
                                        <li><a href="cart.html">Cart</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="contact.html">Contact</a></li>
                                        <li><a href="my-account.html">My account</a></li>
                                        <li><a href="shop.html">Shop</a></li>
                                        <li><a href="shop-list.html">Shop list</a></li>
                                        <li><a href="single-product.html">Single Shop</a></li>
                                        <li><a href="wishlist.html">Wishlist</a></li>
                                        <li><a href="login.html">login page</a></li>
                                        <li><a href="register.html">register page</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<style>
    li.list-item {
        display: flex;
    }

    li.list-item .cart-details a {
        text-align: left;
        margin-bottom: 10px;
    }

    .dashboard ul li {
        margin-bottom: 0;
        line-height: 20px;
    }

    .dashboard ul li a.icon-db {
        margin-top: 20px;
    }

    .dashboard .cart-info {
        margin-top: 15px;
    }

    .dashboard ul.list-menu {
        margin-top: 20px;
    }

    .cart-img {
        width: 60px;
        height: 60px;
    }

    .cart-img img {
        width: 100%;
    }
</style>
