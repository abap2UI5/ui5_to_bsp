CLASS z2ui5_cl_app_test_initFlpSandbox_js DEFINITION
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


CLASS z2ui5_cl_app_test_initFlpSandbox_js IMPLEMENTATION.

  METHOD get.

    result =              `sap.ui.define([` && |\n|  &&
             `	"./flpSandbox",` && |\n|  &&
             `	"sap/ui/fl/FakeLrepConnectorLocalStorage",` && |\n|  &&
             `	"sap/m/MessageBox"` && |\n|  &&
             `], function (flpSandbox, FakeLrepConnectorLocalStorage, MessageBox) {` && |\n|  &&
             `	"use strict";` && |\n|  &&
             `` && |\n|  &&
             `	flpSandbox.init().then(function () {` && |\n|  &&
             `		FakeLrepConnectorLocalStorage.enableFakeConnector();` && |\n|  &&
             `	}, function (oError) {` && |\n|  &&
             `		MessageBox.error(oError.message);` && |\n|  &&
             `	});` && |\n|  &&
             `});` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.