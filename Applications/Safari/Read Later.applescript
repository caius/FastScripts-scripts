-- AppleScript wrapper © Copyright 2011, Red Sweater Software.
-- JavaScript code © Copyright Marco Arment or Instapaper, LLC. Not sure.

tell application "Safari"
  activate
  set myJavascript to "\n\t\tfunction iprl5()\n\t\t{\n\t\t\tvar d=document, z=d.createElement('scr'+'ipt'), b=d.body;\n\t\n\t\t\ttry\n\t\t\t{\n\t\t\t\tif(!b)throw(0);\n\t\t\t\td.title='(Saving...) '+d.title;\n\t\t\t\tz.setAttribute('src','http://www.instapaper.com/j/iYxHf6nbc8sc?u='+encodeURIComponent(d.location.href)+'&t='+(new Date().getTime()));\n\t\t\t\tb.appendChild(z);\n\t\t\t}\n\t\t\tcatch(e)\n\t\t\t{\n\t\t\t\talert('Please wait until the page has loaded.');\n\t\t\t}\n\t\t}\n\t\t\n\t\tiprl5();\n\t\tvoid(0);\n\t"
  do JavaScript myJavascript in document 1
end tell
