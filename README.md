# PC16 Milestone 2 
PC16 – Mobile Development with Lab  

 Project Overview
This repository contains the Milestone 2 terminal assessment for PC16. The project synthesizes Dart fundamentals, object-oriented principles (OOP), inheritance, abstract classes, and asynchronous programming (`async`/`await`) into a single executable application.

## ✍️ Written Reflection (Design Choices & TANGLAW Alignment)
> In this project, I designed a modular Dart application to model a student grading system using core object-oriented principles. I built an abstract `Student` parent class to establish a standard data contract while allowing child classes to implement specialized logic. The `ITStudent` class extends this foundation, overriding `calculateFinalGrade` to compute course-specific weighted averages cleanly. I integrated asynchronous programming (`async`/`await`) with `Future.delayed` to simulate retrieving records from an external database without blocking system execution. Additionally, I implemented a `try-catch` block during data fetching to safely handle unexpected runtime exceptions and maintain app stability. Guided by NTC’s TANGLAW spirit of purposeful and intentional design, every class and function was structured for high readability, maintainability, and easy peer auditing.



📂 Repository Contents
 `bin/main.dart` — Completed exam code with inline walkthrough comments (`/// WHAT` and `/// WHY`).
 `artifacts/` — Artifact evidence collected from Weeks 7 through 11.

---

🚀 How to Run the Code
1. Ensure the Dart SDK is installed on your local machine.
2. Open terminal in the project root directory.
3. Run the following command:
   ```bash
   dart run bin/main.dart
   ```
