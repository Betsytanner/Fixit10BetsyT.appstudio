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
  "cached_js": "pw = \"Bluejay*2021\"\n\n/*\n1. create global variables req and query and results if not already done\n 2. create SELECT query - that gets customer names to be displayed\n 3. look at query\n 4. test SELECT query in Database\n 5. run ajax call (which runs the query)\n    > if transit works, parse results into JSON\n    > if transit didn't work, tell user error in transit \n> user can select one customer\n> Used a sql Select  query to get all of the customers whose state matches the state of the customer chosen by the user. \nSELECT * FROM customer WHERE state == \" \"\nlet state = \"SELECT * FROM customer WHERE state == userState\n> Used a textArea to show the user the matching customers, one per line, using a template literal.\n*/\n\ncustomerSelect.onshow=function() {\n  txtResults_contents.style.height = \"200px\"\n//create select statement\nlet query = \"SELECT * FROM customer\"\n          \n// Below change from my netID to yours (twice: user and database)    \nlet req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=bgt15846&pass=\" + pw + \"&database=bgt15846&query=\" + query)\n\n  if (req.status == 200) { //transit trip worked.\n    //has all roqs for for ex hores records \n       results = JSON.parse(req.responseText)\n        console.log(results)\n      }\n//showing all names of customer on the table\n\nif (results.length == 0)    // no results were returned by the query\n       lblmsg.value  = \"There are no customers.\"\nelse \n        console.log(`the parsed JSON is ${results}`)\n        console.log(`the first row/item in the big array is a small array: ${results[0]}`)\n//show all customer names \n  for (i = 0; i <= results.length-1; i++) \n    txtAllNames.addItem(results[i][1])\n}\n//when the user clicks a name \ntxtAllNames.onclick=function(){\n  let nameCustomer = ' '\n  let customerState = ' '\n  let displayNames = [ ]\n  \n  \nif (typeof (s) == 'object') \n  return\nelse\n  \n  //when user clicks a name have it be matched to a state \n      //you have to have a match to where the user clicks the name and where the \n      //possibly take this out\n  txtAllNames.value = s\n  //select the customer name \n  nameCustomer = txtAllNames.selction \n  //select the state to match the name\n        for (i = 0; i < results.length[i][1]; i++)\n          if(nameCustomer == results[i][1])\n            customerState = results[i][4]\n         // break\n  //allows the reults to be matched to a state - and adds to an array \n    for (i = 0; i < results.length[i][1]; i++)\n      if (state == results[i][4])\n        displayNames.push(results[i][1])\n      \n          //write a select statement to show the state in the box \n        newQuery = `SELECT name FROM customer WHERE state = ${customerState}`\n        req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=bgt15846&pass=\" + pw + \"&database=bgt15846&query=\" + query)\n        if (req.status == 200) { //transit trip worked.\n    //has all roqs for for ex hores records \n       results = JSON.parse(req.responseText)\n  else \n    let message = \" \"\n    for (i = 0; i < results.length-1; i++)\n    message = message + results[i][0] + \"\\n\"\n    txtAllStates.value = message\n     // end else\n  else\n      txtAllStates = `Error code:  + req.status `\n\n        \n\n",
  "cached_js_script_hash": "115812e5cbaedf1bf76134b1021f8f76",
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
      "id": "txtAllNames",
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
      "onclick": "txtAllNames.onclick()",
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
      "id": "txtAllStates",
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
      "id": "lblmsg",
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
  "id": "customerSelect",
  "language": "JavaScript",
  "left": "0",
  "locked": false,
  "modal": "false",
  "onhide": "",
  "onkeypress": "",
  "onresize": "",
  "onshow": "customerSelect.onshow()",
  "openMode": "none",
  "parentForm": "",
  "position": "absolute",
  "script": "pw = \n\n/*\n1. create global variables req and query and results if not already done\n 2. create SELECT query - that gets customer names to be displayed\n 3. look at query\n 4. test SELECT query in Database\n 5. run ajax call (which runs the query)\n    > if transit works, parse results into JSON\n    > if transit didn't work, tell user error in transit \n> user can select one customer\n> Used a sql Select  query to get all of the customers whose state matches the state of the customer chosen by the user. \nSELECT * FROM customer WHERE state == \" \"\nlet state = \"SELECT * FROM customer WHERE state == userState\n> Used a textArea to show the user the matching customers, one per line, using a template literal.\n*/\n\ncustomerSelect.onshow=function() {\n  txtResults_contents.style.height = \"200px\"\n//create select statement\nlet query = \"SELECT * FROM customer\"\n          \n// Below change from my netID to yours (twice: user and database)    \nlet req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=bgt15846&pass=\" + pw + \"&database=bgt15846&query=\" + query)\n\n  if (req.status == 200) { //transit trip worked.\n    //has all roqs for for ex hores records \n       results = JSON.parse(req.responseText)\n        console.log(results)\n      }\n//showing all names of customer on the table\n\nif (results.length == 0)    // no results were returned by the query\n       lblmsg.value  = \"There are no customers.\"\nelse \n        console.log(`the parsed JSON is ${results}`)\n        console.log(`the first row/item in the big array is a small array: ${results[0]}`)\n//show all customer names \n  for (i = 0; i <= results.length-1; i++) \n    txtAllNames.addItem(results[i][1])\n}\n//when the user clicks a name \ntxtAllNames.onclick=function(){\n  let nameCustomer = ' '\n  let customerState = ' '\n  let displayNames = [ ]\n  \n  \nif (typeof (s) == 'object') \n  return\nelse\n  \n  //when user clicks a name have it be matched to a state \n      //you have to have a match to where the user clicks the name and where the \n      //possibly take this out\n  txtAllNames.value = s\n  //select the customer name \n  nameCustomer = txtAllNames.selction \n  //select the state to match the name\n        for (i = 0; i < results.length[i][1]; i++)\n          if(nameCustomer == results[i][1])\n            customerState = results[i][4]\n         // break\n  //allows the reults to be matched to a state - and adds to an array \n    for (i = 0; i < results.length[i][1]; i++)\n      if (state == results[i][4])\n        displayNames.push(results[i][1])\n      \n          //write a select statement to show the state in the box \n        newQuery = `SELECT name FROM customer WHERE state = ${customerState}`\n        req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=bgt15846&pass=\" + pw + \"&database=bgt15846&query=\" + query)\n        if (req.status == 200) { //transit trip worked.\n    //has all roqs for for ex hores records \n       results = JSON.parse(req.responseText)\n //PROBLEM WITH THE ELSE \n else \n    let message = \" \"\n    for (i = 0; i < results.length-1; i++)\n    message = message + results[i][0] + \"\\n\"\n    txtAllStates.value = message\n     // end else\n  else\n      txtAllStates = `Error code:  + req.status `\n\n        \n\n",
  "setFocusID": "",
  "style": "",
  "theme": "",
  "top": "0",
  "width": 320,
  "_functions": [
    {
      "!type": "Form",
      "_uuid": "2577113c813a454380c01ae773077f51",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "expanded_pmp": true,
      "id": "customerSelect.onshow",
      "location": [
        17,
        18
      ],
      "script": "",
      "signature": "customerSelect.onshow()"
    },
    {
      "!type": "Form",
      "_uuid": "95b72f996dd94261817f2a06369ccd20",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "expanded_pmp": true,
      "id": "txtAllNames.onclick",
      "location": [
        42,
        43
      ],
      "script": "",
      "signature": "txtAllNames.onclick()"
    }
  ]
}