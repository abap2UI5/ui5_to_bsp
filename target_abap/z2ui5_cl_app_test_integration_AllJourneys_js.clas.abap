CLASS z2ui5_cl_app_test_integration_AllJourneys_js DEFINITION
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


CLASS z2ui5_cl_app_test_integration_AllJourneys_js IMPLEMENTATION.

  METHOD get.

    result =              `sap.ui.define([` && |\n|  &&
             `	"sap/ui/test/Opa5",` && |\n|  &&
             `	"./arrangements/Startup",` && |\n|  &&
             `	"./NavigationJourney"` && |\n|  &&
             `], function (Opa5, Startup) {` && |\n|  &&
             `	"use strict";` && |\n|  &&
             `` && |\n|  &&
             `	Opa5.extendConfig({` && |\n|  &&
             `		arrangements: new Startup(),` && |\n|  &&
             `		viewNamespace: "z2ui5.view.",` && |\n|  &&
             `		autoWait: true` && |\n|  &&
             `	});` && |\n|  &&
             `});` && |\n|  &&
             `` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.