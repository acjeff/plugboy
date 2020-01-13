document.addEventListener('DOMContentLoaded', function () {
  // // 🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥
  // // The Firebase SDK is initialized and available here!
  //
  // firebase.auth().onAuthStateChanged(user => { });
  // firebase.database().ref('/path/to/ref').on('value', snapshot => { });
  // firebase.messaging().requestPermission().then(() => { });
  // firebase.storage().ref('/path/to/ref').getDownloadURL().then(() => { });
  //
  // // 🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥

  try {
    let app = firebase.app();

    var moveRight = false;
    var moveLeft = false;
    var jumping = false;
    var jumpFrame = 0;
    var walkingSpeed = 3;
    var jumpingXSpeed = 5;
    var jumpFrameCount = 40;
    var charXChange;
    var charYChange;
    var backgroundCanvas;
    var character;

    function init() {
      // Add background canvas
      backgroundCanvas = document.createElement('div');
      $(backgroundCanvas).css({
        'width': '100%',
        'height': '0',
        'padding-bottom': '56.25%',
        'background-color': 'green',
        'position': 'relative',
        'overflow': 'hidden'
      });
      backgroundCanvas.id = "background";
      $('body').append(backgroundCanvas);

      //  Add Character Sprite
      character = document.createElement('div');
      character.id = "character";
      // $(character).css({'width': '5%', 'height': '0', 'padding-bottom': '5%', 'background-color': 'red', 'position': 'absolute', 'top': '50%', 'overflow': 'visible'});
      $('#background').append(character);

      //  Add Rope

      var i;
      for (i = 0; i < 30; i++) {
        var rope = document.createElement('div');
        $(rope).attr('class', 'rope');
        $(rope).css({'background-color': 'orange'});
        $('#character').append(rope);
      }

    }

    init();

    $(window).keydown(function (evt) {
      if (evt.which === 65) moveLeft = true;
      if (evt.which === 68) moveRight = true;
      if (evt.which === 32) jumping = true
    }).keyup(function (evt) {
      if (evt.which === 65) moveLeft = false;
      if (evt.which === 68) moveRight = false;
    });

    var leftPercentage = 0;
    var walkingFrame = 1;

    function animate() {
      requestAnimationFrame(animate);

      if (moveLeft) {
        $(character).css({'background-image': 'url("../img/sprite_example_left.png")'});
        if (jumping) charXChange = -jumpingXSpeed;
        else charXChange = -walkingSpeed;
      }
      if (moveRight) {
        $(character).css({'background-image': 'url("../img/sprite_example.png")'});
        if (jumping) charXChange = jumpingXSpeed;
        else charXChange = walkingSpeed;
      }
      if (jumping) {
        if (jumpFrame < (jumpFrameCount / 2)) {
          charYChange = -10;
          jumpFrame += 1
        } else if ((jumpFrame >= (jumpFrameCount / 2)) && (jumpFrame < jumpFrameCount)) {
          charYChange = 10;
          jumpFrame += 1
        } else if (jumpFrame >= jumpFrameCount) {
          console.log('stop jumping');
          charYChange = 0;
          jumping = false;
          jumpFrame = 0;
        }
      }
      if (moveLeft || moveRight || jumping) {
        console.log($(character).position().left, ' : $(character).position().left')
        console.log(charXChange, ' : charXChange')
        $(character).css({
          'left': $(character).position().left + charXChange + 'px',
          'top': $(character).position().top + charYChange + 'px'
        });

        if (walkingFrame === 20) {
          $(character).css({'background-position-y': '50%'});
          leftPercentage = 0;
        }
        if (walkingFrame === 40) {
          leftPercentage = 0;
          walkingFrame = 1;
          $(character).css({'background-position-y': '0%'});
        }
        if (walkingFrame % 2 === 0 && leftPercentage < 100) {
          leftPercentage += 11.20;
          $(character).css({'background-position-x': leftPercentage + '%'});
        }
        walkingFrame += 1;

      } else {
        charXChange = 0;
        charYChange = 0;
      }

      console.log('Animate');
    }

    animate();

  } catch (e) {
    console.error(e);
    document.getElementById('load').innerHTML = 'Error loading the Firebase SDK, check the console.';
  }
});
