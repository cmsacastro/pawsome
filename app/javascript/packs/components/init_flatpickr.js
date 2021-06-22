import flatpickr from "flatpickr";
import 'flatpickr/dist/flatpickr.css';

const initFlatpickr = () => {
  if (document.querySelector('#enquiry_date')) {
    flatpickr('#enquiry_date', {
      enableTime: true
    });
  }
};

export { initFlatpickr };
