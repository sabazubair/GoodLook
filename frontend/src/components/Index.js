import React, {Component} from 'react'
import { Link } from "react-router-dom";
import NavBar from "./NavBar";
import Footer from "./Footer";

export default class Index extends Component {
  render () {
    return (
      <div className="index-background container-fluid">
        <div className="row">
          <div className="col-xl-8 col-lg-8 col-md-6 col-xs-12">
            <div id="carouselExampleSlidesOnly" className="carousel slide" data-ride="carousel">
              <div className="carousel-inner">
                <div className="carousel-item active">
                  <img className="d-block" src="https://vg-images.condecdn.net/image/957GYlb5kXg/crop/1440/f/lace.jpg" alt="First slide"/>
                </div>
                <div className="carousel-item">
                  <img className="d-block" src="https://vg-images.condecdn.net/image/XY0JjmzKvdp/crop/1440/f/craft.jpg" alt="Second slide"/>
                </div>
                <div className="carousel-item">
                  <img className="d-block" src="https://vg-images.condecdn.net/image/57pBJ4YxM3j/crop/1440/f/trimmings.jpg" alt="Third slide"/>
                </div>
              </div>
            </div>
            </div>
            <div className="icons col-xl-4 col-lg-4 col-md-6 col-sm-12">
              <div className="row">
                <div className="welcomeText col-12">
                  <h1><i>"Style is like personality, it's innate. Fashion is cyclical."</i></h1>
                    <hr></hr>
                    <p>Want to find your style?</p>
                </div>
              </div>
              <div className="row">
                <div className="col-2">
                  <p><i className="far fa-question-circle fa-3x"></i></p>
                </div>
                <div className="col-10">
                  <p>Take our Quiz to Generate Looks</p>
                </div>
              </div>
              <div className="row">
                <div className="col-2">
                  <p><i className="fas fa-heart fa-3x"></i></p>
                </div>
                <div className="col-10">
                  <p>Save your favourite looks to your Profile</p>
                </div>
              </div>
              <div className="row">
                <div className="col-2">
                  <p><i className="fas fa-camera-retro fa-3x"></i></p>
                </div>
                <div className="col-10">
                  <p>Share with your friends!</p>
                </div>
              </div>
              <div className="indexbutton row">
                <div className="col-12">
                  <Link className="full-width-button btn btn-success" to="/quiz">Find Your Style Persona</Link>
                </div>
              </div>
            </div>
        </div>
      </div>
    )
  }
}


