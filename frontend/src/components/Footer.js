import React, {Component} from 'react';
import { Link } from "react-router-dom";

export default class Footer extends Component {
  render () {
    return (
        <footer>
            <div className="container-fluid">
              <div className="row">
                <div className="footer-link col-6">
                  <ul>
                    <li><Link to="/">Home</Link></li>
                    <li><Link to="/about">About</Link></li>
                    <li><Link to="/meettheteam">Meet the Team</Link></li>
                  </ul>
                </div>
                <div className="footer-sig col-6">
                  Made with <i className="fas fa-heart"></i> at Lighthouse Labs
                </div>
              </div>
            </div>
        </footer>
    )
    }
}