import { Controller } from 'stimulus';
import '../stylesheets/css/registration.scss'
import Pristine from 'pristinejs';

export default class extends Controller {

  static targets = [ "form", "button" ]

  connect() {
  }

  inputChanged() {
    const pristine = new Pristine(this.formTarget);
    if (pristine.validate()) {
      this.enableButton(this.buttonTarget)
    }
    else{
      this.disableButton(this.buttonTarget)
    }
  }

  enableButton(button) {
    button.disabled = false
    button.classList.remove('registration__button--disable')
    button.classList.add('registration__button--active')
  }

  disableButton(button) {
    button.disabled = true
    button.classList.remove('registration__button--active')
    button.classList.add('registration__button--disable')
  }
}
