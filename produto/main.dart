import 'package:flutter/material.dart';

void main() {
  runApp(const EuNaoToBemApp());
}

// ============================================================
// CORES E TEMA
// ============================================================

const Color primaryColor = Color(0xFF7B61FF);
const Color secondaryColor = Color(0xFFFF7EB6);
const Color backgroundColor = Color(0xFFF7F6FC);
const Color darkText = Color(0xFF27243A);
const Color grayText = Color(0xFF777486);

class EuNaoToBemApp extends StatelessWidget {
  const EuNaoToBemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eu Não Tô Bem',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
        ),
        fontFamily: 'Arial',
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: Colors.grey.shade200),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(
              color: primaryColor,
              width: 2,
            ),
          ),
        ),
      ),
      home: const LoginPage(),
    );
  }
}

// ============================================================
// MODELO DE ATIVIDADE
// ============================================================

class Activity {
  String name;
  DateTime date;
  String type;
  int hours;
  String priority;

  Activity({
    required this.name,
    required this.date,
    required this.type,
    required this.hours,
    required this.priority,
  });
}

// ============================================================
// DADOS
// ============================================================

final List<Activity> activities = [
  Activity(
    name: 'Prova de Matemática',
    date: DateTime.now().add(const Duration(days: 2)),
    type: 'Prova',
    hours: 3,
    priority: 'Alta',
  ),
  Activity(
    name: 'Trabalho de Química',
    date: DateTime.now().add(const Duration(days: 5)),
    type: 'Trabalho',
    hours: 4,
    priority: 'Média',
  ),
  Activity(
    name: 'Lista de exercícios',
    date: DateTime.now().add(const Duration(days: 7)),
    type: 'Atividade',
    hours: 2,
    priority: 'Baixa',
  ),
];

// ============================================================
// LOGIN
// ============================================================

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(28),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 450),
              child: Column(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          primaryColor,
                          secondaryColor,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: const Icon(
                      Icons.favorite_rounded,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),

                  const SizedBox(height: 22),

                  const Text(
                    'Eu Não Tô Bem',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: darkText,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Sistema Inteligente de Prevenção\nda Sobrecarga Estudantil',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: grayText,
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 38),

                  Card(
                    elevation: 0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Entrar',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: darkText,
                            ),
                          ),

                          const SizedBox(height: 20),

                          TextField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              labelText: 'E-mail',
                              prefixIcon: Icon(Icons.email_outlined),
                            ),
                          ),

                          const SizedBox(height: 14),

                          TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Senha',
                              prefixIcon: Icon(Icons.lock_outline),
                            ),
                          ),

                          const SizedBox(height: 22),

                          SizedBox(
                            width: double.infinity,
                            height: 52,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const MainPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: const Text(
                                'Entrar',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 15),

                          SizedBox(
                            width: double.infinity,
                            height: 52,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const CadastroPage(),
                                  ),
                                );
                              },
                              style: OutlinedButton.styleFrom(
                                foregroundColor: primaryColor,
                                side: const BorderSide(
                                  color: primaryColor,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: const Text(
                                'Criar conta',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    'Seu bem-estar acadêmico importa.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: grayText,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// CADASTRO
// ============================================================

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar conta'),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Vamos começar 💜',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: darkText,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Crie sua conta para acompanhar sua rotina acadêmica.',
                  style: TextStyle(color: grayText),
                ),

                const SizedBox(height: 30),

                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                ),

                const SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const MainPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text(
                      'Criar minha conta',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  '🔒 Seus dados devem ser utilizados apenas para auxiliar '
                  'na organização da rotina acadêmica.',
                  style: TextStyle(
                    color: grayText,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// PRINCIPAL
// ============================================================

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  final pages = const [
    DashboardPage(),
    ActivitiesPage(),
    CalendarPage(),
    SupportPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Início',
          ),
          NavigationDestination(
            icon: Icon(Icons.task_alt_outlined),
            selectedIcon: Icon(Icons.task_alt),
            label: 'Atividades',
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_month_outlined),
            selectedIcon: Icon(Icons.calendar_month),
            label: 'Calendário',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_outline),
            selectedIcon: Icon(Icons.favorite),
            label: 'Apoio',
          ),
        ],
      ),
    );
  }
}

