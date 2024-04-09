 ### **Weather App**

This Weather is a mobile application built with Flutter and GetX that allows users to search for a city and view its current weather conditions. The app displays information about the temperature, humidity, wind speed, and precipitation for the selected city. The app also supports multiple languages, so users can view the weather information in their preferred language.

### **Features**

- Search for a city and view its current weather conditions
- Display information about temperature, humidity, wind speed, and precipitation
- Support for multiple languages

### **Installation**

To Install and run the app:

1. Clone this repository to your local machine
2. Add Google Map API key under `lib/service/api.dart` file
3. Open the project in your preferred development environment, such as Android Studio or Visual Studio Code
4. Install any required dependencies by running `flutter pub get`
5. Run the app using `flutter run`

### **Usage**

To use the App:

1. Open the app on your mobile device
2. Navigate to the settings Page by clicking on the hamburger menu at the top right corner
3. Open the location screen
4. Search for a city using the search bar
6. Select the city by clicking on it
7. View the current weather conditions for the selected city

### **Data sources**

Wingu uses the OpenWeatherMap API to retrieve weather data for cities around the world. You can find more information about the OpenWeatherMap API at https://openweathermap.org/api, and Google Places API to retrieve the list of cities around the world.

### **Limitations**

Wingu may not be able to display weather information for certain cities, depending on the availability of data from the OpenWeatherMap API. Additionally, the accuracy of the weather information may vary depending on the data source and the location.


