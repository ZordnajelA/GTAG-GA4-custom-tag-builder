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
  "displayName": "GTAG/GA4 Custom Tag Builder",
  "categories": [
    "ANALYTICS",
    "UTILITY",
    "PERSONALIZATION"
  ],
  "brand": {
    "id": "brand_dummy",
    "displayName": "Alejandro Zielinsky"
  },
  "description": "GA4 Event Builder.\n\nContains all of the recommended Events \u0026 Parameters. \n\nAllows to pull event data directlly from the dataLayer.push()\n\nYou are also able to add custom parameters and user properties",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "measurementId",
    "displayName": "Measurement ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Enter the Measurement ID (e.g, G-A2ABC2ABCD) for your GA4 property."
  },
  {
    "type": "SELECT",
    "name": "trackingType",
    "displayName": "Tag type",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "config",
        "displayValue": "Config"
      },
      {
        "value": "event",
        "displayValue": "Event"
      },
      {
        "value": "pageview",
        "displayValue": "PageView"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "CHECKBOX",
    "name": "send_page_view",
    "checkboxText": "Send a page_view event along with the GTAG config",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "trackingType",
        "paramValue": "config",
        "type": "EQUALS"
      }
    ],
    "defaultValue": false
  },
  {
    "type": "LABEL",
    "name": "page_view_help",
    "displayName": "This will send a page_view event",
    "enablingConditions": [
      {
        "paramName": "trackingType",
        "paramValue": "pageview",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "LABEL",
    "name": "event_help",
    "displayName": "This will send an event according to the configuration given below",
    "enablingConditions": [
      {
        "paramName": "trackingType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "eventType",
    "displayName": "GA4 custom or recommended event",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "custom_event",
        "displayValue": "--Custom Event--"
      },
      {
        "value": "earn_virtual_currency",
        "displayValue": "earn_virtual_currency"
      },
      {
        "value": "join_group",
        "displayValue": "join_group"
      },
      {
        "value": "login",
        "displayValue": "login"
      },
      {
        "value": "search",
        "displayValue": "search"
      },
      {
        "value": "select_content",
        "displayValue": "select_content"
      },
      {
        "value": "share",
        "displayValue": "share"
      },
      {
        "value": "sign_up",
        "displayValue": "sign_up"
      },
      {
        "value": "spend_virtual_currency",
        "displayValue": "spend_virtual_currency"
      },
      {
        "value": "tutorial_begin",
        "displayValue": "tutorial_begin"
      },
      {
        "value": "tutorial_complete",
        "displayValue": "tutorial_complete"
      },
      {
        "value": "ecommerce_add_payment_info",
        "displayValue": "add_payment_info"
      },
      {
        "value": "ecommerce_add_shipping_info",
        "displayValue": "add_shipping_info"
      },
      {
        "value": "ecommerce_add_to_cart",
        "displayValue": "add_to_cart"
      },
      {
        "value": "ecommerce_add_to_wishlist",
        "displayValue": "add_to_wishlist"
      },
      {
        "value": "ecommerce_begin_checkout",
        "displayValue": "begin_checkout"
      },
      {
        "value": "ecommerce_generate_lead",
        "displayValue": "generate_lead"
      },
      {
        "value": "ecommerce_purchase",
        "displayValue": "purchase"
      },
      {
        "value": "ecommerce_refund",
        "displayValue": "refund"
      },
      {
        "value": "ecommerce_remove_from_cart",
        "displayValue": "remove_from_cart"
      },
      {
        "value": "ecommerce_select_item",
        "displayValue": "select_item"
      },
      {
        "value": "ecommerce_select_promotion",
        "displayValue": "select_promotion"
      },
      {
        "value": "ecommerce_view_cart",
        "displayValue": "view_cart"
      },
      {
        "value": "ecommerce_view_item",
        "displayValue": "view_item"
      },
      {
        "value": "ecommerce_view_item_list",
        "displayValue": "view_item_list"
      },
      {
        "value": "ecommerce_view_promotion",
        "displayValue": "view_promotion"
      }
    ],
    "simpleValueType": true,
    "help": "You could select GA4 recommended events along with their prescribed parameters, to ensure maximum available detail in your GA4 property reports. \u003ca href\u003d\u0027https://support.google.com/analytics/answer/9267735\u0027\u003eCheck the details\u003c/a\u003e",
    "enablingConditions": [
      {
        "paramName": "trackingType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "custom_event_name_group",
    "displayName": "Custom event name configuration",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "name_from_datalayer",
        "checkboxText": "Use event_name specified in the dataLayer",
        "simpleValueType": true,
        "help": "Will look for the event_name key in the dataLayer.push() of this event and ignore any manually given name.",
        "defaultValue": false
      },
      {
        "type": "TEXT",
        "name": "event_name",
        "displayName": "Custom Event Name",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "name_from_datalayer",
            "paramValue": false,
            "type": "EQUALS"
          }
        ],
        "help": "Manually given event name, this will override the name of the event and how it will show up in the reports"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "eventType",
        "paramValue": "custom_event",
        "type": "EQUALS"
      }
    ],
    "help": "How the event will show up in the GA4 reports"
  },
  {
    "type": "TEXT",
    "name": "items",
    "displayName": "Ecommerce items object",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "eventType",
        "paramValue": "ecommerce_add_payment_info",
        "type": "EQUALS"
      },
      {
        "paramName": "eventType",
        "paramValue": "ecommerce_add_shipping_info",
        "type": "EQUALS"
      },
      {
        "paramName": "eventType",
        "paramValue": "ecommerce_add_to_cart",
        "type": "EQUALS"
      },
      {
        "paramName": "eventType",
        "paramValue": "ecommerce_add_to_wishlist",
        "type": "EQUALS"
      },
      {
        "paramName": "eventType",
        "paramValue": "ecommerce_begin_checkout",
        "type": "EQUALS"
      },
      {
        "paramName": "eventType",
        "paramValue": "ecommerce_purchase",
        "type": "EQUALS"
      },
      {
        "paramName": "eventType",
        "paramValue": "ecommerce_refund",
        "type": "EQUALS"
      },
      {
        "paramName": "eventType",
        "paramValue": "ecommerce_remove_from_cart",
        "type": "EQUALS"
      },
      {
        "paramName": "eventType",
        "paramValue": "ecommerce_select_item",
        "type": "EQUALS"
      },
      {
        "paramName": "eventType",
        "paramValue": "ecommerce_select_promotion",
        "type": "EQUALS"
      },
      {
        "paramName": "eventType",
        "paramValue": "ecommerce_view_cart",
        "type": "EQUALS"
      },
      {
        "paramName": "eventType",
        "paramValue": "ecommerce_view_item",
        "type": "EQUALS"
      },
      {
        "paramName": "eventType",
        "paramValue": "ecommerce_view_item_list",
        "type": "EQUALS"
      },
      {
        "paramName": "eventType",
        "paramValue": "ecommerce_view_promotion",
        "type": "EQUALS"
      }
    ],
    "help": "If you have a custom variable for the items present in your ecommerce event, feel free to add the variable here.\n\u003cbr\u003e\nShould be a JavaScript object, for example:\n\u003cbr\u003e\u003cbr\u003e\nfunction() { \u003cbr\u003e\n  var items \u003d []; \u003cbr\u003e\n  \u003cbr\u003e\n  items.push(\u003cbr\u003e \n    {\u003cbr\u003e\n      item_id: \"TEST-SKU\",\u003cbr\u003e\n      item_name: \"TEST-NAME\",\u003cbr\u003e\n      affiliation: \"TEST-AFFILIATION\",\u003cbr\u003e\n      coupon: \"TEST-COUPON\",\u003cbr\u003e\n      item_brand: \"TEST-BRAND\",\u003cbr\u003e\n      item_variant: \"TEST-VARIANT\",\u003cbr\u003e\n      price: 0.01,\u003cbr\u003e\n      quantity: 1  \u003cbr\u003e\n    }\u003cbr\u003e\n  );\u003cbr\u003e\n  \u003cbr\u003e\n  return items;\u003cbr\u003e\n}"
  },
  {
    "type": "GROUP",
    "name": "recommended parameters group",
    "displayName": "Recommended Event Parameters",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "earn_virtual_currency",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "virtual_currency_name",
                "displayValue": "virtual_currency_name"
              },
              {
                "value": "value",
                "displayValue": "value"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "earn_virtual_currency",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "join_group",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "group_id",
                "displayValue": "group_id"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "join_group",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "login",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "method",
                "displayValue": "method"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "login",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "search",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "search_term",
                "displayValue": "search_term"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "search",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "select_content",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "content_type",
                "displayValue": "content_type"
              },
              {
                "value": "item_id",
                "displayValue": "item_id"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "select_content",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "share",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "content_type",
                "displayValue": "content_type"
              },
              {
                "value": "item_id",
                "displayValue": "item_id"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "share",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "sign_up",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "method",
                "displayValue": "method"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "sign_up",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "spend_virtual_currency",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "item_name",
                "displayValue": "item_name"
              },
              {
                "value": "virtual_currency_name",
                "displayValue": "virtual_currency_name"
              },
              {
                "value": "value",
                "displayValue": "value"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "spend_virtual_currency",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_add_payment_info",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "coupon",
                "displayValue": "coupon"
              },
              {
                "value": "currency",
                "displayValue": "currency"
              },
              {
                "value": "payment_type",
                "displayValue": "payment_type"
              },
              {
                "value": "value",
                "displayValue": "value"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_add_payment_info",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_add_shipping_info",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "coupon",
                "displayValue": "coupon"
              },
              {
                "value": "currency",
                "displayValue": "currency"
              },
              {
                "value": "shipping_tier",
                "displayValue": "shipping_tier"
              },
              {
                "value": "value",
                "displayValue": "value"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_add_shipping_info",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_add_to_cart",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "currency",
                "displayValue": "currency"
              },
              {
                "value": "value",
                "displayValue": "value"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_add_to_cart",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_add_to_wishlist",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "currency",
                "displayValue": "currency"
              },
              {
                "value": "value",
                "displayValue": "value"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_add_to_wishlist",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_begin_checkout",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "coupon",
                "displayValue": "coupon"
              },
              {
                "value": "currency",
                "displayValue": "currency"
              },
              {
                "value": "value",
                "displayValue": "value"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_begin_checkout",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_generate_lead",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "currency",
                "displayValue": "currency"
              },
              {
                "value": "value",
                "displayValue": "value"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_generate_lead",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_purchase",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "affiliation",
                "displayValue": "affiliation"
              },
              {
                "value": "coupon",
                "displayValue": "coupon"
              },
              {
                "value": "currency",
                "displayValue": "currency"
              },
              {
                "value": "transaction_id",
                "displayValue": "transaction_id"
              },
              {
                "value": "shipping",
                "displayValue": "shipping"
              },
              {
                "value": "tax",
                "displayValue": "tax"
              },
              {
                "value": "value",
                "displayValue": "value"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_purchase",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_refund",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "affiliation",
                "displayValue": "affiliation"
              },
              {
                "value": "coupon",
                "displayValue": "coupon"
              },
              {
                "value": "currency",
                "displayValue": "currency"
              },
              {
                "value": "transaction_id",
                "displayValue": "transaction_id"
              },
              {
                "value": "shipping",
                "displayValue": "shipping"
              },
              {
                "value": "tax",
                "displayValue": "tax"
              },
              {
                "value": "value",
                "displayValue": "value"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_refund",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_remove_from_cart",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "currency",
                "displayValue": "currency"
              },
              {
                "value": "value",
                "displayValue": "value"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_remove_from_cart",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_select_item",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "item_list_name",
                "displayValue": "item_list_name"
              },
              {
                "value": "item_list_id",
                "displayValue": "item_list_id"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_select_item",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_select_promotion",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "promotion_id",
                "displayValue": "promotion_id"
              },
              {
                "value": "promotion_name",
                "displayValue": "promotion_name"
              },
              {
                "value": "creative_name",
                "displayValue": "creative_name"
              },
              {
                "value": "creative_slot",
                "displayValue": "creative_slot"
              },
              {
                "value": "location_id",
                "displayValue": "location_id"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_select_promotion",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_view_cart",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "currency",
                "displayValue": "currency"
              },
              {
                "value": "value",
                "displayValue": "value"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_view_cart",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_view_item",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "currency",
                "displayValue": "currency"
              },
              {
                "value": "value",
                "displayValue": "value"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_view_item",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_view_item_list",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "item_list_name",
                "displayValue": "item_list_name"
              },
              {
                "value": "item_list_id",
                "displayValue": "item_list_id"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_view_item_list",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecommerce_view_promotion",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "promotion_id",
                "displayValue": "promotion_id"
              },
              {
                "value": "promotion_name",
                "displayValue": "promotion_name"
              },
              {
                "value": "creative_name",
                "displayValue": "creative_name"
              },
              {
                "value": "creative_slot",
                "displayValue": "creative_slot"
              },
              {
                "value": "location_id",
                "displayValue": "location_id"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "selectItems": []
          }
        ],
        "enablingConditions": [
          {
            "paramName": "eventType",
            "paramValue": "ecommerce_view_promotion",
            "type": "EQUALS"
          }
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "trackingType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "page_info_group",
    "displayName": "Page Information (optional)",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "pageLocation",
        "displayName": "Page Location/URL",
        "simpleValueType": true,
        "help": "This information is optional in case you want to customize the page location and path for your events.  If left blank, GTAG will use the default values"
      },
      {
        "type": "TEXT",
        "name": "pagePath",
        "displayName": "Page Path",
        "simpleValueType": true,
        "help": "This information is optional in case you want to customize the page location and path for your events.  If left blank, GTAG will use the default values"
      }
    ],
    "help": "This information is optional in case you want to customize the page location and path for your events.\n\nIf left blank, GTAG will use the default values",
    "enablingConditions": [
      {
        "paramName": "trackingType",
        "paramValue": "config",
        "type": "NOT_EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "Custom parameters group",
    "displayName": "Custom parameters (optional)",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "get_params_from_datalayer",
        "checkboxText": "Use parameter data available in the dataLayer",
        "simpleValueType": true,
        "help": "Will send along ALL keys available in the dataLayer.push() of this event. \n\nThese will be merged with any additional parameters you set via the table below. Any conflicts/duplication will be resolved in favor of the parameters you add to the table.",
        "defaultValue": false
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "additional_parameters",
        "displayName": "Manually added params",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "help": ""
      }
    ],
    "help": "Custom parameters are keys that are not already automatically collected and extra data that you want to include along with the event. Custom parameters will not show up in standard reports so you might want to register them as custom dimensions in GA4."
  },
  {
    "type": "GROUP",
    "name": "User properties group",
    "displayName": "Custom User Properties (optional)",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "user_properties",
        "displayName": "Manually added user properties",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "help": "User properties are attributes that can be used to define segments of your user base. User properties also provide additional context around the user and events they trigger on the website."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "Default event data group",
    "displayName": "Default event data (optional)",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "LABEL",
        "name": "label3",
        "displayName": "\u003cb\u003eThe variable HAS to be of the type Google Tag: Event Settings\u003c/b\u003e, otherwise it will not be recognized \u003cbr\u003e\u003cbr\u003e You may use a variable here that will be merged with any additional parameters already set above. \u003cbr\u003e Any conflicts will be resolved in favor of the parameters you add to the dataLayer and the table (in that order)."
      },
      {
        "type": "SELECT",
        "name": "defaultSettingsVariable",
        "displayName": "Load parameters and user properties from Google Tag: Event Settings variable",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": false,
            "displayValue": "False"
          }
        ],
        "simpleValueType": true
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const makeTableMap = require('makeTableMap');
const query = require('queryPermission');
const createQueue = require('createQueue');
const createArgumentsQueue = require('createArgumentsQueue');
const copyFromWindow = require('copyFromWindow');
const injectScript = require('injectScript');
const getTimestampMillis = require('getTimestampMillis');
const encodeUriComponent = require('encodeUriComponent');
const getContainerVersion = require('getContainerVersion');
const copyFromDataLayer = require('copyFromDataLayer');
const JSON = require('JSON');
const readTitle = require('readTitle');

