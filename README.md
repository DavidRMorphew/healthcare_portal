
# Healthcare Portal

## Purpose and Usage

This program serves as an easy-to-use patient information database. The user is intended to be an authorized healthcare worker who has patients in their care. The healthcare worker, once logged in, has access to their patients' information and the ability to modify their list of patients. The healthcare worker can, for example: 
 
* add new patients 

* view and edit sensitive patient information such as:

    * birthdate
    * weight
    * allergies
    * medications

* remove patients in their care.

Only if a given user (i.e. healthcare worker) has authorization will they be able to view and edit this information or remove a patient that is under their care. 

Go [here](https://youtu.be/Q8wLdq6pL50) for a short video on how this app works.

## Installation 

To install the program, open your Terminal and run the following command:

```
git clone git@github.com:DavidRMorphew/healthcare_portal.git
```

## Starting the Program
Once installed, open the program's directory:
```
cd healthcare_portal
```
Before starting, be sure to run 
```
bundle install
```

You will also want to create a `.env` file to store your `SESSION_SECRET`. (You can read more about how to use `dotenv` [here](https://github.com/bkeepers/dotenv).)

There are two easy ways to run the program locally on your computer. 

1. Enter into your Terminal:

```
shotgun
```
* This will bring up a localhost url that you can copy and paste into a browser to begin using the program. (My local host server can be accessed by `http://127.0.0.1:9393/`.)
```
== Shotgun/Thin on http://127.0.0.1:9393/
2020-12-20 22:14:19 -0500 Thin web server (v1.8.0 codename Some Gibberish)
2020-12-20 22:14:19 -0500 Maximum connections set to 1024
2020-12-20 22:14:19 -0500 Listening on 127.0.0.1:9393, CTRL+C to stop
```

2. Enter into your Terminal

```
rackup config.ru
```
* As with `shotgun`, this will bring up a localhost url (`localhost:9292`) that you can copy and paste into your browser.

Whether you use `rackup config.ru` or `shotgun` to run the program, be sure to stop the server by pressing `CTRL+C` before closing the program.


## Contributing

Pull requests are welcome. If you want to make major changes, please open an issue first to discuss the proposed change.

Please feel free to add and update tests where appropriate.

## Future Functionality

I have included a drawio file, called `Table Relations.drawio` (which can be opened with a `Draw.io Integration` Plug-in for VSCode). This diagram maps out some proposed future functionality.

I discuss ideas on this future expansion (and an interesting problem I encountered in showing errors and rendering the edit page for patients) in my [blog post](https://davidrmorphew.medium.com/my-healthcare-portal-sinatra-app-e94a9a19d56c).

## License
[MIT](https://github.com/DavidRMorphew/healthcare_portal/blob/main/LICENSE.txt)