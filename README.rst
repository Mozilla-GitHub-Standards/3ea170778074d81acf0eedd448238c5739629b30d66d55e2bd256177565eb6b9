Load test for Simplepush servers
================================

You can run this by installing Loads (mozilla-services/loads) and running this::

    $ loads-runner load_gen.TestLoad.test_ping

If you want to run the test on the Loads broker, use the **loads.ini** 
configuration file::

    $ loads-runner --config loads.ini 

The file will set all the needed options to run the test remotely.
