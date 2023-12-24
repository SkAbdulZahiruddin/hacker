#!/usr/bin/python3
import pyttsx3
import speech_recognition as sr

def speak(text):
    engine = pyttsx3.init()
    engine.say(text)
    engine.runAndWait()

def listen():
    recognizer = sr.Recognizer()
    with sr.Microphone() as source:
        print("Listening...")
        audio = recognizer.listen(source)
        try:
            text = recognizer.recognize_google(audio)
            print("You said:", text)
            return text.lower()
        except sr.UnknownValueError:
            print("Sorry, I couldn't understand that.")
            return None
        except sr.RequestError as e:
            print(f"Error connecting to Google API: {e}")
            return None

def main():
    speak("Hello! I am Jarvis. How can I help you today?")

    while True:
        command = listen()

        if command:
            if "stop" in command or "exit" in command:
                speak("Goodbye! Have a great day.")
                break
            elif "introduce yourself" in command:
                speak("I am Jarvis, your personal assistant.")
            else:
                speak("Sorry, I don't understand that command.")

if __name__ == "__main__":
    main()
