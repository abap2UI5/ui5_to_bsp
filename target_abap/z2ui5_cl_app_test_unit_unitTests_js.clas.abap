CLASS z2ui5_cl_app_test_unit_unitTests_js DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS get
      RETURNING
        VALUE(result) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS z2ui5_cl_app_test_unit_unitTests_js IMPLEMENTATION.

  METHOD get.

    result =              `/* global QUnit */` && |\n|  &&
             `QUnit.config.autostart = false;` && |\n|  &&
             `` && |\n|  &&
             `sap.ui.getCore().attachInit(function () {` && |\n|  &&
             `	"use strict";` && |\n|  &&
             `` && |\n|  &&
             `	sap.ui.require([` && |\n|  &&
             `		"z2ui5/test/unit/AllTests"` && |\n|  &&
             `	], function () {` && |\n|  &&
             `		QUnit.start();` && |\n|  &&
             `	});` && |\n|  &&
             `});` && |\n|  &&
             `` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.