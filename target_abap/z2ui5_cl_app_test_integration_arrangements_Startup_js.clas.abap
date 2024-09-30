CLASS z2ui5_cl_app_test_integration_arrangements_Startup_js DEFINITION
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


CLASS z2ui5_cl_app_test_integration_arrangements_Startup_js IMPLEMENTATION.

  METHOD get.

    result =              `sap.ui.define([` && |\n|  &&
             `	"sap/ui/test/Opa5"` && |\n|  &&
             `], function (Opa5) {` && |\n|  &&
             `	"use strict";` && |\n|  &&
             `` && |\n|  &&
             `	return Opa5.extend("integration.arrangements.Startup", {` && |\n|  &&
             `` && |\n|  &&
             `		iStartMyApp: function (oOptionsParameter) {` && |\n|  &&
             `			var oOptions = oOptionsParameter || {};` && |\n|  &&
             `` && |\n|  &&
             `			// start the app with a minimal delay to make tests fast but still async to discover basic timing` && |\n|  &&
             ` issues` && |\n|  &&
             `			oOptions.delay = oOptions.delay || 50;` && |\n|  &&
             `` && |\n|  &&
             `			// start the app UI component` && |\n|  &&
             `			this.iStartMyUIComponent({` && |\n|  &&
             `				componentConfig: {` && |\n|  &&
             `					name: "z2ui5",` && |\n|  &&
             `					async: true` && |\n|  &&
             `				},` && |\n|  &&
             `				hash: oOptions.hash,` && |\n|  &&
             `				autoWait: oOptions.autoWait` && |\n|  &&
             `			});` && |\n|  &&
             `		}` && |\n|  &&
             `	});` && |\n|  &&
             `});` && |\n|  &&
             `` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.