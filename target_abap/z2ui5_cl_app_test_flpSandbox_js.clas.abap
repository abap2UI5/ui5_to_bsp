CLASS z2ui5_cl_app_test_flpSandbox_js DEFINITION
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


CLASS z2ui5_cl_app_test_flpSandbox_js IMPLEMENTATION.

  METHOD get.

    result =              `sap.ui.define([` && |\n|  &&
             `	"sap/base/util/ObjectPath",` && |\n|  &&
             `	"sap/ushell/services/Container"` && |\n|  &&
             `], function (ObjectPath) {` && |\n|  &&
             `	"use strict";` && |\n|  &&
             `` && |\n|  &&
             `	// define ushell config` && |\n|  &&
             `	ObjectPath.set(["sap-ushell-config"], {` && |\n|  &&
             `		defaultRenderer: "fiori2",` && |\n|  &&
             `		bootstrapPlugins: {` && |\n|  &&
             `			"RuntimeAuthoringPlugin": {` && |\n|  &&
             `				component: "sap.ushell.plugins.rta",` && |\n|  &&
             `				config: {` && |\n|  &&
             `					validateAppVersion: false` && |\n|  &&
             `				}` && |\n|  &&
             `			},` && |\n|  &&
             `			"PersonalizePlugin": {` && |\n|  &&
             `				component: "sap.ushell.plugins.rta-personalize",` && |\n|  &&
             `				config: {` && |\n|  &&
             `					validateAppVersion: false` && |\n|  &&
             `				}` && |\n|  &&
             `			}` && |\n|  &&
             `		},` && |\n|  &&
             `		renderers: {` && |\n|  &&
             `			fiori2: {` && |\n|  &&
             `				componentData: {` && |\n|  &&
             `					config: {` && |\n|  &&
             `						enableSearch: false,` && |\n|  &&
             `						rootIntent: "Shell-home"` && |\n|  &&
             `					}` && |\n|  &&
             `				}` && |\n|  &&
             `			}` && |\n|  &&
             `		},` && |\n|  &&
             `		services: {` && |\n|  &&
             `			"LaunchPage": {` && |\n|  &&
             `				"adapter": {` && |\n|  &&
             `					"config": {` && |\n|  &&
             `						"groups": [{` && |\n|  &&
             `							"tiles": [{` && |\n|  &&
             `								"tileType": "sap.ushell.ui.tile.StaticTile",` && |\n|  &&
             `								"properties": {` && |\n|  &&
             `									"title": "App Title",` && |\n|  &&
             `									"targetURL": "#z2ui5-display"` && |\n|  &&
             `								}` && |\n|  &&
             `							}]` && |\n|  &&
             `						}]` && |\n|  &&
             `					}` && |\n|  &&
             `				}` && |\n|  &&
             `			},` && |\n|  &&
             `			"ClientSideTargetResolution": {` && |\n|  &&
             `				"adapter": {` && |\n|  &&
             `					"config": {` && |\n|  &&
             `						"inbounds": {` && |\n|  &&
             `							"z2ui5-display": {` && |\n|  &&
             `								"semanticObject": "z2ui5",` && |\n|  &&
             `								"action": "display",` && |\n|  &&
             `								"description": "An SAP Fiori application.",` && |\n|  &&
             `								"title": "App Title",` && |\n|  &&
             `								"signature": {` && |\n|  &&
             `									"parameters": {}` && |\n|  &&
             `								},` && |\n|  &&
             `								"resolutionResult": {` && |\n|  &&
             `									"applicationType": "SAPUI5",` && |\n|  &&
             `									"additionalInformation": "SAPUI5.Component=z2ui5",` && |\n|  &&
             `									"url": sap.ui.require.toUrl("z2ui5")` && |\n|  &&
             `								}` && |\n|  &&
             `							}` && |\n|  &&
             `						}` && |\n|  &&
             `					}` && |\n|  &&
             `				}` && |\n|  &&
             `			},` && |\n|  &&
             `			NavTargetResolution: {` && |\n|  &&
             `				config: {` && |\n|  &&
             `					"enableClientSideTargetResolution": true` && |\n|  &&
             `				}` && |\n|  &&
             `			}` && |\n|  &&
             `		}` && |\n|  &&
             `	});` && |\n|  &&
             `` && |\n|  &&
             `	var oFlpSandbox = {` && |\n|  &&
             `		init: function () {` && |\n|  &&
             `			/**` && |\n|  &&
             `			 * Initializes the FLP sandbox` && |\n|  &&
             `			 * @returns {Promise} a promise that is resolved when the sandbox bootstrap has finshed` && |\n|  &&
             `			 */` && |\n|  &&
             `` && |\n|  &&
             `			// sandbox is a singleton, so we can start it only once` && |\n|  &&
             `			if (!this._oBootstrapFinished) {` && |\n|  &&
             `				this._oBootstrapFinished = sap.ushell.bootstrap("local");` && |\n|  &&
             `				this._oBootstrapFinished.then(function () {` && |\n|  &&
             `					sap.ushell.Container.createRenderer().placeAt("content");` && |\n|  &&
             `				});` && |\n|  &&
             `			}` && |\n|  &&
             `` && |\n|  &&
             `			return this._oBootstrapFinished;` && |\n|  &&
             `		}` && |\n|  &&
             `	};` && |\n|  &&
             `` && |\n|  &&
             `	return oFlpSandbox;` && |\n|  &&
             `});` && |\n|  &&
              ``.

  ENDMETHOD.

ENDCLASS.