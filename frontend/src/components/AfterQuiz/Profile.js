import React, { Component } from "react";

export default class Profile extends Component {
  render() {
    return (
      <div className="jumbotron">
        <div className="container">
          <h1 className="display-4 text-center">Profile</h1>
          <p className="lead text-center"></p>
          <hr className="my-3"/>
        </div>
        <div className="col-xs-4 col-xs-offset-3">
          <label for="usr"><strong> Name: </strong></label>
          <input type="text" className="form-control" id="usr"/>
        </div>
        <div className="col-xs-4 col-xs-offset-3">
          <label for="email"><strong> Email: </strong></label>
          <input type="email" className="form-control" id="email"/>
        </div>
        <button>Save changes</button>
      </div>
    )
  }
}