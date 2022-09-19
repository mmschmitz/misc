_Note: this was originally written to how to use Django, but the virtual environment can be used for anything else._

2. _How do I use the Django app?_
   [Django](https://www.djangoproject.com/) is a web application framework. In order to invoke the Django app system (once an app is built) for FERRET, use the following commands (in Windows):
   1. In a `Command Prompt` (`cmd`) shell, choose the directory (`cd`) that the application is based within.
   2. Once you are in the directory of your choice, set up a virtual environment using the command `python -m venv env`. This will create a location in which all of the materials, modules, and other aspects needed to run the app are self-contained.
   3. Once the environment has been set up, type in `env\Scripts\Activate\` into the shell. Your shell will then have the phrase `(env)` in front of the file path. This indicates that the virtual environment has been invoked, and that any modules that are present will be self-contained. 
      1. If there are no modules already present in the environment (i.e., you have not installed the modules already), go to Step 4. 
      2. If there are modules already present in the environment (i.e., you *have* installed the modules of interest), proceed to Step 5.
   4. *To do on the first time the environment is invoked:* Within the virtual environment, install any modules of particular interest using `pip install [modulename]`. Modules to install can include:
      1. django
      2. xslxwriter
      3. pythoncom
      4. requests
      5. scipy
      6. statistics
      7. re
   5. Invoke the server by writing, `python manage.py runserver` into the command prompt and hitting enter. The system will then go through a set of system checks, and let you know if you have any issues with your application.
   6. Assuming that the application is successful, you will see "Starting development server at `serveraddress`". Type the server address into the browser of your choice, and hit Enter. This *should* allow you to access the application of your choice.
   7. More information can be found in [this very helpful YouTube video](https://www.youtube.com/watch?v=LQTMqGns7Co).
