carousel = `<div id="carouselExampleInterval" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active" data-interval="10000">
        <img src="..." class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item" data-interval="2000">
        <img src="..." class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="..." class="d-block w-100" alt="...">
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>`

console.log("123")

$('.photo').on("click", function(){
	title = $(this).find('.post-header').text();
	image = $(this).find('.post-image').html();
	content = $(this).find('.post-body').text();
	$('.modal-title').html(
		title
		);
	$('.modal-body').html(
		image
		);
	$('.modal-footer').html(
		content
		);
});

$('.album').on("click", function(){
	title = $(this).find('.post-header').text();
	image = $(this).find('.post-image').html();
	content = $(this).find('.post-body').text();
	$('.modal-title').html(
		title
		);
	$('.modal-body').html(
		image
		);
	$('.modal-footer').html(
		content
		);
});

$('.selection-button').click(function(){
    if($(this).hasClass('active')){
        $(this).removeClass('active')
    } else {
    	$('button').removeClass('active')
        $(this).addClass('active')

        if($(this).hasClass('photo-button')){
        	$('.album-container').hide(1000);
        	$('.photo-container').show(1000);
        }
        else if ($(this).hasClass('album-button')) {
          $('.album-container').css({display: "flex"});
        	$('.album-container').show(1000);
        	$('.photo-container').hide(1000);
        }
    }
});

$('.post-reaction').click(function(){
    if($(this).hasClass('active')){
        $(this).removeClass('active')
    } else {
        $(this).addClass('active')
    }
});