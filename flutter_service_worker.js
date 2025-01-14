'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "7ca3c167dfd1c98c46a18e79bb2bd53d",
"version.json": "b6a3e74db067812ddc510932de292e4d",
"index.html": "8c60a7adbb7bac24a922ae7816f13db9",
"/": "8c60a7adbb7bac24a922ae7816f13db9",
"main.dart.js": "8fece30c5c30de634adb1ea3856c5c22",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"favicon.png": "182c97f7e2c19cfbec996759ce4180f7",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "5c43a83b308b56789b8f748f5759333a",
"assets/AssetManifest.json": "5ce33a834c8ac4bd6fa540bfae6942e8",
"assets/NOTICES": "bcecdd6fa8e153f4821b4d66d87697d8",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "074efc3b0f3e65e9c26cc660031ffdec",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "3df8c7eb721c9adaa6e2313c43946db0",
"assets/fonts/MaterialIcons-Regular.otf": "72ade0d2b692c0af86c7091188d5adf6",
"assets/assets/img/switch-logo.webp": "a1dbc947c75b18f4b6aeccb9f8afe877",
"assets/assets/img/fha_logo.jpeg": "a976da3fb85354963f38b88d1fb5358d",
"assets/assets/img/logo.png": "b4076d57cfc6c6a41fee2b726524a125",
"assets/assets/img/ninesol_logo.png": "e9b34d0c6a8adb3bc5b5a804898462d8",
"assets/assets/icon/light_mode.svg": "8bb2786ceee2030ded08246c1f3dd83d",
"assets/assets/icon/payment.svg": "fd7729626c5e46b1b0cba099e380e0d9",
"assets/assets/icon/figma.svg": "72b52a1861586ea65efda8eb5c195c04",
"assets/assets/icon/firebase.svg": "1156652a1337f45033c2f680b5e9fd0e",
"assets/assets/icon/java.svg": "b109af8a0a892b82bb7b3845b2a73360",
"assets/assets/icon/cancel.svg": "5d3b077f5c5c8cfead9526376f7c3376",
"assets/assets/icon/sockets.svg": "9a423a21344d0e64a04f2b252d501eeb",
"assets/assets/icon/database.svg": "610a8e21f17f3413a7d2899110d8c0f8",
"assets/assets/icon/profile_avatar.svg": "cd382ced1e56146125a80e8f18e00c7e",
"assets/assets/icon/flutter.svg": "dd9e5c13df7b603e6fb7c53841cf5fe8",
"assets/assets/icon/git.svg": "0f08a722d56d2a3682fffb800a775912",
"assets/assets/icon/mapbox_night.svg": "47a60520adf2f40c88266c67b563e69d",
"assets/assets/icon/dark_mode.svg": "fe43e182a63c623a16f899d15e5956a6",
"assets/assets/icon/solid_principles.svg": "b62fe07498e1760d15a2b2a46deed104",
"assets/assets/icon/architecture.svg": "1406d047710bb7deb53eb011fbc2be23",
"assets/assets/icon/kotlin.svg": "81896e939885c1bc453e4fc87cdef8b9",
"assets/assets/icon/maps.svg": "4c5520a8f883cecc42a18adf81815d7d",
"assets/assets/icon/dart.svg": "ef7a8660339f289941203c57f4f2d924",
"assets/assets/icon/unit-testing.svg": "c95746e318b557a0ca9ff9a7b8a43748",
"assets/assets/icon/solid_principles_night.svg": "5bdde49c2600f8e973d7f4f7bd87a1f3",
"assets/assets/icon/person_coding.svg": "af9cf145705b2bdea82710f611b738d9",
"assets/assets/icon/google_maps.svg": "164a6e9605fefcfd8b43eb9119c4215e",
"assets/assets/icon/mapbox.svg": "0a623108f77df4cd2718b242c59a4584",
"assets/assets/icon/location.svg": "7b1a25f673eb819692b1c6885c30037d",
"assets/assets/icon/postman.svg": "85b0f05f42b75a3e099c94112fa8a81e",
"assets/assets/icon/jetpack_compose.webp": "b035d9ec8e81e5c112c83a5cd425765a",
"assets/assets/icon/socket-night.svg": "452fe22e345c577fede2cb3d78cbd2aa",
"assets/assets/icon/api_service.svg": "752753f173b8b31e85b200f2ed7f22f4",
"assets/assets/icon/dependency_injection-com.svg": "7bd99baad43af78204e5f6e6c6a260d0",
"assets/assets/gif/portfolio.gif": "b51c2856a09d572c4218d6d55b2a534c",
"assets/assets/gif/working_anim.json": "aef093076f07c34c080af344442aa5b6",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
