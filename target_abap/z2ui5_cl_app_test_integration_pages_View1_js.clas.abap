CLASS z2ui5_cl_app_test_integration_pages_View1_js DEFINITION
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


CLASS z2ui5_cl_app_test_integration_pages_View1_js IMPLEMENTATION.

  METHOD get.

    result =              `sap.ui.define([` && |\n|  &&
             `	"sap/ui/test/Opa5"` && |\n|  &&
             `], function (Opa5) {` && |\n|  &&
             `	"use strict";` && |\n|  &&
             `	var sViewName = "View1";` && |\n|  &&
             `	` && |\n|  &&
             `	Opa5.createPageObjects({` && |\n|  &&
             `		onTheViewPage: {` && |\n|  &&
             `` && |\n|  &&
             `			actions: {},` && |\n|  &&
             `` && |\n|  &&
             `			assertions: {` && |\n|  &&
             `` && |\n|  &&
             `				iShouldSeeThePageView: function () {` && |\n|  &&
             `					return this.waitFor({` && |\n|  &&
             `						id: "page",` && |\n|  &&
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