//log(data.defaultSettingsVariable);

let timestamp_millis = getTimestampMillis();
const eventType = data.eventType;
const measurementId = data.measurementId;

const cv = getContainerVersion();

const ecommerce_items = data.items;

const gtmUniqueEventId = copyFromDataLayer('gtm.uniqueEventId',1);
const dataLayer = copyFromWindow('dataLayer');

//A list of dataLayer parameter keys that we don't want in our events
let forbiddenDataLayerParameters = ["event", "gtm.uniqueEventId", "callback"];


/**
 * Transport URL definition.
 * If you want to send events to your ssGTM, 
 * you can change the hostname and path here.
 *
 * Make sure you change the sendEventToServer flag to TRUE
 * as well as adding the necessary permissions for the new host
 */
const sendEventToServer = true;

const transport = {
  hostname: 'tms.your-domain.com',
  path: '/some/path' //If it's the root, just leave '/' 
};


/**
 * Gtag script definition.
 * If you want to load GTAG from your own 1st party domain, 
 * you can change the hostname and path here.
 * 
 * Remember as well to add the necessary permissions for the new host
 */
const script = {
  hostname: 'www.googletagmanager.com',
  path: '/gtag/js',
  parameters: {
    id: data.measurementId,
    l: 'dataLayer'
  }
};


