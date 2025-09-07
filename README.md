# Task Management System App (TMS)

## Description

A Flutter-based task management application (UI only) that helps users organize and track their tasks across different categories like Personal, Work, Health, and Others. The app features a clean UI with navigation drawer, bottom navigation, and premium upgrade prompts.

## Features

- **Task Categorization**: Organize tasks into Personal, Work, Health, and Other categories
- **Grid View**: Visual grid display of task categories with progress indicators
- **Navigation**: Bottom navigation bar and drawer menu for easy access
- **Settings**: Customize notifications, dark mode (planned), language
- **Profile Management**: User profile with avatar
- **Contact Support**: Contact form and details
- **Help & FAQs**: Built-in help section with frequently asked questions
- **Premium Features**: Prompts for premium upgrades

## Installation

1. Ensure you have Flutter installed.

2. Clone the repository:

   ```
   git clone https://github.com/4bhisheksharma/task-management-app.git
   cd tms
   ```

3. Install dependencies:

   ```
   flutter pub get
   ```

4. Run the app:
   ```
   flutter run
   ```

## Usage

- **Home**: View task categories and progress
- **Add Task**: Use the floating action button to add new tasks
- **Profile**: Access user profile
- **Settings**: Configure app preferences
- **Contact Us**: Reach out for support
- **Help**: View FAQs and support information

## Project Structure

```
tms/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── components/
│   │   ├── custom_text.dart      # Custom text widget
│   │   └── upper_header.dart     # Header component
│   ├── models/
│   │   └── task_model.dart       # Task data model
│   ├── pages/
│   │   ├── home_page.dart        # Home screen
│   │   ├── profile_page.dart     # User profile
│   │   ├── setting_page.dart     # Settings
│   │   ├── contact_us_page.dart  # Contact page
│   │   └── help_page.dart        # Help & support
│   ├── themes/
│   │   └── constant.dart         # App constants and colors
│   └── widgets/
│       ├── drawer.dart           # Navigation drawer
│       ├── tasks.dart            # Task grid widget
│       ├── go_premium.dart       # Premium upgrade card
│       ├── contact_form.dart     # Contact form
│       ├── contact_detail_row.dart # Contact detail row
│       ├── faq_item.dart         # FAQ item
│       └── profile_info_row.dart # Profile info row
├── assets/
│   └── images/
│       └── profile.png           # Profile image
├── pubspec.yaml                  # Project configuration
└── README.md                     # This file
```

## Dependencies

- flutter: SDK for building the app
- cupertino_icons: iOS style icons
- dotted_border: For dotted borders in UI
- table_calendar: Calendar widget for date features

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

## License

This project is open-source, anyone can use it.
