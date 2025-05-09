import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Emprende Chimba',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Acción para regresar
          },
        ),
        title: const Text('Iniciar Sesión'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Correo Electrónico',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BakeryListScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Aceptar',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
              child: const Text('¿No tienes cuenta? Regístrate aquí'),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Registrarse'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Nombre de la empresa',
                border: OutlineInputBorder(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4.0, bottom: 16.0),
              child: Text(
                'Obligatorio',
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Dirección',
                border: OutlineInputBorder(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4.0, bottom: 16.0),
              child: Text(
                'Obligatorio',
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Correo Electrónico',
                border: OutlineInputBorder(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4.0, bottom: 16.0),
              child: Text(
                'Obligatorio',
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4.0, bottom: 16.0),
              child: Text(
                'Obligatorio',
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
            TextField(
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Descripción de la empresa',
                border: OutlineInputBorder(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4.0, bottom: 16.0),
              child: Text(
                'Obligatorio',
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BakeryListScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Registrarse',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BakeryListScreen extends StatelessWidget {
  const BakeryListScreen({super.key});

  final List<Map<String, String>> bakeries = const [
    {
      "name": "Pastelería de Gracia",
      "address": "Calle ejemplo #75",
      "description": "Ofrecemos variedad de postres...",
      "image": "assets/images/tortaSelvaNegra.png",
    },
    {
      "name": "Dulces Momentos",
      "address": "Avenida Dulce #123",
      "description": "Especialistas en tortas personalizadas...",
      "image": "assets/images/cheesecakeDeFresa.png",
    },
    {
      "name": "Sabores Caseros",
      "address": "Carrera 45 #67-89",
      "description": "Postres con el sabor de casa...",
      "image": "assets/images/galletasDeAvena.png",
    },
    {
      "name": "Delicias al Horno",
      "address": "Calle 10 #20-30",
      "description": "Panadería y pastelería artesanal...",
      "image": "assets/images/tortaDeZanahoria.png",
    },
    {
      "name": "Postres y Más",
      "address": "Diagonal 15 #45-67",
      "description": "Postres para toda ocasión...",
      "image": "assets/images/browniesDeChocolate.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: const Text('Lista de Restaurantes Locales'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: const Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: const Text('Estadísticas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StatisticsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Buscar restaurantes',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: bakeries.length,
                itemBuilder: (context, index) {
                  final bakery = bakeries[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          bakery["image"]!,
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  child: Text(bakery["name"]![0]),
                                ),
                                title: Text(bakery["name"]!),
                                subtitle: Text(bakery["address"]!),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                bakery["description"]!,
                                style: const TextStyle(fontSize: 14),
                              ),
                              const SizedBox(height: 8),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            BakeryProductsScreen(
                                          bakeryName: bakery["name"]!,
                                          bakeryImage: bakery["image"]!,
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text('Ver más'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BakeryProductsScreen extends StatelessWidget {
  final String bakeryName;
  final String bakeryImage;

  const BakeryProductsScreen({
    super.key,
    required this.bakeryName,
    required this.bakeryImage,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, List<Map<String, String>>> bakeryProducts = {
      "Pastelería de Gracia": [
        {
          "productName": "Torta Selva Negra",
          "productDescription": "Torta típica de la cocina de Baden...",
          "productImage": "assets/images/tortaSelvaNegra.png",
          "productPrice": "\$40.000",
        },
        {
          "productName": "Cheesecake de Fresa",
          "productDescription": "Delicioso cheesecake con fresas frescas...",
          "productImage": "assets/images/cheesecakeDeFresa.png",
          "productPrice": "\$35.000",
        },
      ],
      "Dulces Momentos": [
        {
          "productName": "Brownies de Chocolate",
          "productDescription": "Brownies caseros con trozos de chocolate...",
          "productImage": "assets/images/browniesDeChocolate.png",
          "productPrice": "\$25.000",
        },
        {
          "productName": "Cupcakes de Vainilla",
          "productDescription": "Cupcakes suaves con crema de vainilla...",
          "productImage": "assets/images/cupcakeDeVainilla.png",
          "productPrice": "\$20.000",
        },
      ],
      "Sabores Caseros": [
        {
          "productName": "Galletas de Avena",
          "productDescription": "Galletas saludables con avena y pasas...",
          "productImage": "assets/images/galletasDeAvena.png",
          "productPrice": "\$15.000",
        },
        {
          "productName": "Torta de Zanahoria",
          "productDescription": "Torta casera con zanahoria y nueces...",
          "productImage": "assets/images/tortaDeZanahoria.png",
          "productPrice": "\$30.000",
        },
      ],
    };

    final products = bakeryProducts[bakeryName] ?? [];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(bakeryName),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              bakeryImage,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            const Text(
              "Productos",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    productName: product["productName"]!,
                    productDescription: product["productDescription"]!,
                    productImage: product["productImage"]!,
                    productPrice: product["productPrice"]!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String productName;
  final String productDescription;
  final String productImage;
  final String productPrice;

  const ProductCard({
    super.key,
    required this.productName,
    required this.productDescription,
    required this.productImage,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            productImage,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(productDescription),
                const SizedBox(height: 8),
                Text(
                  productPrice,
                  style: const TextStyle(color: Colors.green, fontSize: 16),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailScreen(
                            productName: productName,
                            productImage: productImage,
                            productPrice: productPrice,
                          ),
                        ),
                      );
                    },
                    child: const Text("Ver más"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productPrice;

  const ProductDetailScreen({
    super.key,
    required this.productName,
    required this.productImage,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Detalle del Producto'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              productImage,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              productName,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Chip(label: Text("Pastelería")),
            const SizedBox(height: 8),
            Text(
              productPrice,
              style: const TextStyle(fontSize: 24, color: Colors.green),
            ),
            const SizedBox(height: 8),
            const Text("Contiene huevos, leche, chocolate, cerezas"),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  // Acción al presionar "Comprar"
                },
                child: const Text(
                  "Comprar",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estadísticas'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Resumen de Ventas',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildSalesSummary(),
            const SizedBox(height: 24),
            const Text(
              'Productos Más Vendidos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildTopProducts(),
            const SizedBox(height: 24),
            const Text(
              'Ventas Semanales',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildSalesChart(),
          ],
        ),
      ),
    );
  }

  Widget _buildSalesSummary() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _StatCard(title: 'Total Ventas', value: '\$1.200.000'),
        _StatCard(title: 'Pedidos', value: '150'),
      ],
    );
  }

  Widget _buildTopProducts() {
    final products = [
      {'name': 'Brownies', 'sales': '40'},
      {'name': 'Cheesecake', 'sales': '35'},
      {'name': 'Galletas de Avena', 'sales': '30'},
    ];

    return Column(
      children: products.map((p) {
        return ListTile(
          leading: const Icon(Icons.cake),
          title: Text(p['name']!),
          trailing: Text('${p['sales']} ventas'),
        );
      }).toList(),
    );
  }

  Widget _buildSalesChart() {
    return SizedBox(
      height: 200,
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, _) {
                  const days = ['L', 'M', 'X', 'J', 'V', 'S', 'D'];
                  return Text(days[value.toInt() % 7]);
                },
                interval: 1,
              ),
            ),
          ),
          borderData: FlBorderData(show: true),
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(0, 2),
                FlSpot(1, 3.5),
                FlSpot(2, 2.5),
                FlSpot(3, 5),
                FlSpot(4, 4),
                FlSpot(5, 4.5),
                FlSpot(6, 6),
              ],
              isCurved: true,
              barWidth: 3,
              color: Colors.purple,
              dotData: FlDotData(show: false),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;

  const _StatCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(value, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
