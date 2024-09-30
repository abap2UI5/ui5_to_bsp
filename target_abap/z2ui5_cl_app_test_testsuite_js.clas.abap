CLASS z2ui5_cl_app_test_testsuite_js DEFINITION
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


CLASS z2ui5_cl_app_test_testsuite_js IMPLEMENTATION.

  METHOD get.

    result =              `/* global window, parent, location */` && |\n|  &&
             `` && |\n|  &&
             `// eslint-disable-next-line fiori-custom/sap-no-global-define` && |\n|  &&
             `window.suite = function() {` && |\n|  &&
             `	"use strict";` && |\n|  &&
             `` && |\n|  &&
             `	// eslint-disable-next-line` && |\n|  &&
             `	var oSuite = new parent.jsUnitTestSuite(),` && |\n|  &&
             `		sContextPath = location.pathname.substring(0, location.pathname.lastIndexOf("/") + 1);` && |\n|  &&
             `` && |\n|  &&
             `	oSuite.addTestPage(sContextPath + "unit/unitTests.qunit.html");` && |\n|  &&
             `	oSuite.addTestPage(sContextPath + "integration/opaTests.qunit.html");` && |\n|  &&
             `` && |\n|  &&
             `	return oSuite;` && |\n|  &&
             `};` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.