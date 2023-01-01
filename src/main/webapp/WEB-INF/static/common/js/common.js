// nav  
function menuover(id){
    $('.dep2_wrap').removeClass('active');
    var select = $(id).next();
    select.addClass('active');
  }

  function menuout(){
    $('.dep2_wrap').removeClass('active');
  }


//auction
function change_image(image){
    var auctionimg_container = document.getElementById("auction-image");
       auctionimg_container.src = image.src;
}
