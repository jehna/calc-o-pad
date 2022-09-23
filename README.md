# Calc-o-pad
> Notepad with calculator

This is a note taking app that automatically calculates the result of any math
expression you type in.

## Try it out!

Visit the website:

https://cheerful-sorbet-4853dc.netlify.app/

## Local development

This project is developed using Flutter, so you can run the app in your browser by running:

```shell
flutter run -d chrome \
    --dart-define=FIREBASE_API_KEY=... \
    --dart-define=FIREBASE_APP_ID=... \
    --dart-define=FIREBASE_MESSAGING_SENDER_ID=... \
    --dart-define=FIREBASE_PROJECT_ID=... \
    --dart-define=FIREBASE_AUTH_DOMAIN=... \
    --dart-define=FIREBASE_STORAGE_BUCKET=... \
    --dart-define=FIREBASE_MEASUREMENT_ID=...
```

This downloads all the dependencies and runs the app in your browser.

You'll need to create your own Firebase project and get the API keys from there.

### Building

To build the app, run:

```shell
flutter build web \
    --dart-define=FIREBASE_API_KEY=... \
    --dart-define=FIREBASE_APP_ID=... \
    --dart-define=FIREBASE_MESSAGING_SENDER_ID=... \
    --dart-define=FIREBASE_PROJECT_ID=... \
    --dart-define=FIREBASE_AUTH_DOMAIN=... \
    --dart-define=FIREBASE_STORAGE_BUCKET=... \
    --dart-define=FIREBASE_MEASUREMENT_ID=...
```

This will create a `build/web` directory with the app.

### Deploying

At the moment deployments are handled automatically by Netlify.

## Features

The following features have been prioritized in the app:
* Fast startup time
* Opens up in an empty note when you open the app
* Basic "back of the napkin" math operations

## Contributing

If you'd like to contribute, please fork the repository and use a feature
branch. Pull requests are warmly welcome.

## Licensing

The code in this project is licensed under MIT license.
