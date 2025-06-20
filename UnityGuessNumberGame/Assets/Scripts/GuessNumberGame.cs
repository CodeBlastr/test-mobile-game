using UnityEngine;
using UnityEngine.UI;

public class GuessNumberGame : MonoBehaviour
{
    public InputField guessInputField;
    public Text resultText;
    private int target;

    void Start()
    {
        ResetGame();
    }

    public void OnSubmitGuess()
    {
        if (int.TryParse(guessInputField.text, out int guess))
        {
            int difference = Mathf.Abs(target - guess);
            resultText.text = $"I was thinking of {target}.\nYour guess {guess} was {difference} away.";
            ResetGame();
        }
        else
        {
            resultText.text = "Please enter a valid number.";
        }
        guessInputField.text = "";
    }

    private void ResetGame()
    {
        target = Random.Range(1, 101);
    }
}
