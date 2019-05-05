import React, { Component } from 'react';
import { Link } from "react-router-dom";

// BUTTONS ON THIS PAGE MUST BE SPACED OUT

export default class NavBar extends Component {
  render() {
    return (
      <div className="after-quiz-nav">
        <nav className="navbar navbar-expand-m">
            <Link className="btn btn-primary" to="/afterquiz/recommendations"> Recommendations </Link>
            <Link className="btn btn-primary" to="wardrobe"> Your Wardrobe </Link>
            <Link className="btn btn-primary" to="profile"> Profile </Link>
        </nav>
      </div>
    );
  }
}