import 'package:flutter/material.dart';
import 'widgets/stat_card.dart';

class SocialStatsPage extends StatelessWidget {
  const SocialStatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5FF),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Social Stats",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(   // 🔥 umumiy scroll
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Social Media Analytics",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                "\$50000 bla bla goes on...",
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink,
                ),
              ),

              const SizedBox(height: 30),

              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true, // 🔥 scroll ichida ishlashi uchun zarur
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.85,
                children: const [
                  StatCard(value: "245", label: "Posts", icon: Icons.edit, color: Colors.blue),
                  StatCard(value: "1.2K", label: "Followers", icon: Icons.people_alt, color: Colors.green),
                  StatCard(value: "356", label: "Following", icon: Icons.person_add, color: Colors.orange),
                  StatCard(value: "5.2K", label: "Likes", icon: Icons.favorite, color: Colors.red),
                  StatCard(value: "892", label: "Comments", icon: Icons.chat_bubble, color: Colors.purple),
                  StatCard(value: "156", label: "Shares", icon: Icons.share, color: Colors.teal),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
