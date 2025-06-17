# 🔆 NeonToggle

**NeonToggle** is a minimalist light-switch puzzle game built using **Godot Engine 4.4.1 (.NET)**. The objective is simple: toggle switches to turn on all the lights. But each switch affects multiple lights, making the solution trickier than it looks.

---

## 🎮 Gameplay

- You are presented with a set of lights and switches.
- Pressing a switch toggles one or more lights (on/off).
- When all lights are **ON**, you win!


---

## 🚀 Features

- 🎛️ Interactive UI using Godot’s `Control` nodes  
- 💡 Dynamic light behavior with visual feedback  
- 🧠 Puzzle logic based on switch combinations  
- ✅ Win condition detection  
- 📱 Ready to be adapted for mobile interface

---

## 📁 Project Structure

```text
Main.tscn
 ├── MainLayout (VBoxContainer)
 │   ├── LightContainer (HBoxContainer)
 │   │   ├── Light1 (TextureRect)
 │   │   ├── Light2 (TextureRect)
 │   │   └── Light3 (TextureRect)
 │   ├── ButtonContainer (HBoxContainer)
 │   │   ├── Button1
 │   │   ├── Button2
 │   │   └── Button3
 │   └── WinLabel (Label)
Main.gd
