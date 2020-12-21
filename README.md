
# Healthcare Portal

## Purpose

This program serves as an easy-to-use patient information database. The user is intended to be an authorized healthcare provider who must log in to add new patients and remove patients in their care, and view and edit sensitive patient information such as

* birthdate
* weight
* allergies
* medications

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
Be sure to run 
```
bundle install
```
To run the program locally on tour computer  enter:
```
shotgun
```
This will bring up a local host url that you can copy and paste into a browser to begin interfacing with the program(if you are using VSCode on a Mac, you can hover over the url and click it while holding `command` to open the url in the browser):
```
== Shotgun/Thin on http://127.0.0.1:9393/
2020-12-20 22:14:19 -0500 Thin web server (v1.8.0 codename Possessed Pickle)
2020-12-20 22:14:19 -0500 Maximum connections set to 1024
2020-12-20 22:14:19 -0500 Listening on 127.0.0.1:9393, CTRL+C to stop
```

(My local host server can be accessed by `http://127.0.0.1:9393/` in this instance.)

### NB: Be sure to stop the server by pressing `CTRL+C` before closing the program.

## Usage

## Contributing

Pull requests are welcome. If you want to make major changes, please open an issue first to discuss the proposed change.

## Future Functionality

I have included a drawio file `Table Relations.drawio` (which can be opened with a Draw.io Integration Plug-in for VSCode), that maps out future functionality through added table relations.

It would not be hard to modify the "medications" attribute belonging to "patients" so that medications are objects of the class Medication. In the proposed relationship, a patient `has_many` medications and a medication `has_many` patients.

## License
[MIT](https://github.com/DavidRMorphew/healthcare_portal/blob/main/LICENSE.txt)