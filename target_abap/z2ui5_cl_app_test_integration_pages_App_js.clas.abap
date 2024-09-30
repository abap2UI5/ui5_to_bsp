CLASS z2ui5_cl_app_test_integration_pages_App_js DEFINITION
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


CLASS z2ui5_cl_app_test_integration_pages_App_js IMPLEMENTATION.

  METHOD get.

    result =              `sap.ui.define([` && |\n|  &&
             `	"sap/ui/test/Opa5"` && |\n|  &&
             `], function (Opa5) {` && |\n|  &&
             `	"use strict";` && |\n|  &&
             `	var sViewName = "App";` && |\n|  &&
             `	` && |\n|  &&
             `	Opa5.createPageObjects({` && |\n|  &&
             `		onTheAppPage: {` && |\n|  &&
             `` && |\n|  &&
             `			actions: {},` && |\n|  &&
             `` && |\n|  &&
             `			assertions: {` && |\n|  &&
             `` && |\n|  &&
             `				iShouldSeeTheApp: function () {` && |\n|  &&
             `					return this.waitFor({` && |\n|  &&
             `						id: "app",` && |\n|  &&
             `						viewName: sViewName,` && |\n|  &&
             `						success: function () {` && |\n|  &&
             `							Opa5.assert.ok(true, "The " + sViewName + " view is displayed");` && |\n|  &&
             `						},` && |\n|  &&
             `						errorMessage: "Did not find the " + sViewName + " view"` && |\n|  &&
             `					});` && |\n|  &&
             `				}` && |\n|  &&
             `			}` && |\n|  &&
             `		}` && |\n|  &&
             `	});` && |\n|  &&
             `` && |\n|  &&
             `});` && |\n|  &&
             `` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.