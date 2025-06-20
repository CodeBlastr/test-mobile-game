# Unity Guess Number Game

This folder contains a minimal Unity implementation of a "Guess Which Number I'm Thinking Of?" game. The goal is to use Unity so we can smoothly transition to building a much larger game, similar to *Whiteout Survival*, in the future.

## Getting Started
1. Create a new Unity project (either 2D or 3D).
2. Copy the `Assets` folder from this directory into your Unity project.
3. Create a simple scene with a Canvas that includes:
   - an **InputField** for entering guesses,
   - a **Button** to submit the guess,
   - a **Text** element for displaying the result.
4. Add an empty `GameObject` to the scene and attach the `GuessNumberGame` script found in `Assets/Scripts`.
5. In the Inspector, drag the InputField, Button, and Text UI elements onto the corresponding fields of the script.
6. Link the Button's **OnClick** event to call the `OnSubmitGuess` function.
7. Run the scene to play.

## WebGL Build
1. Open **File > Build Settings** in Unity.
2. Select **WebGL** and click **Switch Platform** if needed.
3. Choose **Build** and output to `UnityGuessNumberGame/WebGLBuild/`.

Once built, you can serve the files locally with the `Dockerfile` in the repo root.

Whenever a guess is submitted, the script reports the difference between the guess and the randomly chosen number (1–100) and then selects a new number for the next round.
