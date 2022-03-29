import { Controller } from "stimulus"
import '../stylesheets/css/home.scss'

export default class extends Controller {
  connect() {
    console.log('Hello from stimulus! lchat');
  }
}