/**
 * Turns an object literal into a query string
 * @param object obj 
 * @returns string
 */
const objectToQueryString = (obj) => {
  
  let queryString = [];
  
  for(let prop in obj) {
    if (!obj.hasOwnProperty(prop)) continue;
    queryString.push(prop + '=' + obj[prop]);
  }
  
  return '?' + queryString.join('&');
};


/**
 * Checks for existence of gtag global command queue.
 * If it already exists, it is returned. If it doesn't exist it is created, gtag.js injected and then returned.
 */
const getGtag = () => {
  let gtag = copyFromWindow('gtag');
  
  if(gtag){ 
    return gtag;
  }
  
  gtag = createArgumentsQueue('gtag', 'dataLayer');
  
  injectScript('https://' + script.hostname + script.path + objectToQueryString(script.parameters), data.gtmOnSuccess, data.gtmOnFailure, 'gtag'); 
  
  gtag('js', timestamp_millis);
  
  let configuration = {send_page_view: data.send_page_view};
 
  if(cv.debugMode || cv.previewMode){  //If the container is in debug/preview mode, then all events will be able to be seen in GA4's debug view
    configuration.debug_mode = true;
  }
  
  if(sendEventToServer){  //If the server side GTM flag is active
    configuration.transport_url = 'https://' + transport.hostname + transport.path;
    configuration.first_party_collection = true;
  }
  
  gtag('config', measurementId, configuration);
  
  return gtag;
};


