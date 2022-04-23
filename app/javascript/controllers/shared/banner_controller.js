import { Controller } from "stimulus";
import '../../stylesheets/css/shared/banner.scss'
import anime from 'animejs/lib/anime.es.js'

export default class extends Controller {
  
  connect() {
    setTimeout(() => this.close(), 5000);
  }
  
  close() {
    const height = this.element.offsetHeight
    anime({
      targets: this.element,
      top: `-${height}px`,
      easing: 'easeInOutSine',
      duration: 300
    });
  }
}
