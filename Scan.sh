var scanpkg = require("scanpkg");

scanpkg.new(__dirname + "/debs", function(err, result) {
  if (err == scanpkg.noDirError)
    console.error("Folder is not found");
  
  if (err == scanpkg.emptyDirError)
    console.error("Folder is empty");

  console.log(result);
});