const getCurrentEvent = (currentEvent) => {
  if (dataLayer && gtmUniqueEventId) {
    // Get object from dataLayer that matches the gtm.uniqueEventId (the current event)
    // inspired by Simo Ahava's dataLayer picker template
    // https://github.com/gtm-templates-simo-ahava/data-layer-picker
    let currentEvent = dataLayer.map(o => {
    // If falsy (due to e.g. sandbox API suppressing the object), return empty object
    if (!o) return {};
    
      // If a regular dataLayer object, return it
      if (o['gtm.uniqueEventId']) return o;

      // Otherwise assume it's a template constructor-based object
      // Clone the object to remove constructor, then return first
      // property in the object (the wrapper)
      o = JSON.parse(JSON.stringify(o));
      for (let prop in o) {
        return o[prop];
      }
    // Filter to only include the item(s) where the event ID matches
    }).filter(o => !!o && o['gtm.uniqueEventId'] === gtmUniqueEventId);
  
    // Get the first item from the matches
    return currentEvent.length ? currentEvent[0] : {};
  }
};

let currentEvent = getCurrentEvent();
let parameters = {};
let gtag = getGtag();

/**
 * Checks for default parameters in the Google Tag Event settings variable, and add them to the GTAG parameters 
 */
let default_parameters = data.defaultSettingsVariable;// ? makeTableMap(data.defaultSettingsVariable, 'key', 'value') : undefined;

