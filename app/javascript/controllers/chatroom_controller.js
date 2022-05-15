import { Controller } from 'stimulus';
import '../stylesheets/css/chatroom.scss'

export default class extends Controller {
  static targets = [ 'container' ]

  connect() {
    this.containerTarget.scrollTop = this.containerTarget.scrollHeight;
  }
}