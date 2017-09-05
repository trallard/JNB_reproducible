## RSE conference 2017 workshop: setup notes for learners

1. Start the Fedora Virtual Machine from Virtualbox if you have  not done so already.
1. Click *Activities* then click the black Terminal icon to start *Gnome Terminal*.  A window should appear containing a command-line prompt.
1. Download some last-minute amendments to the tutorial by running the following from Gnome Terminal:
    ```sh
    sudo docker pull rsesheffield/rse-conf-2017:1.0.2 
    ```
   NB you may not be able to copy and paste this and might have to type it by hand.
1. Start a Jupyter Notebook server by running the following from Gnome Terminal:
    ```sh
    sudo docker run -p 65000:65000 -p 65001:65001 --name=nbdime_nbval rsesheffield/rse-conf-2017:1.0.2 
    ```
1. This should result in a URL being displayed in Gnome Terminal.  Right-click on this and select 'Open Link' to open this and connect to your Jupyter Notebook server from your default browser.
1. Return to Gnome Terminal, open a new tab in that application by pressing **Ctrl-Shift-t** then type
    ```sh
    sudo docker exec -ti nbdime_nbval /bin/bash
    ```

You're now ready to start the tutorial.