if(default_parameters){
  for(var key in default_parameters){
    if(key != "user_properties" &&  typeof default_parameters[key] !== 'object' && typeof default_parameters[key] !== 'function'){
      parameters[key] = default_parameters[key];
    }
  }
}

/**
 * Checks if the tag is flagged to get all keys from the dataLayer.push(), and add them to the GTAG parameters 
 */
if(data.get_params_from_datalayer){
  let dataLayer_parameters = {};

  for(var property in currentEvent) {
    //if the dataLayer.push() key is in the ignore/forbbiden list, ignore and continue to the next key
    if(forbiddenDataLayerParameters.indexOf(property) >= 0){ continue; }
    
    //if the value of the dataLayer.push key is an object or a function, ignore it
    if(typeof currentEvent[property] !== 'object' && typeof currentEvent[property] !== 'function'){
      
      //if the value of the dataLayer.push key is a number or a boolean then translate to a string
      if(typeof currentEvent[property] === 'number' || typeof currentEvent[property] === 'boolean') {
        parameters[property] = currentEvent[property].toString();
      }else {
        parameters[property] = currentEvent[property];
      }
    }
  }
}


/**
 * Checks for recommended parameters set, and add them to the GTAG parameters 
 */
let recommended_parameters = data[eventType] ? makeTableMap(data[eventType], 'key', 'value') : undefined;
if(recommended_parameters){
  for(var key in recommended_parameters){
    parameters[key] = recommended_parameters[key];
  }
}


