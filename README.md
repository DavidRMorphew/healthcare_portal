
# Healthcare Portal

## Purpose and Usage

This program serves as an easy-to-use patient information database. The user is intended to be an authorized healthcare provider who has patients in their care. The healthcare provider, once logged in, has access to their patients' information and the ability to modify their list of patients. The healthcare provider can, for example: 
 
* add new patients, 

* view and edit sensitive patient information such as:

    *  birthdate
    * weight
    * allergies
    * medications

* remove patients in their care.

Only if a given user has authorization will they be able to view and edit this information or remove a patient that is under their care.

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

To run the program locally on your computer  enter:
```
shotgun
```
This will bring up a local:host url that you can copy and paste into a browser to begin using the program (if you are using VSCode on a Mac, you can hover over the url and click it while holding `command` to open the url in the browser).
```
== Shotgun/Thin on http://127.0.0.1:9393/
2020-12-20 22:14:19 -0500 Thin web server (v1.8.0 codename Possessed Pickle)
2020-12-20 22:14:19 -0500 Maximum connections set to 1024
2020-12-20 22:14:19 -0500 Listening on 127.0.0.1:9393, CTRL+C to stop
```

(My local host server can be accessed by `http://127.0.0.1:9393/` in this instance.)

Be sure to stop the server by pressing `CTRL+C` before closing the program.

## Contributing

Pull requests are welcome. If you want to make major changes, please open an issue first to discuss the proposed change.

Please feel free to add and update tests where appropriate.

## Future Functionality

I have included a drawio file, called `Table Relations.drawio` (which can be opened with a `Draw.io Integration` Plug-in for VSCode). This diagram maps out some proposed future functionality.

In the diagram, "medications" are no longer a string attribute of "patients," but instead will have their own "medications" table and `Medication` model. In the proposed relationship, a patient `has_many` medications and a medication `has_many` patients, and it is `through: prescriptions` that patients are related to their medications.

## License
[MIT](https://github.com/DavidRMorphew/healthcare_portal/blob/main/LICENSE.txt)