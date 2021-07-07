___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Pulse Tracking",
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "This is an unofficial template for pulse tracking",
  "categories": [
    "ANALYTICS"
  ],
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "pulseSettings",
    "displayName": "Pulse settings",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "type",
    "displayName": "Type",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "Engagement",
        "displayValue": "Engagement"
      },
      {
        "value": "View",
        "displayValue": "View"
      },
      {
        "value": "Save",
        "displayValue": "Save"
      },
      {
        "value": "Unsave",
        "displayValue": "Unsave"
      }
    ],
    "simpleValueType": true,
    "help": "Type of event https://github.schibsted.io/spt-dataanalytics/event-formats/blob/master/schema/master/common-definitions.json#L176"
  },
  {
    "type": "CHECKBOX",
    "name": "pageView",
    "checkboxText": "Page view event",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "type",
        "paramValue": "View",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "object",
    "displayName": "Object",
    "subParams": [
      {
        "type": "SELECT",
        "name": "objectType",
        "displayName": "Type",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "UIElement",
            "displayValue": "UIElement"
          },
          {
            "value": "Custom",
            "displayValue": "Custom Object"
          },
          {
            "value": "Page",
            "displayValue": "Page"
          },
          {
            "value": "ClassifiedAd",
            "displayValue": "ClassifiedAd"
          },
          {
            "value": "Listing",
            "displayValue": "Listing"
          }
        ],
        "simpleValueType": true,
        "subParams": []
      },
      {
        "type": "TEXT",
        "name": "customObject",
        "displayName": "Custom object",
        "simpleValueType": true,
        "help": "When you need to create a more advanced object use this.",
        "enablingConditions": [
          {
            "paramName": "objectType",
            "paramValue": "Custom",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "General",
        "displayName": "General",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "TEXT",
            "name": "object.general.name",
            "displayName": "Name",
            "simpleValueType": true,
            "help": "Defaults to SEO title of the page"
          },
          {
            "type": "TEXT",
            "name": "object.general.id",
            "displayName": "Id",
            "simpleValueType": true,
            "help": "defaults to pathname + search"
          },
          {
            "type": "TEXT",
            "name": "sptCustom",
            "displayName": "spt:custom",
            "simpleValueType": true,
            "help": "For all your custom data needs, should be a variable with an object as value.",
            "valueHint": "{{Pulse - some custom data}}"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "objectType",
            "paramValue": "Custom",
            "type": "NOT_EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "uiElement",
        "displayName": "UiElement",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "TEXT",
            "name": "object.UIElement.jobId",
            "displayName": "Job id",
            "simpleValueType": true
          }
        ],
        "enablingConditions": [
          {
            "paramName": "objectType",
            "paramValue": "UIElement",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "Page",
        "displayName": "Page",
        "groupStyle": "NO_ZIPPY",
        "subParams": [],
        "enablingConditions": [
          {
            "paramName": "objectType",
            "paramValue": "Page",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "ClassifiedAd",
        "displayName": "ClassifiedAd",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "TEXT",
            "name": "object.ClassifiedAd.category",
            "displayName": "Category",
            "simpleValueType": true
          },
          {
            "type": "TEXT",
            "name": "object.ClassifiedAd.categories",
            "displayName": "Categories",
            "simpleValueType": true
          },
          {
            "type": "GROUP",
            "name": "object.ClassifiedAd.location",
            "displayName": "Location",
            "groupStyle": "ZIPPY_OPEN",
            "subParams": [
              {
                "type": "TEXT",
                "name": "object.ClassifiedAd.location.addressRegion",
                "displayName": "address region",
                "simpleValueType": true
              }
            ]
          }
        ],
        "enablingConditions": [
          {
            "paramName": "objectType",
            "paramValue": "ClassifiedAd",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "Listing",
        "displayName": "Listing",
        "groupStyle": "NO_ZIPPY",
        "subParams": [
          {
            "type": "TEXT",
            "name": "object.Listing.category",
            "displayName": "category",
            "simpleValueType": true
          },
          {
            "type": "TEXT",
            "name": "object.Listing.categories",
            "displayName": "categories",
            "simpleValueType": true
          },
          {
            "type": "GROUP",
            "name": "object.Listing.filters",
            "displayName": "filters",
            "groupStyle": "ZIPPY_OPEN",
            "subParams": [
              {
                "type": "TEXT",
                "name": "object.Listing.filters.query",
                "displayName": "query",
                "simpleValueType": true
              }
            ]
          },
          {
            "type": "TEXT",
            "name": "object.Listing.tags",
            "displayName": "tags",
            "simpleValueType": true
          }
        ],
        "enablingConditions": [
          {
            "paramName": "objectType",
            "paramValue": "Listing",
            "type": "EQUALS"
          }
        ]
      }
    ],
    "groupStyle": "ZIPPY_OPEN"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');
const callInWindow = require('callInWindow');
const injectScript = require('injectScript');
const getUrl = require('getUrl');
const trackerEventData = {};

const sendEvent = function() {
  const trackerEventData = {
    type: data.type,
    actor: {
      id: data.pulseSettings.userId,
    },
    provider: {
      type: 'Organization',
      productType: 'ResponsiveWeb',
      id: data.pulseSettings.provider,
    },
    deployStage: data.pulseSettings.deployStage,
    schema: data.pulseSettings.schema,
    target: { type: 'Page', id: getUrl('path') },
    origin: { type: 'Page', id: getUrl('path'), url: getUrl() },
    object: {
      type: data.objectType,
      'spt:custom': data.sptCustom,
    }
  };
  
  for (const property in data) {
    const path = property.split('.');
    
    if (
      path[0] === 'object' && 
      (path[1] === 'general' || path[1] === data.objectType)
    ) {
      const subPath = path.slice(2);
      
      let objectData = {};
      
      if (subPath.length === 1) {
        trackerEventData.object[subPath[0]] = data[property];
      } else {
        let currentObject = trackerEventData.object;
        
        for (let i = 0; i < subPath.length - 1; i++) {
          const step = subPath[i];
          
          if (!trackerEventData.object[step]) {
            currentObject[step] = {};
          }
          
          currentObject = currentObject[step];
        }
        
        currentObject[subPath[subPath.length - 1]] = data[property];
      }
    }
  }
  
  if (data.customObject) {
    trackerEventData.object = data.customObject;
  }

  callInWindow('pulse', 'update', { object: undefined });
  
  if (data.pageView) {
    callInWindow('pulse', 'trackPageView', trackerEventData);
  } else {
    callInWindow('pulse', 'track', 'trackerEvent', trackerEventData);
  }
  
  data.gtmOnSuccess();
};

const pulse = copyFromWindow('pulse');
if(!pulse) {
  const newPulse = function() {
    callInWindow('pulse.q.push', arguments);
  };
  newPulse.q = [];
  setInWindow('pulse', newPulse);
    
  callInWindow('pulse', 'init', data.pulseSettings.provider);
  injectScript('https://sdk.pulse.schibsted.com/pulse.min.js', sendEvent, data.gtmOnFailure, 'pulseSDK');
} else {
  sendEvent();
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "pulse"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "pulse.q.push"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "pulse.q"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://sdk.pulse.schibsted.com/pulse.min.js"
              },
              {
                "type": 1,
                "string": "https://sdk.pulse.schibsted.com/loader-modern.min.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_url",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Initialize pulse
  code: |-
    setInWindow('pulse', undefined, true);

    const mockData = {
      pulseSettings: {
        provider: 'test',
        deployStage: 'dev',
        schema: 'testschema',
      },
    };

    runCode(mockData);

    const pulse = copyFromWindow('pulse');

    // Injectscript was called, hopefully with the correct url.
    assertApi('injectScript').wasCalled();

    // Pulse was initialized globally on window.
    assertThat(pulse.q).isEqualTo([['init', 'test']]);
- name: Test global data
  code: "runCode({\n  // Mocked field values\n  pulseSettings: {\n    provider: 'test',\n\
    \    deployStage: 'dev',\n    schema: 'testschema',\n  },\n});\n\n// Run assertions\n\
    const pulse = copyFromWindow('pulse');\nconst pulseTrackEventData = pulse.q[1][2];\n\
    \n// Pulse settings\nassertThat(\n  pulseTrackEventData.provider.id, \n  'It sets\
    \ the provider'\n).isEqualTo('test');\nassertThat(\n  pulseTrackEventData.deployStage,\
    \ \n  'It sets deploy stage'\n).isEqualTo('dev');\nassertThat(\n  pulseTrackEventData.schema,\
    \ \n  'It sets the schema'\n).isEqualTo('testschema');\n\nassertApi('gtmOnSuccess').wasCalled();"
- name: Test object
  code: "// Run Tag code with mockdata\nrunCode({\n  // Mocked field values\n  pulseSettings:\
    \ {\n    provider: 'test',\n    deployStage: 'dev',\n    schema: 'testschema',\n\
    \  },\n  objectType: 'ClassifiedAd',\n  'object.ClassifiedAd.location.testdepth.more':\
    \ 'So deep',\n  'object.ClassifiedAd.location.addressRegion': 'Stockholm',\n \
    \ 'object.ClassifiedAd.location.postalCode': '12345',\n  'object.ClassifiedAd.category':\
    \ 'Administration',\n  'sptCustom': { custom: 'data' },\n});\n\n// Run assertions\n\
    const pulse = copyFromWindow('pulse');\nconst pulseTrackEventData = pulse.q[1][2];\n\
    \nassertThat(pulseTrackEventData.object.type, 'It sets object type').isEqualTo('ClassifiedAd');\n\
    \nassertThat(\n  pulseTrackEventData.object.location && pulseTrackEventData.object.location.addressRegion,\
    \ \n  'It sets two level object data'\n).isEqualTo('Stockholm');\n\nassertThat(\n\
    \  pulseTrackEventData.object.location && pulseTrackEventData.object.location.postalCode,\
    \ \n  'It sets multiple two level object data'\n).isEqualTo('12345');\n\nassertThat(\n\
    \  pulseTrackEventData.object.location.testdepth && pulseTrackEventData.object.location.testdepth\
    \ && pulseTrackEventData.object.location.testdepth.more, \n  'It sets deep object\
    \ data'\n).isEqualTo('So deep');\n\nassertThat(\n  pulseTrackEventData.object.category,\
    \ \n  'It sets object data'\n).isEqualTo('Administration');\n\nassertThat(\n \
    \ pulseTrackEventData.object['spt:custom'], \n  'It sets spt custom value if it\
    \ exists'\n).isEqualTo({ custom: 'data' });\n\nassertApi('gtmOnSuccess').wasCalled();"
- name: Test pageview
  code: |-
    runCode({
      // Mocked field values
      pulseSettings: {
        provider: 'test',
        deployStage: 'dev',
        schema: 'testschema',
      },
      type: 'View',
      pageView: true,
    });

    // Run assertions
    const pulse = copyFromWindow('pulse');
    const pulseTrackEvent = pulse.q[1][0];
    const pulseTrackEventData = pulse.q[1][1];

    assertThat(pulseTrackEvent).isEqualTo('trackPageView');
    assertThat(pulseTrackEventData.type).isEqualTo('View');
    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
- name: Test custom object
  code: "runCode({\n  // Mocked field values\n  pulseSettings: {\n    provider: 'test',\n\
    \    deployStage: 'dev',\n    schema: 'testschema',\n  },\n  type: 'customObject',\n\
    \  customObject: { custom: 'stuff', type: 'very custom' }, \n});\n\n// Run assertions\n\
    const pulse = copyFromWindow('pulse');\nconst pulseTrackEventData = pulse.q[1][2];\n\
    \nassertThat(pulseTrackEventData.object, 'it overrides with custom object when\
    \ present.').isEqualTo({ custom: 'stuff', type: 'very custom' });\n// Verify that\
    \ the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();"
setup: |-
  const callInWindow = require('callInWindow');
  const copyFromWindow = require('copyFromWindow');
  const setInWindow = require('setInWindow');

  const newPulse = function() {
    callInWindow('pulse.q.push', arguments);
  };

  newPulse.q = [];

  setInWindow('pulse', newPulse, true);


___NOTES___

Created on 7/7/2021, 10:31:41 AM


