import React, {Component} from 'react'
import { Link } from "react-router-dom";
import NavBar from "./NavBar";
import Footer from "./Footer";

export default class Index extends Component {
  render () {
    return (
      <div className="index-background">
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img class="d-block w-50" src="https://images.unsplash.com/photo-1528325329579-605078ee56fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80" alt="First slide"/>
            </div>
            <div class="carousel-item">
              <img class="d-block w-50" src="https://images.unsplash.com/photo-1517779548443-852211706367?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80" alt="Second slide"/>
            </div>
            <div class="carousel-item">
              <img class="d-block w-50" src="https://images.unsplash.com/photo-1524053889895-de729a4227ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80" alt="Third slide"/>
            </div>
          </div>
        </div>
        <Link className="btn btn-success" to="/quiz">Find Your Style Persona</Link>
      </div>
    )
  }
}


