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
                  foregroundColor: Colors.white, // Asegura contraste en el texto
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
                  style: TextStyle(fontSize: 18, color: Colors.white), // Color blanco explícito
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
                  foregroundColor: Colors.white, // Contraste para el texto
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
                  style: TextStyle(fontSize: 18, color: Colors.white), // Color blanco explícito
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
      "address": "Cra. 7 #45-12, Bogotá",
      "description": "Ofrecemos variedad de postres...",
      "image": "assets/images/tortaSelvaNegra.png",
    },
    {
      "name": "Dulces Momentos",
      "address": "Cl. 85 #12-34, Bogotá",
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
        title: const Text('Emprendimientos Locales'),
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
              height: 100,
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
                  foregroundColor: Colors.white, // Contraste para el texto
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  // Acción al presionar "Comprar"
                },
                child: const Text(
                  "Comprar",
                  style: TextStyle(fontSize: 18, color: Colors.white), // Color blanco explícito
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
    return DefaultTabController(
      length: 3, // Cambia a 3 pestañas
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Estadísticas'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Ventas'),
              Tab(text: 'Clientes'),
              Tab(text: 'Sugerencias'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            _SalesStatisticsTab(),
            _CustomerStatisticsTab(),
            _SuggestionsTab(), // Nueva pestaña
          ],
        ),
      ),
    );
  }
}

class _SalesStatisticsTab extends StatelessWidget {
  const _SalesStatisticsTab();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const Text(
            'Resumen de Ventas',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          _buildSalesSummary(),
          const SizedBox(height: 16),
          _buildAverageSpending(), // Nueva información de gasto promedio
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

  Widget _buildAverageSpending() {
    // Ejemplo: Total ventas / pedidos = gasto promedio
    final double totalVentas = 1200000;
    final int pedidos = 150;
    final double promedio = totalVentas / pedidos;

    return Card(
      color: Colors.purple[50],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const Icon(Icons.account_balance_wallet, color: Colors.purple),
            const SizedBox(width: 12),
            const Text(
              'Gasto promedio por cliente:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text(
              '\$${promedio.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
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

class _CustomerStatisticsTab extends StatelessWidget {
  const _CustomerStatisticsTab();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const Text(
            'Resumen de Clientes',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              _StatCard(title: 'Clientes totales', value: '85'),
              _StatCard(title: 'Clientes nuevos', value: '12'),
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            'Clientes más frecuentes',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          _buildTopCustomers(),
          const SizedBox(height: 24),
          const Text(
            'Distribución por género',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          _buildGenderPieChart(),
          const SizedBox(height: 24),
          const Text(
            'Distribución por grupo de edad',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          _buildAgeBarChart(),
        ],
      ),
    );
  }

  Widget _buildTopCustomers() {
    final customers = [
      {'name': 'Ana López', 'orders': '15'},
      {'name': 'Carlos Pérez', 'orders': '12'},
      {'name': 'María Gómez', 'orders': '10'},
    ];

    return Column(
      children: customers.map((c) {
        return ListTile(
          leading: const Icon(Icons.person),
          title: Text(c['name']!),
          trailing: Text('${c['orders']} pedidos'),
        );
      }).toList(),
    );
  }

  Widget _buildGenderPieChart() {
    return SizedBox(
      height: 180,
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
              color: Colors.purple,
              value: 60,
              title: 'Mujeres\n60%',
              radius: 60,
              titleStyle: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            PieChartSectionData(
              color: Colors.pinkAccent,
              value: 35,
              title: 'Hombres\n35%',
              radius: 60,
              titleStyle: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            PieChartSectionData(
              color: Colors.grey,
              value: 5,
              title: 'Otro\n5%',
              radius: 60,
              titleStyle: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
          sectionsSpace: 4,
          centerSpaceRadius: 30,
        ),
      ),
    );
  }

  Widget _buildAgeBarChart() {
    return SizedBox(
      height: 200,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 40,
          barTouchData: BarTouchData(enabled: false),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true, reservedSize: 28),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, _) {
                  switch (value.toInt()) {
                    case 0:
                      return const Text('18-25');
                    case 1:
                      return const Text('26-35');
                    case 2:
                      return const Text('36-45');
                    case 3:
                      return const Text('46-60');
                    case 4:
                      return const Text('60+');
                    default:
                      return const Text('');
                  }
                },
                interval: 1,
              ),
            ),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          borderData: FlBorderData(show: false),
          barGroups: [
            BarChartGroupData(x: 0, barRods: [
              BarChartRodData(toY: 25, color: Colors.purple, width: 18),
            ]),
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(toY: 35, color: Colors.pinkAccent, width: 18),
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(toY: 20, color: Colors.orange, width: 18),
            ]),
            BarChartGroupData(x: 3, barRods: [
              BarChartRodData(toY: 15, color: Colors.green, width: 18),
            ]),
            BarChartGroupData(x: 4, barRods: [
              BarChartRodData(toY: 5, color: Colors.blueGrey, width: 18),
            ]),
          ],
        ),
      ),
    );
  }
}

class _SuggestionsTab extends StatelessWidget {
  const _SuggestionsTab();

  @override
  Widget build(BuildContext context) {
    // Datos simulados para personalizar sugerencias
    final double gastoPromedio = 1200000 / 150; // $8.000
    final topProduct = 'Brownies';
    final topAgeGroup = '26-35';
    final topGender = 'Mujeres';

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const Text(
            'Sugerencias personalizadas para tu negocio',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.trending_up, color: Colors.purple),
            title: const Text('Potencia tu producto más vendido'),
            subtitle: Text('Los $topProduct son los productos más vendidos. Considera ofrecer combos o promociones especiales para aumentar aún más sus ventas.'),
          ),
          ListTile(
            leading: const Icon(Icons.group, color: Colors.pinkAccent),
            title: const Text('Enfócate en tu grupo de edad principal'),
            subtitle: Text('La mayoría de tus clientes tienen entre $topAgeGroup años. Crea campañas y productos dirigidos a este segmento para incrementar la fidelización.'),
          ),
          ListTile(
            leading: const Icon(Icons.woman, color: Colors.purple),
            title: const Text('Aprovecha la preferencia de género'),
            subtitle: Text('El $topGender representa la mayor parte de tu clientela. Personaliza la comunicación y promociones para este público.'),
          ),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet, color: Colors.green),
            title: const Text('Aumenta el gasto promedio'),
            subtitle: Text('El gasto promedio por cliente es de \$${gastoPromedio.toStringAsFixed(0)}. Ofrece productos complementarios o incentiva compras mayores para elevar este valor.'),
          ),
          const ListTile(
            leading: Icon(Icons.person_add, color: Colors.blue),
            title: Text('Capta nuevos clientes'),
            subtitle: Text('Considera campañas de referidos o descuentos para primeras compras, ya que tu base de clientes nuevos es de 12 este periodo.'),
          ),
          const ListTile(
            leading: Icon(Icons.feedback, color: Colors.teal),
            title: Text('Escucha a tus clientes frecuentes'),
            subtitle: Text('Tus clientes más frecuentes pueden darte ideas para nuevos productos o mejoras. Haz encuestas o entrevistas breves.'),
          ),
        ],
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
