//Js function to randomize gary's homepage image.

var gary_couch_image_array = ["xXcVqcSl.jpg", "lSQFZnlh.jpg"];

function getRandomImage(image_array) {

    var path = path || 'https://i.imgur.com/'; // default path here
    var random_number = Math.floor( Math.random() * image_array.length );
    var random_image = image_array[ random_number ];
    var image_tag = '<img src="' + path + random_image + '" alt = "">';
    document.write(image_tag); 
    document.close();
}

getRandomImage(gary_couch_image_array);
