import { Controller } from 'stimulus';
import Turbolinks from 'turbolinks';
import '../stylesheets/css/chatroom.scss'

export default class extends Controller {
  static targets = [ 'container', 'input' ]

  connect() {
    this.containerTarget.scrollTop = this.containerTarget.scrollHeight;
  }
}