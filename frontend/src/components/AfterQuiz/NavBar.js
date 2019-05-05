import React, { Component } from 'react';
import { Link } from "react-router-dom";

// BUTTONS ON THIS PAGE MUST BE SPACED OUT

export default class NavBar extends Component {
  render() {
    return (
      <div className="after-quiz-nav">
        <nav className="navbar navbar-expand-lg">
          <div className="after-quiz-1">
            <Link className="btn btn-primary" to="/afterquiz/recommendations"> Recommendations </Link>
          </div>
          <div className="after-quiz-2">
            <Link className="btn btn-primary" to="wardrobe"> Your Wardrobe </Link>
          </div>
          <div className="after-quiz-3">
            <Link className="btn btn-primary" to="profile"> Profile </Link>
          </div>
        </nav>
      </div>
    );
  }
}