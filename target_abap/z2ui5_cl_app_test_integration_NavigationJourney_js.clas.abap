CLASS z2ui5_cl_app_test_integration_NavigationJourney_js DEFINITION
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


CLASS z2ui5_cl_app_test_integration_NavigationJourney_js IMPLEMENTATION.

  METHOD get.

    result =              `/*global QUnit*/` && |\n|  &&
             `` && |\n|  &&
             `sap.ui.define([` && |\n|  &&
             `	"sap/ui/test/opaQunit",` && |\n|  &&
             `	"./pages/App",` && |\n|  &&
             `	"./pages/View1"` && |\n|  &&
             `], function (opaTest) {` && |\n|  &&
             `	"use strict";` && |\n|  &&
             `` && |\n|  &&
             `	QUnit.module("Navigation Journey");` && |\n|  &&
             `` && |\n|  &&
             `	opaTest("Should see the initial page of the app", function (Given, When, Then) {` && |\n|  &&
             `		// Arrangements` && |\n|  &&
             `		Given.iStartMyApp();` && |\n|  &&
             `` && |\n|  &&
             `		// Assertions` && |\n|  &&
             `		Then.onTheAppPage.iShouldSeeTheApp();` && |\n|  &&
             `      	Then.onTheViewPage.iShouldSeeThePageView();` && |\n|  &&
             `` && |\n|  &&
             `		//Cleanup` && |\n|  &&
             `		Then.iTeardownMyApp();` && |\n|  &&
             `	});` && |\n|  &&
             `});` && |\n|  &&
             `` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.