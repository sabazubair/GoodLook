import React, { Component } from "react";
import { BrowserRouter as Router, Route } from "react-router-dom";
import NavBar from "./NavBar.js";
import Recommendations from "./Recommendations/Recommendations.js";

export default class AppRouter extends Component {
  render() {
    return (
      <Router>
        <NavBar />
        <Route path="/afterquiz/recommendations" component={Recommendations} />
      </Router>
    );
  }
}