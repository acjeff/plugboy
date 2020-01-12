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
    var walkingSpeed = 0.3;
    var jumpingXSpeed = 0.4;
    var jumpFrameCount = 10;
    var charXChange;
    var charYChange;
    //
    $(window).keydown(function (evt) {
      if (evt.which === 65) moveLeft = true;
      if (evt.which === 68) moveRight = true;
      if (evt.which === 32) jumping = true
    }).keyup(function (evt) {
      if (evt.which === 65) moveLeft = false;
      if (evt.which === 68) moveRight = false;
    });
    var spotlights = [];
    init();
    animate();

    function init() {
      initScene();
      initMisc();
      document.body.appendChild(renderer.domElement);
      window.addEventListener('resize', onWindowResize, false);
    }

    function createSpotlight(x) {
      var spotLight = new THREE.SpotLight(0xffffff);
      // spotLight.name = 'Spot Light';
      spotLight.angle = 0.35;
      spotLight.penumbra = 1;
      spotLight.position.set(0, 1, 0);
      spotLight.position.y = 25;
      spotLight.position.x = x;
      spotLight.target.position.x = x;

      var material = new THREE.MeshPhongMaterial({
        color: 0x000000,
        shininess: 10,
        specular: 0xffffff
      });
      var geometry = new THREE.SphereBufferGeometry(1,100,100, Math.PI/2, Math.PI*2, 0, Math.PI);
      material.side = THREE.BackSide;
      var cube = new THREE.Mesh(geometry, material);
      cube.position.set(0, 1, 0);
      cube.position.y = 20;
      cube.position.x = x;
      cube.castShadow = true;
      cube.receiveShadow = true;
      scene.add(cube);

      spotLight.castShadow = true;
      spotLight.receiveShadow = true;
      spotLight.shadow.camera.near = 8;
      spotLight.shadow.camera.far = 30;
      spotLight.shadow.mapSize.width = 1024;
      spotLight.shadow.mapSize.height = 1024;
      spotlights.push({light: spotLight, target: spotLight.target});
      scene.add(spotLight);
      scene.add(spotLight.target);
      // scene.add( new THREE.CameraHelper( spotLight.shadow.camera ) );

    }


    function initScene() {
      camera = new THREE.PerspectiveCamera(45, window.innerWidth / window.innerHeight, 1, 1000);
      camera.position.set(0, 12, 50);
      scene = new THREE.Scene();
      // Lights
      scene.add(new THREE.AmbientLight(0x1a1a1a));

      createSpotlight(-20);
      createSpotlight(0);
      createSpotlight(20);


      // scene.add( new THREE.CameraHelper( spotLight.shadow.camera ) );

      var material = new THREE.MeshPhongMaterial({
        color: 0xffffff,
        shininess: 10,
        specular: 0xffffff
      });
      var geometry = new THREE.SphereBufferGeometry(0.8, 100, 100);
      cube = new THREE.Mesh(geometry, material);
      cube.position.set(0, 8.6, 0);
      cube.castShadow = true;
      cube.receiveShadow = true;
      scene.add(cube);
      var geometry2 = new THREE.CubeGeometry(0.3, 2, 0.3);
      cube2 = new THREE.Mesh(geometry2, material);
      cube2.position.set(0, 7, 0);
      cube2.castShadow = true;
      cube2.receiveShadow = true;
      scene.add(cube2);
      var geometry = new THREE.BoxBufferGeometry(100, 2, 10);
      var material = new THREE.MeshPhongMaterial({
        color: 0xa0adaf,
        shininess: 150,
        specular: 0x111111
      });
      var ground = new THREE.Mesh(geometry, material);
      ground.scale.multiplyScalar(3);
      ground.castShadow = false;
      ground.receiveShadow = true;
      scene.add(ground);
    }

    function initMisc() {
      renderer = new THREE.WebGLRenderer({antialias: true});
      renderer.setPixelRatio(window.devicePixelRatio);
      renderer.setSize(window.innerWidth, window.innerHeight);
      renderer.shadowMap.enabled = true;
      renderer.shadowMap.type = THREE.PCFShadowMap;
      // Mouse control
      var loader = new GLTFLoader();
      loader.load( 'models/gltf/RobotExpressive/RobotExpressive.glb', function ( gltf ) {
        model = gltf.scene;
        scene.add( model );
        createGUI( model, gltf.animations );
      }, undefined, function ( e ) {
        console.error( e );
      } );
    }

    function onWindowResize() {
      camera.aspect = window.innerWidth / window.innerHeight;
      camera.updateProjectionMatrix();
      renderer.setSize(window.innerWidth, window.innerHeight);
    }

    var swingAmount = 0;
    var countup = true;

    function animate() {
      requestAnimationFrame(animate);
      render();
      if (moveLeft) {
        if (jumping) charXChange = -jumpingXSpeed;
        else charXChange = -walkingSpeed;
      }
      if (moveRight) {
        if (jumping) charXChange = jumpingXSpeed;
        else charXChange = walkingSpeed;
      }
      if (jumping) {
        if (jumpFrame < (jumpFrameCount / 2)) {
          charYChange = 1;
          jumpFrame += 1
        } else if ((jumpFrame >= (jumpFrameCount / 2)) && (jumpFrame < jumpFrameCount)) {
          charYChange = - 1;
          jumpFrame += 1
        } else if (jumpFrame >= jumpFrameCount) {
          charYChange = 0;
          jumping = false;
          jumpFrame = 0;
        }
      }
      if (moveLeft || moveRight || jumping) {
        cube.position.x += charXChange;
        cube.position.y += charYChange;
        cube2.position.x += charXChange;
        cube2.position.y += charYChange;
      } else {
        charXChange = 0;
        charYChange = 0;
      }
      _.each(spotlights, function (spot) {
        if (countup) {
          spot.target.position.x += 0.01;
          swingAmount += 0.01;
          if (swingAmount >= 8)
            countup = false;
        } else {
          spot.target.position.x -= 0.01;
          swingAmount -= 0.01;
          if (swingAmount <= 0)
            countup = true;
        }

      })
    }

    function renderScene() {
      renderer.render(scene, camera);
    }


    function render() {
      renderScene();
    }

  } catch (e) {
    console.error(e);
    document.getElementById('load').innerHTML = 'Error loading the Firebase SDK, check the console.';
  }
});
