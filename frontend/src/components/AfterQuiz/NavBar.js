import React, { Component } from 'react';
import { Link } from "react-router-dom";

export default class NavBar extends Component {
  render() {
    return (
      <div>
        <Link to="/afterquiz/recommendations" >Recommendations</Link>
        <Link to="wardrobe">Your Wardrobe</Link>
        <Link to="profile">Profile</Link>
      </div>
    );
  }
}