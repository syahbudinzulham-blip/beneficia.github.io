<!DOCTYPE html>
<html>
  <head>
    <title>Hello, World!</title>
    <link rel="stylesheet" href="styles.css" />
  </head>
  <body>
      <h1 class="title">Hello World! </h1>
      <p id="currentTime"></p>
      <script src="script.js"></script>
  </body>
</html><!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beneficia - Toko Pakaian Bekas Berkualitas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #e74c3c;
            --accent-color: #f39c12;
            --light-bg: #ecf0f1;
            --dark-text: #2c3e50;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: var(--dark-text);
        }

        /* Navbar Styles */
        .navbar {
            background-color: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            padding: 1rem 0;
        }

        .navbar-brand {
            font-size: 1.5rem;
            font-weight: bold;
            color: var(--primary-color) !important;
        }

        .navbar-brand i {
            color: var(--secondary-color);
        }

        .nav-link {
            color: var(--dark-text) !important;
            font-weight: 500;
            margin: 0 0.5rem;
            transition: color 0.3s;
        }

        .nav-link:hover {
            color: var(--secondary-color) !important;
        }

        .cart-badge {
            background-color: var(--secondary-color);
            color: white;
            border-radius: 50%;
            padding: 0.2rem 0.5rem;
            font-size: 0.8rem;
            position: absolute;
            top: -8px;
            right: -8px;
        }

        /* Hero Section */
        .hero-section {
            background: linear-gradient(135deg, rgba(44, 62, 80, 0.9), rgba(231, 76, 60, 0.9)), url('https://picsum.photos/seed/thrift/1920/600') center/cover;
            color: white;
            padding: 100px 0;
            text-align: center;
        }

        .hero-section h1 {
            font-size: 3.5rem;
            font-weight: bold;
            margin-bottom: 1rem;
            animation: fadeInUp 1s ease;
        }

        .hero-section p {
            font-size: 1.3rem;
            margin-bottom: 2rem;
            animation: fadeInUp 1s ease 0.2s;
            animation-fill-mode: both;
        }

        .btn-primary-custom {
            background-color: var(--accent-color);
            border: none;
            padding: 12px 30px;
            font-size: 1.1rem;
            font-weight: 600;
            border-radius: 50px;
            transition: all 0.3s;
            animation: fadeInUp 1s ease 0.4s;
            animation-fill-mode: both;
        }

        .btn-primary-custom:hover {
            background-color: #e67e22;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }

        /* Product Section */
        .product-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: all 0.3s;
            height: 100%;
            display: flex;
            flex-direction: column;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        .product-image {
            height: 250px;
            object-fit: cover;
            width: 100%;
        }

        .product-info {
            padding: 1.5rem;
            flex-grow: 1;
            display: flex;
            flex-direction: column;
        }

        .product-category {
            color: var(--secondary-color);
            font-size: 0.9rem;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 0.5rem;
        }

        .product-title {
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
            color: var(--dark-text);
        }

        .product-price {
            font-size: 1.5rem;
            font-weight: bold;
            color: var(--accent-color);
            margin-top: auto;
        }

        .product-condition {
            display: inline-block;
            background-color: #27ae60;
            color: white;
            padding: 0.3rem 0.8rem;
            border-radius: 20px;
            font-size: 0.8rem;
            margin-top: 0.5rem;
        }

        /* Filter Section */
        .filter-section {
            background-color: var(--light-bg);
            padding: 2rem 0;
            margin-bottom: 3rem;
        }

        .filter-btn {
            background-color: white;
            border: 2px solid var(--primary-color);
            color: var(--primary-color);
            padding: 0.5rem 1.5rem;
            border-radius: 25px;
            margin: 0.3rem;
            transition: all 0.3s;
            cursor: pointer;
        }

        .filter-btn:hover, .filter-btn.active {
            background-color: var(--primary-color);
            color: white;
        }

        /* About Section */
        .about-section {
            padding: 80px 0;
            background-color: white;
        }

        .about-icon {
            font-size: 3rem;
            color: var(--secondary-color);
            margin-bottom: 1rem;
        }

        /* Footer */
        footer {
            background-color: var(--primary-color);
            color: white;
            padding: 3rem 0 1rem;
        }

        .footer-links a {
            color: white;
            text-decoration: none;
            margin: 0 1rem;
            transition: color 0.3s;
        }

        .footer-links a:hover {
            color: var(--accent-color);
        }

        /* Cart Modal */
        .cart-item {
            display: flex;
            align-items: center;
            padding: 1rem;
            border-bottom: 1px solid #eee;
        }

        .cart-item img {
            width: 80px;
            height: 80px;
            object-fit: cover;
            margin-right: 1rem;
            border-radius: 5px;
        }

        .cart-item-info {
            flex-grow: 1;
        }

        .cart-item-price {
            font-weight: bold;
            color: var(--accent-color);
        }

        .quantity-control {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .quantity-btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            width: 30px;
            height: 30px;
            border-radius: 50%;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .quantity-btn:hover {
            background-color: var(--secondary-color);
        }

        /* Animations */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive */
        @media (max-width: 768px) {
            .hero-section h1 {
                font-size: 2.5rem;
            }
            
            .hero-section p {
                font-size: 1.1rem;
            }
        }

        /* Toast Notification */
        .toast-container {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 1050;
        }

        .custom-toast {
            background-color: var(--primary-color);
            color: white;
            border-radius: 10px;
            padding: 1rem 1.5rem;
            margin-bottom: 1rem;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
            animation: slideInRight 0.3s ease;
        }

        @keyframes slideInRight {
            from {
                transform: translateX(100%);
                opacity: 0;
            }
            to {
                transform: translateX(0);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light sticky-top">
        <div class="container">
            <a class="navbar-brand" href="#"><i class="bi bi-bag-heart"></i> Beneficia</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#home">Beranda</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#products">Produk</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">Tentang</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Kontak</a>
                    </li>
                </ul>
                <div class="d-flex align-items-center">
                    <button class="btn btn-outline-primary position-relative me-3" onclick="openCart()">
                        <i class="bi bi-cart3"></i>
                        <span class="cart-badge" id="cartCount">0</span>
                    </button>
                    <button class="btn btn-primary">Masuk</button>
                </div>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="hero-section">
        <div class="container">
            <h1>Fashion Berkualitas, Harga Terjangkau</h1>
            <p>Temukan koleksi pakaian bekas premium dengan kualitas terbaik</p>
            <button class="btn btn-primary-custom" onclick="scrollToProducts()">Belanja Sekarang</button>
        </div>
    </section>

    <!-- Filter Section -->
    <section class="filter-section">
        <div class="container">
            <div class="text-center mb-3">
                <h4>Filter Kategori</h4>
            </div>
            <div class="text-center">
                <button class="filter-btn active" onclick="filterProducts('all')">Semua</button>
                <button class="filter-btn" onclick="filterProducts('atasan')">Atasan</button>
                <button class="filter-btn" onclick="filterProducts('bawahan')">Bawahan</button>
                <button class="filter-btn" onclick="filterProducts('dress')">Dress</button>
                <button class="filter-btn" onclick="filterProducts('aksesoris')">Aksesoris</button>
                <button class="filter-btn" onclick="filterProducts('outer')">Outer</button>
            </div>
        </div>
    </section>

    <!-- Products Section -->
    <section id="products" class="py-5">
        <div class="container">
            <h2 class="text-center mb-5">Koleksi Terbaru</h2>
            <div class="row g-4" id="productGrid">
                <!-- Products will be dynamically loaded here -->
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="about-section">
        <div class="container">
            <h2 class="text-center mb-5">Mengapa Memilih Beneficia?</h2>
            <div class="row">
                <div class="col-md-4 text-center mb-4">
                    <i class="bi bi-shield-check about-icon"></i>
                    <h4>Kualitas Terjamin</h4>
                    <p>Setiap pakaian melalui proses seleksi ketat dan quality control sebelum dijual</p>
                </div>
                <div class="col-md-4 text-center mb-4">
                    <i class="bi bi-eco about-icon"></i>
                    <h4>Ramah Lingkungan</h4>
                    <p>Dukung gerakan sustainable fashion dengan membeli pakaian bekas berkualitas</p>
                </div>
                <div class="col-md-4 text-center mb-4">
                    <i class="bi bi-cash-coin about-icon"></i>
                    <h4>Harga Terjangkau</h4>
                    <p>Dapatkan fashion branded dengan harga yang sangat bersahabat</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="py-5 bg-light">
        <div class="container">
            <h2 class="text-center mb-5">Hubungi Kami</h2>
            <div class="row">
                <div class="col-md-6">
                    <h4>Informasi Kontak</h4>
                    <p><i class="bi bi-geo-alt"></i> Jl. Hidup Baru III No. 41, Jakarta Selatan</p>
                    <p><i class="bi bi-telephone"></i> +62 812-3456-7890</p>
                    <p><i class="bi bi-envelope"></i> info@Beneficia.com</p>
                    <p><i class="bi bi-clock"></i> Senin - Sabtu: 10:00 - 20:00</p>
                </div>
                <div class="col-md-6">
                    <form onsubmit="submitContact(event)">
                        <div class="mb-3">
                            <input type="text" class="form-control" placeholder="Nama Anda" required>
                        </div>
                        <div class="mb-3">
                            <input type="email" class="form-control" placeholder="Email Anda" required>
                        </div>
                        <div class="mb-3">
                            <textarea class="form-control" rows="4" placeholder="Pesan Anda" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Kirim Pesan</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-4">
                    <h5><i class="bi bi-bag-heart"></i> Beneficia</h5>
                    <p>Toko pakaian bekas berkualitas dengan harga terjangkau. Fashion sustainable untuk generasi masa depan.</p>
                </div>
                <div class="col-md-4 mb-4">
                    <h5>Link Cepat</h5>
                    <div class="footer-links d-flex flex-column">
                        <a href="#home">Beranda</a>
                        <a href="#products">Produk</a>
                        <a href="#about">Tentang</a>
                        <a href="#contact">Kontak</a>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <h5>Ikuti Kami</h5>
                    <div class="social-links">
                        <a href="#" class="text-white me-3"><i class="bi bi-facebook fs-4"></i></a>
                        <a href="#" class="text-white me-3"><i class="bi bi-instagram fs-4"></i></a>
                        <a href="#" class="text-white me-3"><i class="bi bi-twitter fs-4"></i></a>
                        <a href="#" class="text-white"><i class="bi bi-tiktok fs-4"></i></a>
                    </div>
                </div>
            </div>
            <hr class="my-4" style="border-color: rgba(255,255,255,0.2);">
            <div class="text-center">
                <p>&copy; 2024 Beneficia. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <!-- Cart Modal -->
    <div class="modal fade" id="cartModal" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><i class="bi bi-cart3"></i> Keranjang Belanja</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body" id="cartItems">
                    <!-- Cart items will be dynamically loaded here -->
                </div>
                <div class="modal-footer">
                    <div class="d-flex justify-content-between w-100">
                        <h5>Total: <span id="cartTotal">Rp 0</span></h5>
                        <div>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                            <button type="button" class="btn btn-primary" onclick="checkout()">Checkout</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Toast Container -->
    <div class="toast-container" id="toastContainer"></div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Product data
        const products = [
            {
                id: 1,
                name: "Kemeja Flanel Vintage",
                category: "atasan",
                price: 85000,
                condition: "Like New",
                image: "https://picsum.photos/seed/flanel/300/300"
            },
            {
                id: 2,
                name: "Celana Jeans Levis",
                category: "bawahan",
                price: 120000,
                condition: "Good",
                image: "https://picsum.photos/seed/jeans/300/300"
            },
            {
                id: 3,
                name: "Dress Floral Summer",
                category: "dress",
                price: 95000,
                condition: "Excellent",
                image: "https://picsum.photos/seed/dress/300/300"
            },
            {
                id: 4,
                name: "Jacket Denim Classic",
                category: "outer",
                price: 150000,
                condition: "Good",
                image: "https://picsum.photos/seed/jacket/300/300"
            },
            {
                id: 5,
                name: "T-Shirt Graphic Band",
                category: "atasan",
                price: 65000,
                condition: "Like New",
                image: "https://picsum.photos/seed/tshirt/300/300"
            },
            {
                id: 6,
                name: "Rok Midi Polkadot",
                category: "bawahan",
                price: 75000,
                condition: "Excellent",
                image: "https://picsum.photos/seed/rok/300/300"
            },
            {
                id: 7,
                name: "Scarf Patterned",
                category: "aksesoris",
                price: 35000,
                condition: "New",
                image: "https://picsum.photos/seed/scarf/300/300"
            },
            {
                id: 8,
                name: "Blazer Office",
                category: "outer",
                price: 180000,
                condition: "Good",
                image: "https://picsum.photos/seed/blazer/300/300"
            },
            {
                id: 9,
                name: "Kaos Basic Premium",
                category: "atasan",
                price: 45000,
                condition: "Like New",
                image: "https://picsum.photos/seed/basic/300/300"
            }
        ];

        // Cart state
        let cart = [];

        // Initialize products
        function initProducts() {
            displayProducts(products);
        }

        // Display products
        function displayProducts(productsToShow) {
            const productGrid = document.getElementById('productGrid');
            productGrid.innerHTML = '';

            productsToShow.forEach(product => {
                const productCard = `
                    <div class="col-md-4 col-sm-6">
                        <div class="product-card">
                            <img src="${product.image}" alt="${product.name}" class="product-image">
                            <div class="product-info">
                                <div class="product-category">${product.category}</div>
                                <h3 class="product-title">${product.name}</h3>
                                <span class="product-condition">${product.condition}</span>
                                <div class="product-price">Rp ${product.price.toLocaleString('id-ID')}</div>
                                <button class="btn btn-primary w-100 mt-3" onclick="addToCart(${product.id})">
                                    <i class="bi bi-cart-plus"></i> Tambah ke Keranjang
                                </button>
                            </div>
                        </div>
                    </div>
                `;
                productGrid.innerHTML += productCard;
            });
        }

        // Filter products
        function filterProducts(category) {
            // Update active button
            document.querySelectorAll('.filter-btn').forEach(btn => {
                btn.classList.remove('active');
            });
            event.target.classList.add('active');

            // Filter products
            if (category === 'all') {
                displayProducts(products);
            } else {
                const filtered = products.filter(p => p.category === category);
                displayProducts(filtered);
            }
        }

        // Add to cart
        function addToCart(productId) {
            const product = products.find(p => p.id === productId);
            const existingItem = cart.find(item => item.id === productId);

            if (existingItem) {
                existingItem.quantity++;
            } else {
                cart.push({ ...product, quantity: 1 });
            }

            updateCartCount();
            showToast(`${product.name} ditambahkan ke keranjang!`);
        }

        // Update cart count
        function updateCartCount() {
            const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);
            document.getElementById('cartCount').textContent = totalItems;
        }

        // Open cart modal
        function openCart() {
            updateCartModal();
            const cartModal = new bootstrap.Modal(document.getElementById('cartModal'));
            cartModal.show();
        }

        // Update cart modal
        function updateCartModal() {
            const cartItems = document.getElementById('cartItems');
            const cartTotal = document.getElementById('cartTotal');

            if (cart.length === 0) {
                cartItems.innerHTML = '<p class="text-center">Keranjang belanja kosong</p>';
                cartTotal.textContent = 'Rp 0';
                return;
            }

            let html = '';
            let total = 0;

            cart.forEach(item => {
                const subtotal = item.price * item.quantity;
                total += subtotal;

                html += `
                    <div class="cart-item">
                        <img src="${item.image}" alt="${item.name}">
                        <div class="cart-item-info">
                            <h6>${item.name}</h6>
                            <p class="cart-item-price">Rp ${item.price.toLocaleString('id-ID')}</p>
                            <div class="quantity-control">
                                <button class="quantity-btn" onclick="updateQuantity(${item.id}, -1)">-</button>
                                <span>${item.quantity}</span>
                                <button class="quantity-btn" onclick="updateQuantity(${item.id}, 1)">+</button>
                                <button class="btn btn-sm btn-danger ms-3" onclick="removeFromCart(${item.id})">
                                    <i class="bi bi-trash"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                `;
            });

            cartItems.innerHTML = html;
            cartTotal.textContent = `Rp ${total.toLocaleString('id-ID')}`;
        }

        // Update quantity
        function updateQuantity(productId, change) {
            const item = cart.find(item => item.id === productId);
            if (item) {
                item.quantity += change;
                if (item.quantity <= 0) {
                    removeFromCart(productId);
                } else {
                    updateCartCount();
                    updateCartModal();
                }
            }
        }

        // Remove from cart
        function removeFromCart(productId) {
            cart = cart.filter(item => item.id !== productId);
            updateCartCount();
            updateCartModal();
            showToast('Item dihapus dari keranjang');
        }

        // Checkout
        function checkout() {
            if (cart.length === 0) {
                showToast('Keranjang belanja kosong!');
                return;
            }
            showToast('Terima kasih! Pesanan Anda sedang diproses.');
            cart = [];
            updateCartCount();
            bootstrap.Modal.getInstance(document.getElementById('cartModal')).hide();
        }

        // Show toast notification
        function showToast(message) {
            const toastContainer = document.getElementById('toastContainer');
            const toast = document.createElement('div');
            toast.className = 'custom-toast';
            toast.innerHTML = `<i class="bi bi-check-circle me-2"></i>${message}`;
            
            toastContainer.appendChild(toast);
            
            setTimeout(() => {
                toast.style.animation = 'slideInRight 0.3s ease reverse';
                setTimeout(() => {
                    toast.remove();
                }, 300);
            }, 3000);
        }

        // Submit contact form
        function submitContact(event) {
            event.preventDefault();
            showToast('Pesan Anda telah terkirim! Kami akan segera menghubungi Anda.');
            event.target.reset();
        }

        // Scroll to products
        function scrollToProducts() {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        }

        // Smooth scroll for navigation links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({ behavior: 'smooth' });
                }
            });
        });

        // Initialize on load
        document.addEventListener('DOMContentLoaded', initProducts);
    </script>
</body>
</html>
