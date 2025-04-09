   import 'package:flutter/material.dart';

  class LevelButton extends StatelessWidget {
    final int levelNumber;
    final bool isUnlocked;
    final bool isCompleted;
    final VoidCallback onTap;

    const LevelButton({
      super.key,
      required this.levelNumber,
      required this.isUnlocked,
      required this.isCompleted,
      required this.onTap,
    });

    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isUnlocked ? (isCompleted ? Colors.green.shade400 : Colors.blue.shade400) : Colors.grey.shade400,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Level $levelNumber',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      isCompleted
                          ? 'Completed'
                          : (isUnlocked ? 'Unlocked' : 'Locked'),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              if (!isUnlocked)
                Center(
                  child: Icon(
                    Icons.lock,
                    color: Colors.white.withOpacity(0.7),
                    size: 40,
                  ),
                ),
              if (isCompleted)
                Positioned(
                  top: 10,
                  right: 10,
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
            ],
          ),
        ),
      );
    }
  }
