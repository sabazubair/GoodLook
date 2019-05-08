import React, {Component} from 'react'
import { Link } from "react-router-dom";

export default class NavBar extends Component {
  render () {
    return (
        <nav className="navbar navbar-expand-lg navbar-light bg-light">
          <Link className="navbar-brand" to="/">GOOD LOOK</Link>
          <div className="collapse navbar-collapse" id="navbarText">
            <ul className="navbar-nav mr-auto">
              <li className="nav-item active">
                <Link className="nav-link" to="/about">About<span className="sr-only">(current)</span></Link>
              </li>
              <li className="nav-item">
                <Link className="nav-link" to="/meettheteam">Meet the Team</Link>
              </li>
              <li className="nav-item">
                <Link className="nav-link" to="#">Login</Link>
              </li>
            </ul>
            <span className="navbar-text">Welcome Back, Amita!</span>
          </div>
        </nav>
    )
  }
}