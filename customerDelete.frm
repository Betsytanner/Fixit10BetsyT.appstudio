{
  "!type": "Form",
  "_uuid": "2b3177c452ed42ecabc79be07f8e4b84",
  "HTML": "",
  "attributes": "",
  "background": "",
  "backgroundimage": "",
  "borderColor": "",
  "borderStyle": "",
  "borderWidth": "",
  "cached_js": "pw = \"Bluejay*2021\"\n\n/*\n1. Used a textArea  or Dropdown that shows all the customer names, one per line.\nUser can pick a customer from the list.  \nUsed a sql Delete  query to delete the customer chosen by the user from the display control. \nUsed an AJAX call to the database to delete the matching customer. \nChecked if customer name exists in database before deleting it.\nUsed a textArea to show the user the remaining customer names, using a template literal. \n*/\n\ncustomerDelete.onshow=function(){\n  txtResults_contents.style.height = \"200px\"\n//create select statement\nlet query = \"SELECT * FROM customer\"\n          \n// Below change from my netID to yours (twice: user and database)    \nlet req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=bgt15846&pass=\" + pw + \"&database=bgt15846&query=\" + query)\n\n  if (req.status == 200) { //transit trip worked.\n    //has all roqs for for ex hores records \n       allCustomerData = JSON.parse(req.responseText)\n        console.log(results)\n      }\n//if there are no customers\nif (results.length == 0)    // no results were returned by the query\n       lblError.value  = \"There are no customers.\"\nelse \n        console.log(`the parsed JSON is ${results}`)\n        console.log(`the first row/item in the big array is a small array: ${results[0]}`)\n//show all customer names \n  for (i = 0; i <=  allCustomerData.length-1; i++) \n    txtNames.addItem(results[i][1])\n\n//when the user clicks a name \ntxtNames.onclick=function(){\n  let customerDelete = txtNames.value\n  //make sure in the database \n  let found = false \n   for (i = 0; i <= allCustomerData.length-1; i++) {\n     if(customerDelete == allCustomerData[i][1])\n     found = true \n     break\n}\n    if (found == false)\n       NSB.MsgBox(\"That customer name is not in the database.\")\n    else if (found == true) {\n      let query = \"DELETE FROM customer WHERE name = \" + '\"' + customerDelete + '\"'\n      req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=bgt15846&pass=\" + pw + \"&database=bgt15846&query=\" + query)\n\n      if (req.status == 200) { //transit worked.\n            if (req.responseText == 500)    // means the insert succeeded\n                NSB.MsgBox(`You have successfully deleted  ${customerDelete}`)\n            else\n                NSB.MsgBox(`There was a problem deleting ${customerDelete} from the database.`)\n      } else {\n        // transit error\n        NSB.MsgBox(`Error: ${req.status}`);\n      }  \n} else {\n//for listing all of the names that have not been deleted \n    let message = \" \"\n    for (i = 0; i < allCustomerData.length-1; i++)\n    message = message + allCustomerData[i][0] + \"\\n\"\n    txtNonDelete.value = message\n} \n       \n       \n       \n       \n       \n       \n       \n       \n       \n       \n  //allows the reults to be matched to a state - and adds to an array \n    \n    for (i = 0; i < results.length[i][1]; i++)\n      if (state == results[i][4])\n        displayNames.push(results[i][1])\n         newQuery = `SELECT name FROM customer WHERE state = ${customerState}`\n          //write a select statement to show the state in the box \n        newQuery = `SELECT name FROM customer WHERE state = ${customerState}`\n        req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=bgt15846&pass=\" + pw + \"&database=bgt15846&query=\" + query)\n        if (req.status == 200) { //transit trip worked.\n    //has all roqs for for ex hores records \n       results = JSON.parse(req.responseText)\n //PROBLEM WITH THE ELSE \n else \n    let message = \" \"\n    for (i = 0; i < results.length-1; i++)\n    message = message + results[i][0] + \"\\n\"\n    txtAllStates.value = message\n     // end else\n  else\n      txtAllStates = `Error code:  + req.status `\n\n        \n\n\n}\n\n\n}\n",
  "cached_js_script_hash": "f89c066e1ac2bcb39e5907d6df0ae7db",
  "children": [
    {
      "!type": "Textarea_bs4",
      "_uuid": "3dce5faa5b3945f0b4900c89eb983af0",
      "align": "",
      "autocapitalize": "",
      "autocomplete": "",
      "autocorrect": "",
      "backgroundColor": "",
      "badge": "",
      "badgeAppearance": " badge-info",
      "bottom": "auto",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "class": "",
      "color": "",
      "disabled": "",
      "display": "",
      "expanded_pmp": true,
      "fontFamily": "",
      "fontSize": "",
      "fontStyle": "",
      "fontWeight": "",
      "footer": "",
      "header": "Textarea",
      "headerCols": 2,
      "height": "auto",
      "hidden": "",
      "icon": "",
      "iconTitle": "",
      "id": "txtNames",
      "inputmode": "",
      "left": 26,
      "mAll": "",
      "mBottom": "",
      "mLeft": "",
      "mRight": "",
      "mTop": "",
      "maxlength": "",
      "name": "",
      "onchange": "",
      "onclick": "txtNames.onclick()",
      "oncopy": "",
      "oncut": "",
      "onfocusin": "",
      "onfocusout": "",
      "oninput": "",
      "onkeypress": "",
      "onkeyup": "",
      "onmousedown": "",
      "onmousemove": "",
      "onmouseout": "",
      "onmouseup": "",
      "onpaste": "",
      "onresize": "",
      "ontouchend": "",
      "ontouchmove": "",
      "ontouchstart": "",
      "pAll": "",
      "pBottom": "",
      "pLeft": "",
      "pRight": "",
      "pTop": "",
      "placeholder": "Enter text here",
      "popBody": "Body",
      "popClose": "hover",
      "popPosition": "",
      "popStyle": "popover",
      "popTitle": "Title",
      "readonly": "",
      "required": "",
      "right": "auto",
      "rows": "",
      "script": "",
      "spellcheck": "true",
      "style": "",
      "top": 61,
      "validation": "",
      "value": "",
      "valueCols": 10,
      "width": 273
    },
    {
      "!type": "Textarea_bs4",
      "_uuid": "ea7f24cb26ac4ef3824110572a6de35a",
      "align": "",
      "autocapitalize": "",
      "autocomplete": "",
      "autocorrect": "",
      "backgroundColor": "",
      "badge": "",
      "badgeAppearance": " badge-info",
      "bottom": "auto",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "class": "",
      "color": "",
      "disabled": "",
      "display": "",
      "expanded_pmp": true,
      "fontFamily": "",
      "fontSize": "",
      "fontStyle": "",
      "fontWeight": "",
      "footer": "",
      "header": "Textarea",
      "headerCols": 2,
      "height": "auto",
      "hidden": "",
      "icon": "",
      "iconTitle": "",
      "id": "txtNonDelete",
      "inputmode": "",
      "left": 13,
      "mAll": "",
      "mBottom": "",
      "mLeft": "",
      "mRight": "",
      "mTop": "",
      "maxlength": "",
      "name": "",
      "onchange": "",
      "onclick": "",
      "oncopy": "",
      "oncut": "",
      "onfocusin": "",
      "onfocusout": "",
      "oninput": "",
      "onkeypress": "",
      "onkeyup": "",
      "onmousedown": "",
      "onmousemove": "",
      "onmouseout": "",
      "onmouseup": "",
      "onpaste": "",
      "onresize": "",
      "ontouchend": "",
      "ontouchmove": "",
      "ontouchstart": "",
      "pAll": "",
      "pBottom": "",
      "pLeft": "",
      "pRight": "",
      "pTop": "",
      "placeholder": "Enter text here",
      "popBody": "Body",
      "popClose": "hover",
      "popPosition": "",
      "popStyle": "popover",
      "popTitle": "Title",
      "readonly": "",
      "required": "",
      "right": "auto",
      "rows": "",
      "script": "",
      "spellcheck": "true",
      "style": "",
      "top": 196,
      "validation": "",
      "value": "",
      "valueCols": 10,
      "width": "auto"
    },
    {
      "!type": "Label_bs4",
      "_uuid": "20470c279bb240afbe0bc82c8af52e98",
      "appearance": "primary",
      "backgroundColor": "",
      "borderRadius": "0",
      "bottom": "auto",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "class": "",
      "color": "",
      "display": "",
      "expanded_pmp": true,
      "fontFamily": "",
      "fontSize": "",
      "fontStyle": "",
      "fontWeight": "",
      "height": 46,
      "hidden": "",
      "id": "lblError",
      "labelStyle": "text",
      "left": 105,
      "mAll": "",
      "mBottom": "",
      "mLeft": "",
      "mRight": "",
      "mTop": "",
      "onclick": "",
      "onmousedown": "",
      "onmousemove": "",
      "onmouseout": "",
      "onmouseup": "",
      "onresize": "",
      "ontouchend": "",
      "ontouchmove": "",
      "ontouchstart": "",
      "pAll": "",
      "pBottom": "",
      "pLeft": "",
      "pRight": "",
      "pTop": "",
      "right": "auto",
      "script": "",
      "style": "",
      "top": 48,
      "value": "Label",
      "width": 186
    }
  ],
  "class": "",
  "designHeight": 0,
  "designWidth": 0,
  "expanded_pmp": true,
  "fullScreen": "true",
  "height": 460,
  "id": "customerDelete",
  "language": "JavaScript",
  "left": "0",
  "locked": false,
  "modal": "false",
  "onhide": "",
  "onkeypress": "",
  "onresize": "",
  "onshow": "customerDelete.onshow()",
  "openMode": "none",
  "parentForm": "",
  "position": "absolute",
  "script": "pw = //\"Bluejay*2021\"\n\n/*\n1. Used a textArea  or Dropdown that shows all the customer names, one per line.\nUser can pick a customer from the list.  \nUsed a sql Delete  query to delete the customer chosen by the user from the display control. \nUsed an AJAX call to the database to delete the matching customer. \nChecked if customer name exists in database before deleting it.\nUsed a textArea to show the user the remaining customer names, using a template literal. \n*/\n\ncustomerDelete.onshow=function(){\n  txtResults_contents.style.height = \"200px\"\n//create select statement\nlet query = \"SELECT * FROM customer\"\n          \n// Below change from my netID to yours (twice: user and database)    \nlet req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=bgt15846&pass=\" + pw + \"&database=bgt15846&query=\" + query)\n\n  if (req.status == 200) { //transit trip worked.\n    //has all roqs for for ex hores records \n       allCustomerData = JSON.parse(req.responseText)\n        console.log(results)\n      }\n//if there are no customers\nif (results.length == 0)    // no results were returned by the query\n       lblError.value  = \"There are no customers.\"\nelse \n        console.log(`the parsed JSON is ${results}`)\n        console.log(`the first row/item in the big array is a small array: ${results[0]}`)\n//show all customer names \n  for (i = 0; i <=  allCustomerData.length-1; i++) \n    txtNames.addItem(results[i][1])\n\n//when the user clicks a name \ntxtNames.onclick=function(){\n  let customerDelete = txtNames.value\n  //make sure in the database \n  let found = false \n   for (i = 0; i <= allCustomerData.length-1; i++) {\n     if(customerDelete == allCustomerData[i][1])\n     found = true \n     break\n}\n    if (found == false)\n       NSB.MsgBox(\"That customer name is not in the database.\")\n    else if (found == true) {\n      let query = \"DELETE FROM customer WHERE name = \" + '\"' + customerDelete + '\"'\n      req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=bgt15846&pass=\" + pw + \"&database=bgt15846&query=\" + query)\n\n      if (req.status == 200) { //transit worked.\n            if (req.responseText == 500)    // means the insert succeeded\n                NSB.MsgBox(`You have successfully deleted  ${customerDelete}`)\n            else\n                NSB.MsgBox(`There was a problem deleting ${customerDelete} from the database.`)\n      } else {\n        // transit error\n        NSB.MsgBox(`Error: ${req.status}`);\n      }  \n} else {\n//for listing all of the names that have not been deleted \n    let message = \" \"\n    for (i = 0; i < allCustomerData.length-1; i++)\n    message = message + allCustomerData[i][0] + \"\\n\"\n    txtNonDelete.value = message\n} \n       \n       \n       \n       \n       \n       \n       \n       \n       \n       \n  //allows the reults to be matched to a state - and adds to an array \n    \n    for (i = 0; i < results.length[i][1]; i++)\n      if (state == results[i][4])\n        displayNames.push(results[i][1])\n         newQuery = `SELECT name FROM customer WHERE state = ${customerState}`\n          //write a select statement to show the state in the box \n        newQuery = `SELECT name FROM customer WHERE state = ${customerState}`\n        req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=bgt15846&pass=\" + pw + \"&database=bgt15846&query=\" + query)\n        if (req.status == 200) { //transit trip worked.\n    //has all roqs for for ex hores records \n       results = JSON.parse(req.responseText)\n //PROBLEM WITH THE ELSE \n else \n    let message = \" \"\n    for (i = 0; i < results.length-1; i++)\n    message = message + results[i][0] + \"\\n\"\n    txtAllStates.value = message\n     // end else\n  else\n      txtAllStates = `Error code:  + req.status `\n\n        \n\n\n}\n\n\n}\n",
  "setFocusID": "",
  "style": "",
  "theme": "",
  "top": "0",
  "width": 320,
  "_functions": [
    {
      "!type": "Form",
      "_uuid": "0d7bf7f2550c43c5a131bfe4bfaf799e",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "expanded_pmp": true,
      "id": "customerDelete.onshow",
      "location": [
        11,
        12
      ],
      "script": "",
      "signature": "customerDelete.onshow()"
    },
    {
      "!type": "Form",
      "_uuid": "44713bcd3f9c437583a524a1632da00e",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "expanded_pmp": true,
      "id": "txtNames.onclick",
      "location": [
        35,
        36
      ],
      "script": "",
      "signature": "txtNames.onclick()"
    }
  ]
}