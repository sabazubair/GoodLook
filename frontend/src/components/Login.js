import React, {Component} from 'react'
import { Link } from "react-router-dom";

export default class Login extends Component {
  render () {
    return (
    <div>
      <h1>Login</h1>
      <form>
      Email: <input type="text" name="email"/>
      Password: <input type="text" name="password"/>
      <button type="submit">Submit</button>
      </form>
    </div>
    )
    }
}