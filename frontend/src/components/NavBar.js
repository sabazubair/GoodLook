import React, {Component} from 'react'
import { Link } from "react-router-dom";

export default class NavBar extends Component {
  render () {
    return (
      <nav className="navbar">
        <h1>NavBar</h1>
        <Link className="btn btn-primary" to= "/about" >About</Link>
        <Link to= "/meettheteam" >Meet The Team</Link>
        <div className="nav-item dropdown">
          <a className="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Dropdown
          </a>
          <div className="dropdown-menu" aria-labelledby="navbarDropdown">
            <a className="dropdown-item" href="#">Action</a>
            <a className="dropdown-item" href="#">Another action</a>
            <div className="dropdown-divider"></div>
            <a className="dropdown-item" href="#">Something else here</a>
          </div>
        </div>
      </nav>
    )
  }
}