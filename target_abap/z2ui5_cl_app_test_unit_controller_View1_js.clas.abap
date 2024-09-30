CLASS z2ui5_cl_app_test_unit_controller_View1_js DEFINITION
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


CLASS z2ui5_cl_app_test_unit_controller_View1_js IMPLEMENTATION.

  METHOD get.

    result =              `/*global QUnit*/` && |\n|  &&
             `` && |\n|  &&
             `sap.ui.define([` && |\n|  &&
             `	"z2ui5/controller/View1.controller"` && |\n|  &&
             `], function (Controller) {` && |\n|  &&
             `	"use strict";` && |\n|  &&
             `` && |\n|  &&
             `	QUnit.module("View1 Controller");` && |\n|  &&
             `` && |\n|  &&
             `	QUnit.test("I should test the View1 controller", function (assert) {` && |\n|  &&
             `		var oAppController = new Controller();` && |\n|  &&
             `		oAppController.onInit();` && |\n|  &&
             `		assert.ok(oAppController);` && |\n|  &&
             `	});` && |\n|  &&
             `` && |\n|  &&
             `});` && |\n|  &&
             `` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.