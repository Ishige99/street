if (document.URL.match( /new/ ) || document.URL.match( /edit/ )) {
  document.addEventListener('DOMContentLoaded', function(){
    const ImageList = document.getElementById('image-list');

    const createImageHTML = (blob) => {
     const imageElement = document.createElement('div');

     const blobImage = document.createElement('img');
     blobImage.setAttribute('src', blob);

     imageElement.appendChild(blobImage);
     ImageList.appendChild(imageElement);
    };

    document.getElementById('clothe_image').addEventListener('change', function(e){
      var targetImg = document.getElementById('clothe-image');
      targetImg.width = 20;
      targetImg.height = 20;

      const imageContent = document.querySelector('img');
      if (imageContent){
        imageContent.remove();
      }

      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);

      createImageHTML(blob);
    });
  });
}