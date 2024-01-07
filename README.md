# Flutter Notes App with Cubits and Hive

## Description

This Flutter notes app is a simple yet powerful application that allows users to create, edit, and delete notes. The app leverages the Cubit state management pattern for efficient and scalable state management, and it utilizes Hive as a local NoSQL database for data persistence.

### Features:

- Create new notes with a title and content.
- Edit existing notes.
- Delete notes.
- Efficient state management with Cubits.
- Local data persistence using Hive.

## Instructions for Testing and Running the App

### Prerequisites

1. **Flutter SDK:** Make sure you have Flutter installed on your machine. If not, you can follow the installation instructions [here](https://flutter.dev/docs/get-started/install).

2. **Dart SDK:** Ensure that Dart SDK is installed along with Flutter. You can check the Dart version by running `dart --version` in your terminal.

### Clone the Repository

```bash

# Clone the Repository
git clone 
cd your-notes-app

# Setup Hive
flutter pub get
flutter pub run build_runner build

# Run the App
flutter run
