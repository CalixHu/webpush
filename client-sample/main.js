function urlBase64ToUint8Array(base64String) {
  const padding = '='.repeat((4 - base64String.length % 4) % 4);
  const base64 = (base64String + padding)
    .replace(/-/g, '+')
    .replace(/_/g, '/');

  const rawData = window.atob(base64);
  const outputArray = new Uint8Array(rawData.length);

  for (let i = 0; i < rawData.length; ++i) {
    outputArray[i] = rawData.charCodeAt(i);
  }
  return outputArray;
}

const publicVapidKey = 'BNLaWGtG439B37GXVc9rXuyHQqXUKt6bJlel4qFgjAFzi1dqq1bu7dxnCipCtfph7OuBxPb2S7FVofQdpU_0yJQ';
if ('serviceWorker' in navigator) {
  navigator.serviceWorker
    .register('sw.js').then(function (reg) {
      reg.pushManager.subscribe({
        userVisibleOnly: true,
        applicationServerKey: urlBase64ToUint8Array(publicVapidKey)
      }).then(function (sub) {
        console.log('subscription:', JSON.stringify(sub));
      }).catch(e => console.log(e));
    }).catch(function (error) {
      console.log('error: ', error);
    });
}
  