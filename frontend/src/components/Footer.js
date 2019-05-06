import React, {Component} from 'react';
import { Link } from "react-router-dom";

export default class Footer extends Component {
  render () {
    return (
        <footer className="footer">
          <div class="card text-center">
            <div class="card-body container">
              <div class="row">
                <div class="col-4">
                  <ul>
                    <li>Help</li>
                    <li>FAQ</li>
                    <li>About Us</li>
                  </ul>
                </div>
                <div class="col-4">
                  <ul>
                    <li>Fashion Footprint</li>
                    <li>Careers & Opportunities</li>
                  </ul>
                </div>
                <div class="col-4">
                  <ul>
                    <li>Privacy Policy</li>
                    <li>Cookie Policy</li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="card-footer text-muted">
              Made with <i class="fas fa-heart"></i> at Lighthouse Labs
            </div>
          </div>
        </footer>
    )
    }
}