// ============================================================
// DASHBOARD
// ============================================================

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  int get totalHours {
    return activities.fold(
      0,
      (sum, activity) => sum + activity.hours,
    );
  }

  String get loadLevel {
    if (totalHours >= 15) return 'Alta';
    if (totalHours >= 8) return 'Moderada';
    return 'Baixa';
  }

  Color get loadColor {
    if (loadLevel == 'Alta') return Colors.red;
    if (loadLevel == 'Moderada') return Colors.orange;
    return Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        primaryColor,
                        secondaryColor,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(width: 12),

                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Olá! 👋',
                        style: TextStyle(
                          fontSize: 14,
                          color: grayText,
                        ),
                      ),
                      Text(
                        'Como está sua rotina?',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: darkText,
                        ),
                      ),
                    ],
                  ),
                ),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none),
                ),
              ],
            ),

            const SizedBox(height: 25),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    primaryColor,
                    Color(0xFF9B82FF),
                  ],
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Indicador de Carga Acadêmica',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    loadLevel,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    '$totalHours horas de atividades registradas',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 18),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: LinearProgressIndicator(
                      value: (totalHours / 20).clamp(0.0, 1.0),
                      minHeight: 9,
                      backgroundColor: Colors.white30,
                      valueColor:
                          const AlwaysStoppedAnimation(Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            if (loadLevel == 'Alta')
              const AlertCard(
                title: 'Atenção à sua carga',
                message:
                    'Você possui muitas atividades concentradas. '
                    'Considere reorganizar seus prazos e prioridades.',
                icon: Icons.warning_amber_rounded,
              )
            else
              const AlertCard(
                title: 'Sua rotina está organizada',
                message:
                    'Continue acompanhando suas atividades e distribuindo '
                    'as tarefas ao longo da semana.',
                icon: Icons.check_circle_outline,
              ),

            const SizedBox(height: 22),

            const Text(
              'Resumo da sua rotina',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: darkText,
              ),
            ),

            const SizedBox(height: 14),

            Row(
              children: [
                Expanded(
                  child: InfoCard(
                    icon: Icons.assignment_outlined,
                    title: 'Atividades',
                    value: '${activities.length}',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: InfoCard(
                    icon: Icons.schedule,
                    title: 'Horas',
                    value: '$totalHours h',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: InfoCard(
                    icon: Icons.priority_high,
                    title: 'Prioridade alta',
                    value:
                        '${activities.where((a) => a.priority == 'Alta').length}',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: InfoCard(
                    icon: Icons.event,
                    title: 'Próxima tarefa',
                    value: activities.isEmpty
                        ? '-'
                        : '${activities.first.date.day}/${activities.first.date.month}',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            const Text(
              'Sugestão de organização',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: darkText,
              ),
            ),

            const SizedBox(height: 12),

            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.lightbulb_outline,
                    color: Colors.orange,
                    size: 28,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Distribua as atividades de maior prioridade '
                      'ao longo dos dias para evitar concentração '
                      'excessiva de tarefas.',
                      style: TextStyle(
                        color: grayText,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const InstitutionalPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.bar_chart),
                label: const Text('Painel institucional'),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Dados apresentados de forma agregada e anônima.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: grayText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// CARDS
// ============================================================

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: primaryColor,
            size: 27,
          ),
          const SizedBox(height: 12),
          Text(
            value,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: darkText,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              color: grayText,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}

class AlertCard extends StatelessWidget {
  final String title;
  final String message;
  final IconData icon;

  const AlertCard({
    super.key,
    required this.title,
    required this.message,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.orange.shade100,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.orange,
            size: 28,
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: darkText,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  message,
                  style: const TextStyle(
                    color: grayText,
                    height: 1.4,
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

// ============================================================
// ATIVIDADES
// ============================================================

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({super.key});

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  void addActivity() {
    final nameController = TextEditingController();
    final hoursController = TextEditingController();

    String type = 'Atividade';
    String priority = 'Média';

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
            return AlertDialog(
              title: const Text('Nova atividade'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        labelText: 'Nome da atividade',
                      ),
                    ),

                    const SizedBox(height: 12),

                    TextField(
                      controller: hoursController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Horas estimadas',
                      ),
                    ),

                    const SizedBox(height: 12),

                    DropdownButtonFormField<String>(
                      value: type,
                      decoration: const InputDecoration(
                        labelText: 'Tipo',
                      ),
                      items: [
                        'Prova',
                        'Trabalho',
                        'Atividade',
                        'Apresentação',
                      ]
                          .map(
                            (item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setDialogState(() {
                          type = value!;
                        });
                      },
                    ),

                    const SizedBox(height: 12),

                    DropdownButtonFormField<String>(
                      value: priority,
                      decoration: const InputDecoration(
                        labelText: 'Prioridade',
                      ),
                      items: [
                        'Alta',
                        'Média',
                        'Baixa',
                      ]
                          .map(
                            (item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setDialogState(() {
                          priority = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (nameController.text.trim().isEmpty) return;

                    activities.add(
                      Activity(
                        name: nameController.text,
                        date: DateTime.now().add(
                          const Duration(days: 3),
                        ),
                        type: type,
                        hours:
                            int.tryParse(hoursController.text) ?? 1,
                        priority: priority,
                      ),
                    );

                    setState(() {});
                    Navigator.pop(context);
                  },
                  child: const Text('Adicionar'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Minhas atividades',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: addActivity,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: addActivity,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.add),
        label: const Text('Nova atividade'),
      ),
      body: activities.isEmpty
          ? const Center(
              child: Text('Nenhuma atividade cadastrada.'),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(18),
              itemCount: activities.length,
              itemBuilder: (context, index) {
                final activity = activities[index];

                Color priorityColor;

                if (activity.priority == 'Alta') {
                  priorityColor = Colors.red;
                } else if (activity.priority == 'Média') {
                  priorityColor = Colors.orange;
                } else {
                  priorityColor = Colors.green;
                }

                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(15),
                    leading: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: primaryColor.withOpacity(.1),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Icon(
                        Icons.assignment_outlined,
                        color: primaryColor,
                      ),
                    ),
                    title: Text(
                      activity.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: darkText,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Text(
                        '${activity.type} • ${activity.hours}h • '
                        '${activity.date.day}/${activity.date.month}',
                        style: const TextStyle(
                          color: grayText,
                        ),
                      ),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          color: priorityColor,
                          size: 12,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          activity.priority,
                          style: TextStyle(
                            fontSize: 11,
                            color: priorityColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    onLongPress: () {
                      setState(() {
                        activities.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
    );
  }
}

// ============================================================
// CALENDÁRIO
// ============================================================

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calendário acadêmico',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  primaryColor,
                  secondaryColor,
                ],
              ),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${_monthName(now.month)} ${now.year}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Acompanhe os períodos de maior concentração de atividades.',
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          ...activities.map(
            (activity) => Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      color: primaryColor.withOpacity(.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${activity.date.day}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                        Text(
                          _monthName(activity.date.month)
                              .substring(0, 3),
                          style: const TextStyle(
                            fontSize: 10,
                            color: grayText,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          activity.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: darkText,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${activity.type} • ${activity.hours} horas',
                          style: const TextStyle(
                            color: grayText,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Período crítico',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: darkText,
            ),
          ),

          const SizedBox(height: 10),

          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(.08),
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.warning_amber_rounded,
                  color: Colors.orange,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Observe semanas com várias avaliações e '
                    'atividades concentradas.',
                    style: TextStyle(
                      color: grayText,
                      height: 1.4,
                    ),
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

// ============================================================
// APOIO
// ============================================================

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Área de apoio',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  primaryColor,
                  secondaryColor,
                ],
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 35,
                ),
                SizedBox(height: 15),
                Text(
                  'Você não precisa dar conta de tudo sozinho.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    height: 1.25,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Organizar sua rotina pode ajudar a identificar '
                  'momentos de maior sobrecarga.',
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          const SupportCard(
            icon: Icons.schedule,
            title: 'Organize seu tempo',
            text:
                'Divida tarefas maiores em pequenas etapas e '
                'evite concentrar tudo próximo ao prazo.',
          ),

          const SupportCard(
            icon: Icons.pause_circle_outline,
            title: 'Faça pausas',
            text:
                'Inclua momentos de descanso durante períodos '
                'de estudo e atividades.',
          ),

          const SupportCard(
            icon: Icons.people_outline,
            title: 'Procure apoio',
            text:
                'Quando necessário, converse com professores, '
                'familiares ou profissionais responsáveis pelo apoio estudantil.',
          ),

          const SizedBox(height: 15),

          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Importante',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: darkText,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'O Eu Não Tô Bem é uma ferramenta de prevenção '
                  'e organização acadêmica. Ele não realiza '
                  'diagnósticos médicos ou psicológicos e não substitui '
                  'profissionais especializados.',
                  style: TextStyle(
                    color: grayText,
                    height: 1.5,
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

class SupportCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String text;

  const SupportCard({
    super.key,
    required this.icon,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              icon,
              color: primaryColor,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: darkText,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  text,
                  style: const TextStyle(
                    color: grayText,
                    height: 1.4,
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

// ============================================================
// PAINEL INSTITUCIONAL
// ============================================================

class InstitutionalPage extends StatelessWidget {
  const InstitutionalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Painel institucional',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.analytics_outlined,
                  color: primaryColor,
                  size: 35,
                ),
                SizedBox(height: 12),
                Text(
                  'Visão geral',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: darkText,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Indicadores apresentados de maneira '
                  'agregada e anônima.',
                  style: TextStyle(
                    color: grayText,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),

          Row(
            children: const [
              Expanded(
                child: InfoCard(
                  icon: Icons.groups_outlined,
                  title: 'Estudantes',
                  value: '120',
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: InfoCard(
                  icon: Icons.warning_amber_outlined,
                  title: 'Alta carga',
                  value: '18%',
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            children: const [
              Expanded(
                child: InfoCard(
                  icon: Icons.calendar_today_outlined,
                  title: 'Períodos críticos',
                  value: '3',
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: InfoCard(
                  icon: Icons.trending_up,
                  title: 'Tendência',
                  value: 'Atenção',
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Privacidade dos dados',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: darkText,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'O painel não apresenta informações individuais '
                  'dos estudantes. Os dados são utilizados de forma '
                  'agregada para identificar padrões de carga acadêmica.',
                  style: TextStyle(
                    color: grayText,
                    height: 1.5,
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

// ============================================================
// FUNÇÃO AUXILIAR
// ============================================================

String _monthName(int month) {
  const months = [
    '',
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro',
  ];

  return months[month];
}
