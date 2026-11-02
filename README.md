# Flappy Bird Attempt 1
Flappy Bird Attempt 1 — A clone of Flappy Bird built using Godot & GDScript.

## Features
- 1 Life
- Pipes
- IMPORTANT: it doesn't work

## How to Play
Controls:
- Spacebar / Left Click — Flap / Jump.

Objective:
- Fly through the pipes to get the highest score.

## Setup & Installation
- **Prerequisites**: Godot version 4.7 or later.
- **Clone the repo**: https://github.com/viSerpa/flappy_bird_attempt_1.git
- **Run the game**: Press F5 to play game.

## What I Learned
- **The Value of Architecture & Clean Code:** Discovered firsthand how "spaghetti code," unorganized nodes, and unmanaged signals lead to unresolvable game-state bugs (like the infinite death loop). This project taught me why strict scene organization is required before coding begins.
- **Parallax Background & Infinite Scrolling:** Explored Godot's specialized background nodes (like `ParallaxBackground` and `Parallax2D`) to successfully create the illusion of forward motion through continuous texture repeating.
- **Object Lifecycle Management (Spawning/Queueing):** Learned the programmatic logic required for runner games—instantiating obstacles ahead of the player at random offsets, moving them across the screen, and using `queue_free()` to clean up memory when they go off-screen.
- **Collision Shape Offsets & Debugging:** Encountered and debugged offset physics hitboxes on compound moving obstacles (the upper/lower pipe scenes), learning the importance of precise transform alignment in 2D collision shapes.

### Story if you care
This is my second Godot project after following the Brackeys guide on how to make a game. I decided to this project on my own as I thought Flappy Bird would be simple enough for me to recreate on my own.

The first hurdle I encountered was make the infinite scroll effect. I can't recall, but I ended up using a specific node used for making the infinite scroll effect.

The second hurdle I faced was the Pipes. I wasn't experienced enough to know that I had to instantiate the pipes at the end and move them towards the player then delete the pipes when they're too far.
That was one part of the pipe problem though. The second problem came with the hitbox of the pipes. For some reason the pipes hitboxes were very off and were killing the player in strange spots.
I can't recall what I did, but I managed to fix it.

The third hurdle that ended up getting the better of me were the player states. If you play the game right now, the player constantly dies over and over again. I couldn't find the fix to this as my 
organization was very bad. Nodes were everywhere and unorganized, and I had signals everywhere. It was spaghetti code.
