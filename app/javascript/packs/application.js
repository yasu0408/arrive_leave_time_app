require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require("bootstrap/dist/js/bootstrap")
require("@fortawesome/fontawesome-free/js/all")
const flatpickr = require("flatpickr/dist/flatpickr")

document.addEventListener("turbolinks:load", () => {
  flatpickr("#form_control", {
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
  });
})