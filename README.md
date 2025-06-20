# GuessNumberGame

This repository now contains a minimal version of "Guess Which Number I'm Thinking Of?" implemented with **Unity**. The intention is to use the same technology stack that we'll rely on when we move toward building a larger project like *Whiteout Survival*.

## Game Play
1. The game randomly selects a number from 1 to 100.
2. Enter your guess in the on-screen input field and click **Submit**.
3. The difference between your guess and the target number is displayed, and a new number is generated for the next round.

## Building the App
1. Install the [Unity](https://unity.com/) editor.
2. Create a new Unity project (2D or 3D).
3. Copy the contents of the `UnityGuessNumberGame/Assets` folder into your project's `Assets` folder.
4. Follow the setup instructions in `UnityGuessNumberGame/README.md` to configure the scene and UI.
5. Play the scene to test the game.

## Building for WebGL
1. In Unity's **File > Build Settings**, choose **WebGL** and click **Switch Platform**.
2. Use **Build** to output the game to `UnityGuessNumberGame/WebGLBuild/`.

## Running Locally with Docker
1. Install [Docker](https://www.docker.com/get-started) if you don't already have it.
2. After building for WebGL, run the following commands from this repository:
   ```bash
   docker build -t guess-number-webgl .
   docker run -it --rm -p 8080:80 guess-number-webgl
   ```
3. Open `http://localhost:8080` in your browser to play the game.

By using Unity from the start, we lay the groundwork for expanding this simple game into a more complex experience down the road.
