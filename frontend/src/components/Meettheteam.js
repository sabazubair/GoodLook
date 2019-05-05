import React, {Component} from "react";

export default class Meettheteam extends Component {

  render(){
    return (
      <div className="meettheteam">
          <div class="container">
            <img className="Maliha" src="assets/maliha.jpeg" class="rounded-circle" />
            <border>
              <p class="text-lg-right">Maliha is a software developer.</p>
            </border>

          </div>

          <div class="container">
            <img className="Saba" src="assets/saba.jpeg" class="rounded-circle" />
            <p class="text-lg-right">Saba is a front-end developer.</p>
          </div>

          <div class="container">
            <img className="Sarah" src="assets/sarahfarah.jpeg" class="rounded-circle" />
            <p class="text-lg-right">Sarah is a front-end developer.</p>
          </div>
      </div>
    );
  }
}