Load test for Simplepush servers
================================

You can run this by installing **Loads** using the Makefile::

    $ make build

If you get any dependency issue, you might need to install
libraries on your system. Check out http://loads.readthedocs.org/en/latest/installation

Next, you can run a single test against the Push server::

    $ make test

And once it works, send some real load::

    $ make load

Look at **loads.ini** to tweak the options for **make load**.