/**
 * Checks for custom additional parameters in the tag table, and add them to the GTAG parameters 
 */
let additional_parameters = data.additional_parameters ? makeTableMap(data.additional_parameters, 'key', 'value') : undefined;

if(additional_parameters){
  for(var key in additional_parameters){
    parameters[key] = additional_parameters[key];
  }
}

log("PARAMETERS ---",parameters);


/**
 * Checks for custom additional user properties in the tag table 
 */
let user_properties = data.user_properties ? makeTableMap(data.user_properties, 'key', 'value') : undefined;


/**
 * Checks for default user_properties in the Google Tag Event settings variable
 */
let default_user_properties = data.defaultSettingsVariable.user_properties;

if(default_user_properties){
  for(var key in default_user_properties){
    if(key != "user_properties" &&  typeof default_user_properties[key] !== 'object' && typeof default_user_properties[key] !== 'function'){
      user_properties[key] = default_user_properties[key];
    }
  }
}


/**
 * Set all user_properties detected 
 */
if(user_properties){
  gtag('set', 'user_properties', user_properties);
}else{
  user_properties = {};
  gtag('set', 'user_properties', user_properties);
}
log("USER_PROPERTIES ---",user_properties);


/**
 * Send the GTAG config, along with all detected parameters
 */
if(data.trackingType == "config"){
    
  if(!parameters){
    parameters = {};
  }
  
  gtag('config', data.measurementId, parameters);

}


/**
 * Send the GTAG page_view, along with all detected parameters
 */
if(data.trackingType == "pageview"){
  
  if(!parameters){
    parameters = {};
  }
  
  parameters.send_to = measurementId;
  parameters.page_title = readTitle();
  if(data.pageLocation){
     parameters.page_location = data.pageLocation;
  }
  if(data.pagePath){
     parameters.page_path = data.pagePath;
  }
  
  gtag('event', 'page_view', parameters);

}


/**
 * Send the GTAG event depending if it's a custom, ecommerce or recommended event, along with all detected parameters
 */
if(data.eventType == "custom_event"){ //Send a custom event
  let event_name;

  if(data.name_from_datalayer){
    event_name = currentEvent.event_name;
  }else{
    event_name = data.event_name;
  }
  
  if(!parameters){
    parameters = {};
  }
  
  parameters.send_to = measurementId;
  
  gtag('event', event_name, parameters);

}else if(0 <= eventType.search("ecommerce_")){ //Send a recommended ecommerce event
  let event_name = eventType.split("ecommerce_")[1];
  let ecommerce = parameters ? parameters : {};
  ecommerce.items = ecommerce_items;
  
  ecommerce.send_to = measurementId;
  log("ecommerce ---",ecommerce);
  gtag('event', event_name, ecommerce);
  
}else{ //Send any other recommended event
  
  if(!parameters){
    parameters = {};
  }
  
  parameters.send_to = measurementId;
  
  gtag('event', eventType, parameters);
}

data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
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
                    "string": "dataLayer"
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
                    "string": "gtag"
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
                "string": "https://www.googletagmanager.com/gtag/js?id\u003d*"
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
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedKeys",
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
  },
  {
    "instance": {
      "key": {
        "publicId": "read_container_data",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_title",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Quick Test
  code: runCode();
setup: ''


___NOTES___

Created on 1/23/2024, 10:41:21 PM


