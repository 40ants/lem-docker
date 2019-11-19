===================
 Lem in the Docker
===================

This is a docker image to run the Lem_ editor and start coding in `Common Lisp`_.

.. image:: https://github.com/cxxxr/lem/raw/master/screenshots/terminal.png

How to use it
=============

Run the editor:

.. code::

   docker run --rm -ti -v `pwd`:/app 40ants/lem

Then hit the M-x (on OSX Meta key usually "option" or "command" key, depending on your terminal's settings).

And enter ``start-lisp-repl`` command. It will open the REPL with Common Lisp.

To edit real files, you will need to pass the directory into the docker container by adding such option ``-v `pwd`:/app`` to the ``docker run`` command.

.. _Lem: https://github.com/cxxxr/lem
.. _Common Lisp: https://common-lisp.net/
