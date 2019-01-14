Frank
=====

Frank is a micro web framework for Swift.

.. code-block:: swift

    import Frank

    // Handle GET requests to path /
    get { request in
      return "Hello World"
    }

    // Handle GET requests to path /users/{username}
    get("users", *) { (request, username: String) in
      return "Hello \(username)"
    }

Quick Start
-----------

To use Frank, you will need to install it via the Swift Package Manager,
you can add it to the list of dependencies in your `Package.swift`:

.. code-block:: swift

    import PackageDescription


    let package = Package(
      name: "HelloWorld",
      dependencies: [
        .Package(url: "https://github.com/kylef/Frank.git", majorVersion: 0),
      ]
    )

Afterwards you can place your web application implementation in `Sources`
and add the runner inside `main.swift` which exposes a command line tool to
run your web application:

.. code-block:: swift

    import Frank

    get { request in
      return "Hello World"
    }

Then build and run your application:

.. code-block:: shell

    $ swift build --configuration release
    $ ./.build/release/HelloWorld

Check out the `Hello World example <https://github.com/kylef/Frank-example>`_ application.

Contents
--------

.. toctree::
   :maxdepth: 2
